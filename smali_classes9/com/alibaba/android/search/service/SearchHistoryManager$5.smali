.class final Lcom/alibaba/android/search/service/SearchHistoryManager$5;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/service/SearchHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

.field final synthetic b:Lcom/alibaba/android/search/service/SearchHistoryManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/service/SearchHistoryManager;Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$5;->b:Lcom/alibaba/android/search/service/SearchHistoryManager;

    iput-object p2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$5;->a:Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 313
    const-string/jumbo v0, "getConversationHistoryStatus exception %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 1050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 298
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1301
    if-eqz p1, :cond_0

    .line 1302
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-eq v0, v1, :cond_1

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$5;->b:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v0}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1304
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$5;->b:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v0}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$5;->a:Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getConversationHistoryStatus removed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$5;->a:Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    iget-object v2, v2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->model:Lcom/alibaba/android/search/model/BaseModel;

    .line 1306
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v3, "search"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
