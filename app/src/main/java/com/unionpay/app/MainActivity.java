package com.unionpay.app;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import com.yl.lib.sentry.hook.PrivacyResultCallBack;
import com.yl.lib.sentry.hook.PrivacySentry;
import com.yl.lib.sentry.hook.PrivacySentryBuilder;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        PrivacySentryBuilder builder = new PrivacySentryBuilder()
                // 自定义文件结果的输出名
                .configResultFileName("buyer_privacy")
                //  debug打开，可以看到logcat的堆栈日志
                .syncDebug(true)
                // 配置写入文件日志 , 线上包这个开关不要打开！！！！，true打开文件输入，false关闭文件输入
                .enableFileResult(true)
                // 持续写入文件30分钟
                .configWatchTime(30 * 60 * 1000)
                // 文件输出后的回调
                .configResultCallBack(new PrivacyResultCallBack() {

                    @Override
                    public void onResultCallBack(@NonNull String s) {

                    }
                });
        // 添加默认结果输出，包含log输出和文件输出
        PrivacySentry.Privacy.INSTANCE.init(getApplication(), builder);


        // 同意隐私政策
        PrivacySentry.Privacy.INSTANCE.updatePrivacyShow();
    }

}
