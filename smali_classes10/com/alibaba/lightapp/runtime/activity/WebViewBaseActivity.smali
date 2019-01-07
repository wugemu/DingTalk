.class public Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "WebViewBaseActivity.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

.field private d:Landroid/content/BroadcastReceiver;

.field public h:Landroid/app/ActionBar;

.field protected i:Z

.field protected j:Landroid/app/Application;

.field protected k:Z

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->i:Z

    .line 44
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->a:Z

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->b:Z

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->k:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->c:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->l:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    .line 6091
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6092
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6093
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6095
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    .line 6096
    if-eqz v0, :cond_0

    .line 6097
    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;->onDetected(Ljava/lang/String;)V

    goto :goto_0

    .line 6101
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 40
    :cond_2
    return-void
.end method

.method public static g()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method


# virtual methods
.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->b:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->a:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    move v0, v3

    .line 203
    .local v0, "destroyed":Z
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_2

    .line 206
    if-nez v0, :cond_1

    :try_start_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    move v0, v3

    .line 212
    :cond_2
    :goto_1
    return v0

    .end local v0    # "destroyed":Z
    :cond_3
    move v0, v2

    .line 201
    goto :goto_0

    .restart local v0    # "destroyed":Z
    :cond_4
    move v0, v2

    .line 206
    goto :goto_1

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onAttachedToWindow()V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->b:Z

    .line 262
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->a:Z

    .line 60
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->k:Z

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->h:Landroid/app/ActionBar;

    .line 62
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->h:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->h:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->j:Landroid/app/Application;

    .line 1307
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 1310
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1311
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1312
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1313
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1314
    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->d:Landroid/content/BroadcastReceiver;

    .line 1321
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    :cond_1
    :goto_0
    const-string/jumbo v0, "pref_font_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    .line 2083
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2084
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_2

    .line 2085
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 2086
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 71
    :cond_2
    new-instance v0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->c:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->c:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    .line 3077
    new-instance v1, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$1;-><init>(Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->c:Landroid/database/ContentObserver;

    .line 3122
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->b:Landroid/content/ContentResolver;

    .line 3123
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->b:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->c:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->c:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;)V

    .line 4069
    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->a:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector$a;

    .line 79
    return-void

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->a:Z

    .line 221
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4329
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->d:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 4331
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->c:Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;

    .line 5132
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->b:Landroid/content/ContentResolver;

    if-eqz v2, :cond_1

    .line 5133
    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->b:Landroid/content/ContentResolver;

    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->c:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5134
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/util/ScreenShotDetector;->b:Landroid/content/ContentResolver;

    .line 228
    :cond_1
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4332
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 4333
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDetachedFromWindow()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->b:Z

    .line 268
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->finish()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 143
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->k:Z

    .line 301
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 302
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->k:Z

    .line 132
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->i:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->k:Z

    .line 295
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 296
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->k:Z

    .line 124
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 125
    return-void
.end method

.method public setUseBaseUt(Z)V
    .locals 0
    .param p1, "needBaseUt"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/activity/WebViewBaseActivity;->i:Z

    .line 150
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 273
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 282
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
