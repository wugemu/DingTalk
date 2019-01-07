.class Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;
.super Landroid/os/AsyncTask;
.source "AsyncCellLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private source:Lcom/taobao/weex/ui/component/list/WXCell;

.field private template:Ljava/lang/String;

.field private templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .locals 0
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "source"    # Lcom/taobao/weex/ui/component/list/WXCell;
    .param p3, "templateList"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->template:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->source:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 45
    iput-object p3, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->isDestory()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->template:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    return-object v0
.end method

.method private isDestory()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->source:Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->source:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 116
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->isDestoryed()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 53
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplatesCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->template:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    .line 54
    .local v0, "cellCache":Lcom/taobao/weex/ui/component/list/template/TemplateCache;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v4, :cond_2

    .line 73
    :cond_0
    :goto_0
    return-object v8

    .line 71
    .local v1, "component":Lcom/taobao/weex/ui/component/list/WXCell;
    .local v2, "start":J
    :cond_1
    iget-object v4, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v1    # "component":Lcom/taobao/weex/ui/component/list/WXCell;
    .end local v2    # "start":J
    :cond_2
    iget-object v4, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateCacheSize()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    .restart local v2    # "start":J
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->source:Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->copyComponentFromSourceCell(Lcom/taobao/weex/ui/component/list/WXCell;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 60
    .restart local v1    # "component":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    const-string/jumbo v4, "WXRecyclerTemplateList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " AsyncCellLoadTask load "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->template:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " used "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_3
    if-eqz v1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->isDestory()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplatesCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->template:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    .line 85
    .local v0, "cellCache":Lcom/taobao/weex/ui/component/list/template/TemplateCache;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 89
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 90
    :cond_2
    iput-boolean v3, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    goto :goto_0

    .line 93
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;-><init>(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;Lcom/taobao/weex/ui/component/list/template/TemplateCache;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 111
    iput-boolean v3, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    goto :goto_0
.end method

.method public startTask()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    return-void
.end method
