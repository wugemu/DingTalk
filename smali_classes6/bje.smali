.class final Lbje;
.super Lcom/alibaba/wukong/sync/SyncPackageDataHandler;
.source "DingSyncDataHandler.java"


# static fields
.field private static a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v2, 0x1ce8

    const-class v3, Lbdd;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/reflect/Type;)V

    sput-object v0, Lbje;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lbje;->a:Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncPackageDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 10
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
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

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 36
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/sync/SyncData;>;"
    const/4 v4, 0x0

    .line 38
    .local v4, "trace":Lbkc;
    :try_start_0
    const-string/jumbo v6, "[TAG] SyncDing"

    invoke-static {v6}, Lbkd;->a(Ljava/lang/String;)Lbkc;

    move-result-object v4

    .line 39
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 40
    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[DingSyncDataHandler] onReceived list is null or empty."

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lbkc;->a([Ljava/lang/String;)V

    .line 41
    const-string/jumbo v6, "onReceived list is null or empty."

    invoke-static {p2, v6}, Lbjf;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {v4}, Lbkd;->a(Lbkc;)V

    .line 92
    :goto_0
    return-void

    .line 45
    :cond_1
    const/4 v6, 0x2

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[DingSyncDataHandler] onReceived data size="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lbkc;->a([Ljava/lang/String;)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "dingUnreadCountObjects":Ljava/util/List;, "Ljava/util/List<Lbfb;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/sync/SyncData;

    .line 48
    .local v3, "o":Lcom/alibaba/wukong/sync/SyncData;
    if-nez v3, :cond_2

    .line 49
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[DingSyncDataHandler] o is null"

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Lbkc;->a([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 88
    .end local v1    # "dingUnreadCountObjects":Ljava/util/List;, "Ljava/util/List<Lbfb;>;"
    .end local v3    # "o":Lcom/alibaba/wukong/sync/SyncData;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v6, "Ding sync failed"

    invoke-static {v6, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    invoke-static {v4}, Lbkd;->a(Lbkc;)V

    goto :goto_0

    .line 53
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dingUnreadCountObjects":Ljava/util/List;, "Ljava/util/List<Lbfb;>;"
    .restart local v3    # "o":Lcom/alibaba/wukong/sync/SyncData;
    :cond_2
    :try_start_3
    iget v5, v3, Lcom/alibaba/wukong/sync/SyncData;->type:I

    .line 54
    .local v5, "type":I
    const/16 v6, 0x1ce8

    if-ne v5, v6, :cond_4

    iget-object v6, v3, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    instance-of v6, v6, Lbdd;

    if-eqz v6, :cond_4

    .line 55
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[DingSyncDataHandler] type is ding_red_dot type="

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Lbkc;->a([Ljava/lang/String;)V

    .line 57
    iget-object v6, v3, Lcom/alibaba/wukong/sync/SyncData;->model:Ljava/lang/Object;

    check-cast v6, Lbdd;

    invoke-static {v6}, Lbfb;->a(Lbdd;)Lbfb;

    move-result-object v0

    .line 58
    .local v0, "calendarObject":Lbfb;
    if-nez v0, :cond_3

    .line 59
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[DingSyncDataHandler] DingUnreadCountModel to DingUnreadCountObject null."

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Lbkc;->a([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 91
    .end local v0    # "calendarObject":Lbfb;
    .end local v1    # "dingUnreadCountObjects":Ljava/util/List;, "Ljava/util/List<Lbfb;>;"
    .end local v3    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v5    # "type":I
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lbkd;->a(Lbkc;)V

    throw v6

    .line 62
    .restart local v0    # "calendarObject":Lbfb;
    .restart local v1    # "dingUnreadCountObjects":Ljava/util/List;, "Ljava/util/List<Lbfb;>;"
    .restart local v3    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .restart local v5    # "type":I
    :cond_3
    const/4 v6, 0x2

    :try_start_4
    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[DingSyncDataHandler] calendarObject="

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lbfb;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Lbkc;->a([Ljava/lang/String;)V

    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    .end local v0    # "calendarObject":Lbfb;
    :cond_4
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[DingSyncDataHandler] type invalid, server bug. type="

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Lbkc;->a([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 70
    .end local v3    # "o":Lcom/alibaba/wukong/sync/SyncData;
    .end local v5    # "type":I
    :cond_5
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[DingSyncDataHandler] dingUnreadCountObjects size="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lbkc;->a([Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v6

    new-instance v7, Lbje$1;

    invoke-direct {v7, p0, p2}, Lbje$1;-><init>(Lbje;Lcom/alibaba/wukong/sync/SyncAck;)V

    .line 2297
    iget-object v8, v6, Lbbp;->b:Lbbp$a;

    new-instance v9, Lbbp$22;

    invoke-direct {v9, v6, v1, v7}, Lbbp$22;-><init>(Lbbp;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v8, v9}, Lbbp$a;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    invoke-static {v4}, Lbkd;->a(Lbkc;)V

    goto/16 :goto_0
.end method
