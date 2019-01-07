.class public abstract Lcom/alibaba/wukong/sync/SyncPackageDataHandler;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "SyncPackageDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lcom/alibaba/wukong/sync/SyncData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler;->mIsPackaged:Z

    .line 14
    return-void
.end method


# virtual methods
.method public abstract onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/sync/SyncData;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation
.end method
