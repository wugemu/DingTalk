.class Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;
.super Ljava/lang/Object;
.source "AsyncCellLoadTask.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

.field final synthetic val$cellCache:Lcom/taobao/weex/ui/component/list/template/TemplateCache;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;Lcom/taobao/weex/ui/component/list/template/TemplateCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->val$cellCache:Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    invoke-static {v4}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->access$000(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v3

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->val$cellCache:Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    iget-object v2, v4, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 100
    .local v2, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/taobao/weex/ui/component/list/WXCell;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/taobao/weex/ui/component/list/WXCell;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 103
    .local v0, "component":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->isLazy()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->access$200(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->access$100(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doCreateCellViewBindData(Lcom/taobao/weex/ui/component/list/WXCell;Ljava/lang/String;Z)V

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    goto :goto_0
.end method
