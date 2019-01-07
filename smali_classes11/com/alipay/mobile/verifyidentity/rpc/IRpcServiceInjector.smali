.class public Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;
.super Ljava/lang/Object;
.source "IRpcServiceInjector.java"


# static fields
.field private static b:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;


# instance fields
.field private a:Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->a:Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->b:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->b:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->b:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->b:Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getRpcService()Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->a:Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    return-object v0
.end method

.method public inject(Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/IRpcServiceInjector;->a:Lcom/alipay/mobile/verifyidentity/rpc/IRpcService;

    .line 34
    return-void
.end method
