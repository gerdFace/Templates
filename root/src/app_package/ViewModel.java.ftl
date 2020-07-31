package ${packageName}.${fragmentPackage};

import ${getMaterialComponentName('android.arch.lifecycle.ViewModel', useAndroidX)};
import ${getMaterialComponentName('android.arch.lifecycle.ViewModelProvider', useAndroidX)};

import ${packageName}.pvcore.util.RxUtil;
import io.reactivex.disposables.CompositeDisposable;

public class ${viewModelClass} extends ViewModel {
    
    private CompositeDisposable disposables = new CompositeDisposable();
    private RxUtil.RxTransformer rxTransformer;

    public ${viewModelClass}(RxUtil.RxTransformer rxTransformer) {
        this.rxTransformer = rxTransformer;
    }

    @Override
    protected void onCleared() {
        super.onCleared();
        if(disposables != null) {
            disposables.clear();
        }
    }

    public static class ${viewModelClass}Factory implements ViewModelProvider.Factory {
        
        private final RxUtil.RxTransformer rxTransformer;

        public ${viewModelClass}Factory(RxUtil.RxTransformer rxTransformer) {
            this.rxTransformer = rxTransformer;
        }

        @SuppressWarnings("unchecked")
        @Override
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> modelClass) {
            return (T) new ${viewModelClass}(rxTransformer);
        }
    }
}
