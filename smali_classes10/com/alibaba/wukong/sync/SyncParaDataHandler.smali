.class public abstract Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.super Ljava/lang/Object;
.source "SyncParaDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mFilter:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

.field protected mIsPackaged:Z


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncParaDataHandler;, "Lcom/alibaba/wukong/sync/SyncParaDataHandler<TT;>;"
    .local p2, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/wukong/sync/SyncParaDataHandler;->mIsPackaged:Z

    .line 20
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>(ILjava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncParaDataHandler;->mFilter:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    .line 21
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bd;->a(Lcom/alibaba/wukong/sync/SyncParaDataHandler;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final getModelType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "objectType"    # I

    .prologue
    .line 25
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncParaDataHandler;, "Lcom/alibaba/wukong/sync/SyncParaDataHandler<TT;>;"
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncParaDataHandler;->mFilter:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->getModelType(I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFilter()Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncParaDataHandler;, "Lcom/alibaba/wukong/sync/SyncParaDataHandler<TT;>;"
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncParaDataHandler;->mFilter:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    return-object v0
.end method

.method public final isPackaged()Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncParaDataHandler;, "Lcom/alibaba/wukong/sync/SyncParaDataHandler<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/wukong/sync/SyncParaDataHandler;->mIsPackaged:Z

    return v0
.end method

.method public abstract onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation
.end method
