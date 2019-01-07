.class public final Lidl;
.super Ljava/lang/Object;
.source "IMSync.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lidj;

    invoke-direct {v0}, Lidj;-><init>()V

    .line 75
    new-instance v0, Lidm;

    invoke-direct {v0}, Lidm;-><init>()V

    .line 76
    new-instance v0, Lidk;

    invoke-direct {v0}, Lidk;-><init>()V

    .line 77
    new-instance v0, Lidd;

    invoke-direct {v0}, Lidd;-><init>()V

    .line 78
    new-instance v0, Lidp;

    invoke-direct {v0}, Lidp;-><init>()V

    .line 79
    new-instance v0, Licx;

    invoke-direct {v0}, Licx;-><init>()V

    .line 80
    new-instance v0, Libk;

    invoke-direct {v0}, Libk;-><init>()V

    .line 81
    new-instance v0, Lidx;

    invoke-direct {v0}, Lidx;-><init>()V

    .line 84
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/sync/SyncService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncService;

    new-instance v1, Liaw$a;

    invoke-direct {v1}, Liaw$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/sync/SyncService;->addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 85
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/sync/SyncService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncService;

    new-instance v1, Lidv$b;

    invoke-direct {v1}, Lidv$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/sync/SyncService;->addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 86
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/sync/SyncService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncService;

    new-instance v1, Lidf$a;

    invoke-direct {v1}, Lidf$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/sync/SyncService;->addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 87
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/sync/SyncService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncService;

    new-instance v1, Licz$a;

    invoke-direct {v1}, Licz$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/sync/SyncService;->addSyncEventListener(Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 88
    return-void
.end method
