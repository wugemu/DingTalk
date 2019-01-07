.class public Lcom/alibaba/android/rimet/biz/SlideActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "SlideActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/alibaba/android/rimet/biz/SlideActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/biz/SlideActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/SlideActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/SlideActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string/jumbo v0, "Ding_User_Welcome"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const-string/jumbo v0, "a2o5v.11792254.0.0"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f04019c

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->hideToolbar()V

    .line 62
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1121
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1123
    if-eqz v0, :cond_3

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pref_already_show_slide_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_0
    :try_start_1
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 1137
    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createWebViewWrapper(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 1139
    const v0, 0x7f110843

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/widget/InterceptLinearLayout;

    .line 1140
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/rimet/widget/InterceptLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1144
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1150
    :cond_0
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 1166
    const-string/jumbo v0, "en"

    .line 1167
    invoke-static {}, Lcms;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1168
    const-string/jumbo v0, "cn"

    .line 1179
    :cond_1
    :goto_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 1180
    const-string/jumbo v3, "file:///android_asset/app_slides/slide_new.html?locale="

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1182
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->loadUrl(Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    .line 1152
    if-eqz v0, :cond_2

    .line 1153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "language/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2070
    :cond_2
    :goto_3
    const v0, 0x7f110846

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->d:Landroid/widget/Button;

    .line 2071
    const v0, 0x7f110845

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->e:Landroid/widget/Button;

    .line 2072
    const v0, 0x7f110847

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/SlideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->f:Landroid/widget/Button;

    .line 2073
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/rimet/biz/SlideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/SlideActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/SlideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2085
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/rimet/biz/SlideActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/SlideActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/SlideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2094
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/rimet/biz/SlideActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/SlideActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/SlideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2105
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_8

    .line 2106
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2107
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2108
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    return-void

    .line 1126
    :cond_3
    :try_start_4
    const-string/jumbo v0, "pref_already_show_slide_"

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->c:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1129
    :catch_0
    move-exception v0

    const-string/jumbo v0, "pref_already_show_slide_"

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 1145
    :catch_1
    move-exception v0

    .line 1146
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 1158
    :catch_2
    move-exception v0

    .line 1159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1160
    const-string/jumbo v1, "setup"

    const-string/jumbo v2, "Slide"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1169
    :cond_4
    :try_start_6
    invoke-static {}, Lcms;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1170
    const-string/jumbo v0, "tw"

    goto/16 :goto_2

    .line 1171
    :cond_5
    invoke-static {}, Lcms;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1172
    const-string/jumbo v0, "hk"

    goto/16 :goto_2

    .line 1173
    :cond_6
    invoke-static {}, Lcms;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1174
    const-string/jumbo v0, "ja"

    goto/16 :goto_2

    .line 1175
    :cond_7
    invoke-static {}, Lcms;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1176
    const-string/jumbo v0, "vi"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 2110
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2111
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2112
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 204
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 207
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a(Z)V

    .line 208
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleDestroy()V

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDestroy()V

    .line 216
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handlePause()V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onPause()V

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onResume()V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SlideActivity;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 199
    :cond_0
    return-void
.end method
