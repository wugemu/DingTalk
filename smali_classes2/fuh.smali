.class public final Lfuh;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "CardRedDotHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfuh$a;,
        Lfuh$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcgx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfuh$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v1, 0x3ef8

    const-class v2, Lcgx;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lfuh;->a:Ljava/util/List;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lfuh;-><init>()V

    return-void
.end method

.method public static a()Lfuh;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lfuh$b;->a:Lfuh;

    return-object v0
.end method

.method static synthetic a(Lfuh;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfuh;

    .prologue
    .line 22
    iget-object v0, p0, Lfuh;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 5
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcgx;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcgx;>;"
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 45
    :cond_0
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgx;

    .line 48
    .local v0, "model":Lcgx;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;->fromIdl(Lcgx;)Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;

    move-result-object v1

    .line 49
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;
    if-eqz v1, :cond_1

    .line 50
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v0    # "model":Lcgx;
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lfuh$1;

    invoke-direct {v4, p0, v2}, Lfuh$1;-><init>(Lfuh;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 65
    .end local v2    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;>;"
    :cond_3
    return-void
.end method
