package ${escapeKotlinIdentifiers(packageName)}.${escapeKotlinIdentifiers(fragmentPackage)}

import ${getMaterialComponentName('android.arch.lifecycle.ViewModel', useAndroidX)};
import ${getMaterialComponentName('android.arch.lifecycle.ViewModelProvider', useAndroidX)};
import ${packageName}.pvcore.util.RxUtil;
import io.reactivex.disposables.CompositeDisposable;

class ${viewModelClass}(private val rxTransformer: RxTransformer) : ViewModel() {

    private val disposables: CompositeDisposable? = CompositeDisposable()

    override fun onCleared() {
        super.onCleared()
        disposables?.clear()
    }

    class ${viewModelClass}Factory(private val rxTransformer: RxTransformer) : ViewModelProvider.Factory {
        override fun <T : ViewModel?> create(modelClass: Class<T>): T {
            return ${viewModelClass}(rxTransformer) as T
        }
    }
}