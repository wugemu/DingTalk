.class public Lcom/taobao/weex/utils/WXInterception;
.super Ljava/lang/Object;
.source "WXInterception.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;,
        Lcom/taobao/weex/utils/WXInterception$Intercepted;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static varargs proxy(Ljava/lang/Object;Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "delegatee"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/utils/WXInterception$InterceptionHandler",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "handler":Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;, "Lcom/taobao/weex/utils/WXInterception$InterceptionHandler<TT;>;"
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;->setDelegate(Ljava/lang/Object;)V

    .line 44
    const-class v0, Lcom/taobao/weex/utils/WXInterception;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static proxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;)Ljava/lang/Object;
    .locals 4
    .param p0, "delegatee"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/taobao/weex/utils/WXInterception$InterceptionHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "interface_class":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "handler":Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;, "Lcom/taobao/weex/utils/WXInterception$InterceptionHandler<TT;>;"
    instance-of v0, p0, Lcom/taobao/weex/utils/WXInterception$Intercepted;

    if-eqz v0, :cond_0

    .line 37
    .end local p0    # "delegatee":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 36
    .restart local p0    # "delegatee":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2, p0}, Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;->setDelegate(Ljava/lang/Object;)V

    .line 37
    const-class v0, Lcom/taobao/weex/utils/WXInterception;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/taobao/weex/utils/WXInterception$Intercepted;

    aput-object v3, v1, v2

    invoke-static {v0, v1, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method
