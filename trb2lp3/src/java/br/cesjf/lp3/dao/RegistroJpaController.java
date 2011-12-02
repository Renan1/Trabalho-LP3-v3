/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lp3.dao;

import br.cesjf.lp3.dao.exceptions.NonexistentEntityException;
import br.cesjf.lp3.dao.exceptions.RollbackFailureException;
import br.cesjf.lp3.domain.Registro;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.UserTransaction;

/**
 *
 * @author Jorge
 */
public class RegistroJpaController implements Serializable {

    public RegistroJpaController(UserTransaction utx, EntityManagerFactory emf) {
        this.utx = utx;
        this.emf = emf;
    }
    
    private UserTransaction utx = null;
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Registro registro) throws RollbackFailureException, Exception {
        EntityManager em = null;
        try {
         utx.begin();
         em = getEntityManager();
         em.persist(registro);
         utx.commit();
      } catch (Exception ex) {
         try {
            utx.rollback();
         } catch (Exception re) {
            throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
         }
         throw ex;
      } finally {
         if (em != null) {
            em.close();
         }
      }
   }

    public void edit(Registro registro) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
         utx.begin();
         em = getEntityManager();
         registro = em.merge(registro);
         utx.commit();
      } catch (Exception ex) {
         try {
            utx.rollback();
         } catch (Exception re) {
            throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
         }
         String msg = ex.getLocalizedMessage();
         if (msg == null || msg.length() == 0) {
            Long id = registro.getId();
            if (findRegistro(id) == null) {
               throw new NonexistentEntityException("The registro with id " + id + " no longer exists.");
            }
         }
         throw ex;
      } finally {
         if (em != null) {
            em.close();
         }
      }
   }

    public void destroy(Long id) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
         utx.begin();
         em = getEntityManager();
         Registro registro;
         try {
            registro = em.getReference(Registro.class, id);
           registro.getId();
         } catch (EntityNotFoundException enfe) {
            throw new NonexistentEntityException("The registro with id " + id + " no longer exists.", enfe);
         }
         em.remove(registro);
         utx.commit();
      } catch (Exception ex) {
         try {
            utx.rollback();
         } catch (Exception re) {
            throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
         }
         throw ex;
      } finally {
         if (em != null) {
            em.close();
         }
      }
   }

    public List<Registro> findRegistroEntities() {
        return findRegistroEntities(true, -1, -1);
    }

    public List<Registro> findRegistroEntities(int maxResults, int firstResult) {
        return findRegistroEntities(false, maxResults, firstResult);
    }

    private List<Registro> findRegistroEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Registro.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Registro findRegistro(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Registro.class, id);
        } finally {
            em.close();
        }
    }

    public int getRegistroCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Registro> rt = cq.from(Registro.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
