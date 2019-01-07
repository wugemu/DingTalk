.class public Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;
.super Ljava/lang/Object;
.source "SyncDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/sync/SyncDataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeFilter"
.end annotation


# instance fields
.field private mSyncType:Lcom/alibaba/wukong/sync/SyncType;

.field private mTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mTypes:Ljava/util/Map;

    .line 66
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC:Lcom/alibaba/wukong/sync/SyncType;

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mSyncType:Lcom/alibaba/wukong/sync/SyncType;

    .line 69
    return-void
.end method

.method public constructor <init>(ILjava/lang/reflect/Type;)V
    .locals 1
    .param p1, "objectType"    # I
    .param p2, "modelType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mTypes:Ljava/util/Map;

    .line 66
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC:Lcom/alibaba/wukong/sync/SyncType;

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mSyncType:Lcom/alibaba/wukong/sync/SyncType;

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/reflect/Type;)V
    .locals 1
    .param p1, "syncType"    # Lcom/alibaba/wukong/sync/SyncType;
    .param p2, "objectType"    # I
    .param p3, "modelType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mTypes:Ljava/util/Map;

    .line 66
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC:Lcom/alibaba/wukong/sync/SyncType;

    iput-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mSyncType:Lcom/alibaba/wukong/sync/SyncType;

    .line 76
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->addType(ILjava/lang/reflect/Type;)V

    .line 78
    iput-object p1, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mSyncType:Lcom/alibaba/wukong/sync/SyncType;

    .line 79
    return-void
.end method


# virtual methods
.method public addType(ILjava/lang/reflect/Type;)V
    .locals 2
    .param p1, "objectType"    # I
    .param p2, "modelType"    # Ljava/lang/reflect/Type;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mTypes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method

.method public getModelType(I)Ljava/lang/reflect/Type;
    .locals 2
    .param p1, "objectType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mTypes:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getObjectTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSyncType()Lcom/alibaba/wukong/sync/SyncType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;->mSyncType:Lcom/alibaba/wukong/sync/SyncType;

    return-object v0
.end method
