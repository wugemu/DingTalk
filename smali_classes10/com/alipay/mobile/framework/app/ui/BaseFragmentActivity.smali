.class public abstract Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field app:Linn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->app:Linn;

    return-void
.end method

.method private _dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "bRet":Z
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MotionEvent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _onBackPressed()V
    .locals 1

    .prologue
    .line 200
    :try_start_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->finish()V

    goto :goto_0
.end method

.method private _onContentChanged()V
    .locals 0

    .prologue
    .line 345
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onContentChanged()V

    .line 346
    return-void
.end method

.method private _onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    const-string/jumbo v0, ""

    .line 139
    .local v0, "appId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "app_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v2

    .line 1100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    iget-object v2, v2, Lcom/alipay/mobile/framework/c;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linn;

    .line 144
    :goto_1
    iput-object v2, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->app:Linn;

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_onCreate appId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " app\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->app:Linn;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1103
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private _onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->app:Linn;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->app:Linn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linn;->destroy(Landroid/os/Bundle;)V

    .line 323
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->app:Linn;

    .line 1108
    if-eqz v1, :cond_0

    .line 1109
    iget-object v0, v0, Lcom/alipay/mobile/framework/c;->b:Ljava/util/Map;

    invoke-virtual {v1}, Linn;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_onDestroy appId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->app:Linn;

    invoke-virtual {v1}, Linn;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " app\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->app:Linn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 328
    return-void
.end method

.method private _onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method private _onPause()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 183
    return-void
.end method

.method private _onResume()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 166
    return-void
.end method

.method private _onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    return-void
.end method

.method private _onStart()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 290
    return-void
.end method

.method private _onStop()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 306
    return-void
.end method

.method private _onUserLeaveHint()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    .line 238
    return-void
.end method

.method private _onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 256
    return-void
.end method


# virtual methods
.method public _dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, "bRet":Z
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addLoadingView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 429
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "bRet":Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 98
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v3, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchKeyEvent(KeyEvent)"

    .line 99
    invoke-static {v3, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 100
    const-string/jumbo v3, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchKeyEvent(KeyEvent)"

    .line 101
    invoke-static {v3, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 102
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 105
    :cond_1
    const-string/jumbo v3, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchKeyEvent(KeyEvent)"

    .line 106
    invoke-static {v3, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 107
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "bRet":Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 71
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v3, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchTouchEvent(MotionEvent)"

    .line 72
    invoke-static {v3, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 73
    const-string/jumbo v3, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchTouchEvent(MotionEvent)"

    .line 74
    invoke-static {v3, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 75
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 78
    :cond_1
    const-string/jumbo v3, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchTouchEvent(MotionEvent)"

    .line 79
    invoke-static {v3, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 80
    return v2
.end method

.method public finish()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 351
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 352
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    .line 353
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 354
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_finish()V

    .line 357
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method public getActivityApplication()Lini;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 410
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    .line 411
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onActivityResult(int,resultCode,Intent)"

    .line 412
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 413
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onActivityResult(int,resultCode,Intent)"

    .line 414
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 415
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 418
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onActivityResult(int,resultCode,Intent)"

    .line 419
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 188
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onBackPressed()"

    .line 189
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 190
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onBackPressed()"

    .line 191
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 192
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onBackPressed()V

    .line 195
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onBackPressed()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public onContentChanged()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 332
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 333
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onContentChanged()"

    .line 334
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 335
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onContentChanged()"

    .line 336
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 337
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onContentChanged()V

    .line 340
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onContentChanged()"

    .line 341
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 126
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 127
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    .line 128
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 129
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onCreate(Landroid/os/Bundle;)V

    .line 132
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 311
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onDestroy()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 312
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onDestroy()"

    .line 313
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 314
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onDestroy()V

    .line 317
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onDestroy()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 209
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onNewIntent(Intent)"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 210
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onNewIntent(Intent)"

    .line 211
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 212
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onNewIntent(Landroid/content/Intent;)V

    .line 215
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onNewIntent(Intent)"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 171
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 172
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    .line 173
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 174
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onPause()V

    .line 177
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 155
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 156
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    .line 157
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 158
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onResume()V

    .line 161
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 261
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onSaveInstanceState(Bundle)"

    .line 262
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 263
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onSaveInstanceState(Bundle)"

    .line 264
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 265
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onSaveInstanceState(Bundle)"

    .line 269
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 279
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onStart()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 280
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onStart()"

    .line 281
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 282
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onStart()V

    .line 285
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onStart()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 295
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onStop()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 296
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onStop()"

    .line 297
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 298
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onStop()V

    .line 301
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onStop()"

    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    .line 225
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onUserLeaveHint()"

    .line 226
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 227
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onUserLeaveHint()"

    .line 228
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 229
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onUserLeaveHint()V

    .line 232
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onUserLeaveHint()"

    .line 233
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 243
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)"

    .line 244
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 245
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)"

    .line 246
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 247
    .local v1, "aroundResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_onWindowFocusChanged(Z)V

    .line 250
    :cond_1
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)"

    .line 251
    invoke-static {v2, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public replaceResources(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 55
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 371
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 372
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.setContentView(int layoutResID)"

    .line 373
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 374
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 375
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.setContentView(int layoutResID)"

    .line 376
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 382
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.setContentView(View view)"

    .line 383
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 384
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 385
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.setContentView(View view)"

    .line 386
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 392
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 393
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.setContentView(View view, ViewGroup.LayoutParams params)"

    .line 394
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/c;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 395
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.setContentView(View view, ViewGroup.LayoutParams params)"

    .line 397
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/c;->c(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 398
    return-void
.end method

.method public startLoading()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method
