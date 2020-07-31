package ${escapeKotlinIdentifiers(packageName)}.${escapeKotlinIdentifiers(fragmentPackage)}

import ${getMaterialComponentName('android.arch.lifecycle.ViewModelProviders', useAndroidX)}
import android.os.Bundle
import ${getMaterialComponentName('android.support.v4.app.Fragment', useAndroidX)}
import ${getMaterialComponentName('fragment.app.activityViewModels', useAndroidX)}
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${escapeKotlinIdentifiers(packageName)}.R

class ${fragmentClass} : Fragment() {

    private val viewModel: ${viewModelClass} by activityViewModels()

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View {
        return inflater.inflate(R.layout.${fragmentLayout}, container, false)
    }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
    }

    companion object {
        fun newInstance() = ${fragmentClass}()
    }
}
