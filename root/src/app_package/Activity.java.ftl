package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;
import ${packageName}.${fragmentPackage}.${fragmentClass};

public class ${activityClass} extends AppCompatActivity {

    private ${viewModelClass} viewModel;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayout});
        ${viewModelClass}Factory factory = new ${viewModelClass}Factory(new RxUtil.DefaultRxTransformer());
        viewModel = new ViewModelProvider(this, factory).get(${viewModelClass}.class);
    }

    private void showFragment() {
        getSupportFragmentManager().beginTransaction()
            .replace(R.id.container, ${fragmentClass}.newInstance())
            .commitNow();
    }
}
