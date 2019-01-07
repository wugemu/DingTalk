.class public final Lbmf;
.super Ljava/lang/Object;
.source "ClientNpcProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 29
    const-string/jumbo v5, "hashCode"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 81
    :cond_0
    :goto_0
    return-object v4

    .line 32
    :cond_1
    const-string/jumbo v5, "toString"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 36
    :cond_2
    const-string/jumbo v5, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 37
    aget-object v4, p3, v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 38
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 40
    :cond_3
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v4

    aget-object v5, p3, v8

    invoke-static {v5}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 42
    :cond_4
    if-eqz p3, :cond_0

    array-length v5, p3

    if-ne v5, v7, :cond_0

    .line 43
    aget-object v5, p3, v8

    instance-of v5, v5, Liyn;

    if-eqz v5, :cond_0

    aget-object v5, p3, v9

    instance-of v5, v5, Lbmi;

    if-eqz v5, :cond_0

    .line 44
    aget-object v2, p3, v9

    check-cast v2, Lbmi;

    .line 45
    .local v2, "listener":Lbmi;
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->isAlphaRunning()Z

    move-result v0

    .line 46
    .local v0, "alphaRunning":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->isServer()Z

    move-result v1

    .line 47
    .local v1, "isServer":Z
    if-eqz v0, :cond_5

    .line 48
    sget-object v5, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALPHA_IS_RUNNING:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v5, v5, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v7, "alpha is running, isServer = "

    aput-object v7, v6, v8

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-interface {v2, v5, v6}, Lbmi;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v5

    new-instance v6, Lbmf$1;

    invoke-direct {v6, p0, p2, v2, p3}, Lbmf$1;-><init>(Lbmf;Ljava/lang/reflect/Method;Lbmi;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->startAlphaClient(Lblp;)Z

    move-result v3

    .line 74
    .local v3, "startSuccess":Z
    if-nez v3, :cond_0

    .line 75
    sget-object v5, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_START_ALPHA_FAILED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v5, v5, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v6, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_START_ALPHA_FAILED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lbmi;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
