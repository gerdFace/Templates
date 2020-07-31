package ${escapeKotlinIdentifiers(packageName)}

import ${superClassFqcn}
import android.os.Bundle
import ${escapeKotlinIdentifiers(packageName)}.${escapeKotlinIdentifiers(fragmentPackage)}.${fragmentClass}

class ${activityClass} : AppCompatActivity() {

    private lateinit var viewModel: ${viewModelClass}

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activityLayout})
        val factory = ${viewModelClass}Factory(RxUtil.DefaultRxTransformer())
        viewModel = ViewModelProvider(this, factory).get(${viewModelClass}::class.java)
    }

    private fun showFragment() {
        supportFragmentManager.beginTransaction()
            .replace(R.id.container, ${fragmentClass}.newInstance())
            .commitNow()
    }
}
