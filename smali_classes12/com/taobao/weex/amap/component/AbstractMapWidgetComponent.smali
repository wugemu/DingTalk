.class public abstract Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "AbstractMapWidgetComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Widget:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taobao/weex/ui/component/WXComponent",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "WXMapViewComponent"


# instance fields
.field private mIsMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPaddingWidgetTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWidget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWidget;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "dom"    # Lcom/taobao/weex/dom/WXDomObject;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;

    .prologue
    .line 28
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent<TWidget;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mPaddingWidgetTasks:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mIsMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    return-void
.end method


# virtual methods
.method protected execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent<TWidget;>;"
    new-instance v0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$2;-><init>(Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    .local v0, "wrapper":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mWidget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "WXMapViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Widget is ready, execute task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " immediately"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string/jumbo v1, "WXMapViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Widget is not ready, cache task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mPaddingWidgetTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected execPaddingWidgetTasks()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent<TWidget;>;"
    iget-object v2, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mPaddingWidgetTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 54
    .local v1, "task":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 55
    const-string/jumbo v2, "WXMapViewComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exec padding widget task "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mPaddingWidgetTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 58
    return-void
.end method

.method protected getWidget()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TWidget;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent<TWidget;>;"
    iget-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mWidget:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 95
    const-string/jumbo v0, "WXMapViewComponent"

    new-instance v1, Ljava/lang/Throwable;

    const-string/jumbo v2, "Widget is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mWidget:Ljava/lang/Object;

    return-object v0
.end method

.method protected postMapOperationTask(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V
    .locals 1
    .param p1, "parent"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p2, "task"    # Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;

    .prologue
    .line 32
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent<TWidget;>;"
    if-eqz p1, :cond_0

    .line 33
    new-instance v0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$1;

    invoke-direct {v0, p0, p2}, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent$1;-><init>(Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 44
    .local v0, "wrapper":Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;
    invoke-virtual {p1, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 46
    .end local v0    # "wrapper":Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;
    :cond_0
    return-void
.end method

.method protected setMapLoaded(Z)V
    .locals 1
    .param p1, "loaded"    # Z

    .prologue
    .line 49
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent<TWidget;>;"
    iget-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mIsMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    return-void
.end method

.method protected setWidget(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWidget;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent<TWidget;>;"
    .local p1, "widget":Ljava/lang/Object;, "TWidget;"
    iput-object p1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mWidget:Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->mWidget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/AbstractMapWidgetComponent;->execPaddingWidgetTasks()V

    .line 65
    :cond_0
    return-void
.end method
