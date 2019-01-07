.class public final Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;
.super Ljava/lang/Object;
.source "WMLAnalyzerDelegate.java"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    :try_start_0
    const-string/jumbo v2, "com.taobao.weex.analyzer.WeexDevOptions"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 27
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 167
    :cond_0
    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    .line 170
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "onWindmillViewCreated"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 171
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .local v1, "retView":Landroid/view/View;
    goto :goto_0

    .line 174
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "retView":Landroid/view/View;
    :catch_0
    move-exception v2

    move-object v1, p1

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

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

    .line 52
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
