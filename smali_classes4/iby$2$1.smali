.class final Liby$2$1;
.super Ljava/lang/Object;
.source "MessageReadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liby$2;->onResult(Lcom/alibaba/wukong/sync/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/sync/SyncResult;

.field final synthetic b:Liby$2;


# direct methods
.method constructor <init>(Liby$2;Lcom/alibaba/wukong/sync/SyncResult;)V
    .locals 0
    .param p1, "this$1"    # Liby$2;

    .prologue
    .line 57
    iput-object p1, p0, Liby$2$1;->b:Liby$2;

    iput-object p2, p0, Liby$2$1;->a:Lcom/alibaba/wukong/sync/SyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    :try_start_0
    iget-object v3, p0, Liby$2$1;->a:Lcom/alibaba/wukong/sync/SyncResult;

    iget-object v3, v3, Lcom/alibaba/wukong/sync/SyncResult;->mExtras:Ljava/util/Map;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 62
    .local v0, "cid":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Liby$2$1;->a:Lcom/alibaba/wukong/sync/SyncResult;

    iget-object v3, v3, Lcom/alibaba/wukong/sync/SyncResult;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    check-cast v2, Ljava/util/List;

    .line 63
    .local v2, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Libs;->b(Ljava/lang/String;Ljava/util/List;)Z

    .line 64
    iget-object v3, p0, Liby$2$1;->b:Liby$2;

    iget-object v3, v3, Liby$2;->a:Liby;

    .line 1030
    iget-object v3, v3, Liby;->b:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 64
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->removeAll(Ljava/util/Collection;)Z

    .line 68
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    return-void

    .line 61
    :cond_0
    iget-object v3, p0, Liby$2$1;->a:Lcom/alibaba/wukong/sync/SyncResult;

    iget-object v3, v3, Lcom/alibaba/wukong/sync/SyncResult;->mExtras:Ljava/util/Map;

    const-string/jumbo v4, "cid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
