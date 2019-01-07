.class public final Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;
.super Ljava/lang/Object;
.source "WXAnalyzerDelegate.java"


# instance fields
.field private mWXAnalyzer:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 24
    :cond_0
    :try_start_0
    const-string/jumbo v2, "com.taobao.weex.analyzer.WeexDevOptions"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 26
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final onCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onCreate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 119
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onException"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/taobao/weex/WXSDKInstance;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 159
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_0

    move v1, v2

    .line 146
    :goto_0
    return v1

    .line 143
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "onKeyUp"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/view/KeyEvent;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 144
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 146
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method public final onPause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 97
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onReceiveTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onReceiveTouchEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onStart()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onStart"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 74
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onStop()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onStop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 108
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onWeexRenderSuccess(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 6
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onWeexRenderSuccess"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/taobao/weex/WXSDKInstance;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onWeexViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 166
    :cond_0
    const/4 v1, 0x0

    .line 173
    :goto_0
    return-object v1

    .line 169
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onWeexViewCreated"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/taobao/weex/WXSDKInstance;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 170
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v1, "retView":Landroid/view/View;
    goto :goto_0

    .line 173
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "retView":Landroid/view/View;
    :catch_0
    move-exception v2

    move-object v1, p2

    goto :goto_0
.end method

.method public final registerExtraOption(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 6
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .param p3, "runnable"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "registerExtraOption"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/Runnable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/WXAnalyzerDelegate;->mWXAnalyzer:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
