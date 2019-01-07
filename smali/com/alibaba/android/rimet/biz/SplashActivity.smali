.class public Lcom/alibaba/android/rimet/biz/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/SplashActivity$a;
    }
.end annotation


# instance fields
.field private mMultiDexLoadFailRunnable:Ljava/lang/Runnable;

.field private mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #test toast
    const/4 v2, 0x1
    const-string/jumbo v3, "欢迎使用爆炸版钉钉～～"
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 52
    invoke-static {p0}, Lcpa;->a(Landroid/app/Activity;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    #test method 初始化
    invoke-static {p0}, Lcom/langzu/baozha/ddutil/DDUtil;->initBaozha(Landroid/content/Context;)V
    #test method wifi赋值
    invoke-static {v3}, Lcom/langzu/baozha/ddutil/DDUtil;->setConfigInfo(Landroid/content/Intent;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/SplashActivity;->finish()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    sget-boolean v3, Lcom/alibaba/android/rimet/LauncherApplication;->multiDexLoadFail:Z

    if-eqz v3, :cond_2

    .line 62
    const v3, 0x7f040032

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/SplashActivity;->setContentView(I)V

    .line 64
    new-instance v3, Lcom/alibaba/android/rimet/biz/SplashActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/SplashActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/SplashActivity;)V

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mMultiDexLoadFailRunnable:Ljava/lang/Runnable;

    .line 79
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mMultiDexLoadFailRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 82
    :cond_2
    :try_start_0
    const-string/jumbo v3, "com.alibaba.android.rimet.biz.SplashActivityContext"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "c":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 84
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    invoke-virtual {v3, p1}, Lcom/alibaba/android/rimet/biz/SplashActivity$a;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SplashActivity$a;->onDestroy()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mMultiDexLoadFailRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mMultiDexLoadFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/rimet/biz/SplashActivity$a;->onNewIntent(Landroid/content/Intent;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SplashActivity$a;->onPause()V

    .line 124
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SplashActivity$a;->onResume()V

    .line 108
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivity;->mProxy:Lcom/alibaba/android/rimet/biz/SplashActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/SplashActivity$a;->onStart()V

    .line 100
    :cond_0
    return-void
.end method
