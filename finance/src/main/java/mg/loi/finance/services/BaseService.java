package mg.loi.finance.services;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public abstract class BaseService<T, ID> {
    
    protected abstract JpaRepository<T, ID> getRepository();

    public T save(T entity) {
        return getRepository().save(entity);
    }

    public Optional<T> findById(ID id) {
        return getRepository().findById(id);
    }

    public List<T> findAll() {
        return getRepository().findAll();
    }

    public T update(ID id, T entity) {
        if (!getRepository().existsById(id)) {
            throw new IllegalArgumentException("Entity with id " + id + " does not exist.");
        }
        return getRepository().save(entity);
    }
    
    public void deleteById(ID id) {
        getRepository().deleteById(id);
    }

    public void delete(T entity) {
        getRepository().delete(entity);
    }

}

