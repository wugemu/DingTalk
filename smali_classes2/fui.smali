.class public final Lfui;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "ExchangeCardHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfui$a;,
        Lfui$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcgz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfui$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v1, 0x3efa

    const-class v2, Lcgz;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lfui;->a:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static a()Lfui;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lfui$b;->a:Lfui;

    return-object v0
.end method

.method static synthetic a(Lfui;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfui;

    .prologue
    .line 21
    iget-object v0, p0, Lfui;->a:Ljava/util/List;

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
            "Lcgz;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 56
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcgz;>;"
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 59
    :cond_0
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgz;

    .line 62
    .local v0, "model":Lcgz;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->fromIdl(Lcgz;)Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;

    move-result-object v1

    .line 63
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;
    if-eqz v1, :cond_1

    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0    # "model":Lcgz;
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lfui$1;

    invoke-direct {v4, p0, v2}, Lfui$1;-><init>(Lfui;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 79
    .end local v2    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;>;"
    :cond_3
    return-void
.end method
