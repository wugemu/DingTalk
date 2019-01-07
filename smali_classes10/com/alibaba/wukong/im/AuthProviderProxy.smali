.class public Lcom/alibaba/wukong/im/AuthProviderProxy;
.super Ljava/lang/Object;
.source "AuthProviderProxy.java"

# interfaces
.implements Lcom/alibaba/wukong/im/AuthProvider;


# static fields
.field private static volatile mInstance:Lcom/alibaba/wukong/im/AuthProviderProxy;


# instance fields
.field private mAuthProvider:Lcom/alibaba/wukong/im/AuthProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/alibaba/wukong/im/AuthProviderProxy;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/wukong/im/AuthProviderProxy;->mInstance:Lcom/alibaba/wukong/im/AuthProviderProxy;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/alibaba/wukong/im/AuthProviderProxy;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/im/AuthProviderProxy;->mInstance:Lcom/alibaba/wukong/im/AuthProviderProxy;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alibaba/wukong/im/AuthProviderProxy;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/AuthProviderProxy;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/AuthProviderProxy;->mInstance:Lcom/alibaba/wukong/im/AuthProviderProxy;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/AuthProviderProxy;->mInstance:Lcom/alibaba/wukong/im/AuthProviderProxy;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public setAuthProvider(Lcom/alibaba/wukong/im/AuthProvider;)V
    .locals 0
    .param p1, "authProvider"    # Lcom/alibaba/wukong/im/AuthProvider;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/alibaba/wukong/im/AuthProviderProxy;->mAuthProvider:Lcom/alibaba/wukong/im/AuthProvider;

    .line 15
    return-void
.end method

.method public useAuth()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/wukong/im/AuthProviderProxy;->mAuthProvider:Lcom/alibaba/wukong/im/AuthProvider;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/wukong/im/AuthProviderProxy;->mAuthProvider:Lcom/alibaba/wukong/im/AuthProvider;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/AuthProvider;->useAuth()Z

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
