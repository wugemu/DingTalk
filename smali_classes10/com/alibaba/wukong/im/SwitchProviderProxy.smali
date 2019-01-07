.class public Lcom/alibaba/wukong/im/SwitchProviderProxy;
.super Ljava/lang/Object;
.source "SwitchProviderProxy.java"

# interfaces
.implements Lcom/alibaba/wukong/im/SwitchProvider;


# static fields
.field private static volatile mInstance:Lcom/alibaba/wukong/im/SwitchProviderProxy;


# instance fields
.field private mSwitchProvider:Lcom/alibaba/wukong/im/SwitchProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/alibaba/wukong/im/SwitchProviderProxy;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mInstance:Lcom/alibaba/wukong/im/SwitchProviderProxy;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/alibaba/wukong/im/SwitchProviderProxy;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mInstance:Lcom/alibaba/wukong/im/SwitchProviderProxy;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alibaba/wukong/im/SwitchProviderProxy;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/SwitchProviderProxy;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mInstance:Lcom/alibaba/wukong/im/SwitchProviderProxy;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mInstance:Lcom/alibaba/wukong/im/SwitchProviderProxy;

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
.method public conversationMergeWithFlag()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mSwitchProvider:Lcom/alibaba/wukong/im/SwitchProvider;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mSwitchProvider:Lcom/alibaba/wukong/im/SwitchProvider;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/SwitchProvider;->conversationMergeWithFlag()Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entranceConversationUpdate()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mSwitchProvider:Lcom/alibaba/wukong/im/SwitchProvider;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mSwitchProvider:Lcom/alibaba/wukong/im/SwitchProvider;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/SwitchProvider;->entranceConversationUpdate()Z

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadConversationsUseV3()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mSwitchProvider:Lcom/alibaba/wukong/im/SwitchProvider;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mSwitchProvider:Lcom/alibaba/wukong/im/SwitchProvider;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/SwitchProvider;->loadConversationsUseV3()Z

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwitchProvider(Lcom/alibaba/wukong/im/SwitchProvider;)V
    .locals 0
    .param p1, "switchProvider"    # Lcom/alibaba/wukong/im/SwitchProvider;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/alibaba/wukong/im/SwitchProviderProxy;->mSwitchProvider:Lcom/alibaba/wukong/im/SwitchProvider;

    .line 15
    return-void
.end method
