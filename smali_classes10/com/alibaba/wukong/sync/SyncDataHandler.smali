.class public abstract Lcom/alibaba/wukong/sync/SyncDataHandler;
.super Ljava/lang/Object;
.source "SyncDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;
    }
.end annotation

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
    .line 24
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncDataHandler;, "Lcom/alibaba/wukong/sync/SyncDataHandler<TT;>;"
    .local p2, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>(ILjava/lang/reflect/Type;)V

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    .prologue
    .line 32
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncDataHandler;, "Lcom/alibaba/wukong/sync/SyncDataHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler;->mIsPackaged:Z

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "DataTypeFilter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/alibaba/wukong/sync/SyncDataHandler;->mFilter:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    .line 37
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->getSyncType()Lcom/alibaba/wukong/sync/SyncType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 38
    invoke-static {p0}, Lcom/alibaba/wukong/auth/av;->a(Lcom/alibaba/wukong/sync/SyncDataHandler;)V

    .line 48
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_DEVICE:Lcom/alibaba/wukong/sync/SyncType;

    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->getSyncType()Lcom/alibaba/wukong/sync/SyncType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 41
    invoke-static {p0}, Lcom/alibaba/wukong/auth/as;->a(Lcom/alibaba/wukong/sync/SyncDataHandler;)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p0}, Lcom/alibaba/wukong/auth/ax;->a(Lcom/alibaba/wukong/sync/SyncDataHandler;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V
    .locals 1
    .param p1, "syncType"    # Lcom/alibaba/wukong/sync/SyncType;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/sync/SyncType;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncDataHandler;, "Lcom/alibaba/wukong/sync/SyncDataHandler<TT;>;"
    .local p3, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/reflect/Type;)V

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final getModelType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "objectType"    # I

    .prologue
    .line 51
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncDataHandler;, "Lcom/alibaba/wukong/sync/SyncDataHandler<TT;>;"
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler;->mFilter:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-virtual {v0, p1}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->getModelType(I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFilter()Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncDataHandler;, "Lcom/alibaba/wukong/sync/SyncDataHandler<TT;>;"
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler;->mFilter:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    return-object v0
.end method

.method public final isPackaged()Z
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/alibaba/wukong/sync/SyncDataHandler;, "Lcom/alibaba/wukong/sync/SyncDataHandler<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler;->mIsPackaged:Z

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
