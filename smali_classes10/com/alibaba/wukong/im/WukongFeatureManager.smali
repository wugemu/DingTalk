.class public Lcom/alibaba/wukong/im/WukongFeatureManager;
.super Ljava/lang/Object;
.source "WukongFeatureManager.java"

# interfaces
.implements Lcom/alibaba/wukong/im/WuKongFeatureInterface;


# static fields
.field private static volatile mInstance:Lcom/alibaba/wukong/im/WukongFeatureManager;


# instance fields
.field private mFeatureInterface:Lcom/alibaba/wukong/im/WuKongFeatureInterface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/alibaba/wukong/im/WukongFeatureManager;
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/alibaba/wukong/im/WukongFeatureManager;->mInstance:Lcom/alibaba/wukong/im/WukongFeatureManager;

    if-nez v0, :cond_1

    .line 11
    const-class v1, Lcom/alibaba/wukong/im/WukongFeatureManager;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/im/WukongFeatureManager;->mInstance:Lcom/alibaba/wukong/im/WukongFeatureManager;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/alibaba/wukong/im/WukongFeatureManager;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/WukongFeatureManager;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/WukongFeatureManager;->mInstance:Lcom/alibaba/wukong/im/WukongFeatureManager;

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/WukongFeatureManager;->mInstance:Lcom/alibaba/wukong/im/WukongFeatureManager;

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isDeleteMsgUseDrop()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/wukong/im/WukongFeatureManager;->mFeatureInterface:Lcom/alibaba/wukong/im/WuKongFeatureInterface;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alibaba/wukong/im/WukongFeatureManager;->mFeatureInterface:Lcom/alibaba/wukong/im/WuKongFeatureInterface;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/WuKongFeatureInterface;->isDeleteMsgUseDrop()Z

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFeatureInterface(Lcom/alibaba/wukong/im/WuKongFeatureInterface;)V
    .locals 0
    .param p1, "featureInterface"    # Lcom/alibaba/wukong/im/WuKongFeatureInterface;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/wukong/im/WukongFeatureManager;->mFeatureInterface:Lcom/alibaba/wukong/im/WuKongFeatureInterface;

    .line 26
    return-void
.end method
