.class public Lcom/taobao/weex/ui/component/binding/Layouts;
.super Ljava/lang/Object;
.source "Layouts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doLayoutAsync(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;Z)V
    .locals 5
    .param p0, "templateViewHolder"    # Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .param p1, "async"    # Z

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    .line 46
    .local v1, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v2

    .line 47
    .local v2, "position":I
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->asyncTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 49
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->asyncTask:Landroid/os/AsyncTask;

    .line 51
    :cond_0
    if-eqz p1, :cond_1

    .line 52
    new-instance v0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;

    invoke-direct {v0, p0, v2, v1}, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;-><init>(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;ILcom/taobao/weex/ui/component/WXComponent;)V

    .line 53
    .local v0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->asyncTask:Landroid/os/AsyncTask;

    .line 54
    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    .end local v0    # "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {v1, p0}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutOnly(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V

    .line 57
    invoke-static {v1, v4}, Lcom/taobao/weex/ui/component/binding/Layouts;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    goto :goto_0
.end method

.method public static doLayoutOnly(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V
    .locals 2
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "holder"    # Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getLayoutWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getLayoutHeight()F

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/taobao/weex/ui/component/binding/Layouts;->doSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;FF)V

    .line 75
    return-void
.end method

.method public static doLayoutSync(Lcom/taobao/weex/ui/component/list/WXCell;FF)V
    .locals 1
    .param p0, "component"    # Lcom/taobao/weex/ui/component/list/WXCell;
    .param p1, "layoutWidth"    # F
    .param p2, "layoutHeight"    # F

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/ui/component/binding/Layouts;->doSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;FF)V

    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/weex/ui/component/binding/Layouts;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 68
    return-void
.end method

.method private static doSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;FF)V
    .locals 8
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "layoutWidth"    # F
    .param p2, "layoutHeight"    # F

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    .local v2, "start":J
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeLayoutRenderObject(JFF)I

    move-result v1

    .line 83
    .local v1, "height":I
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const-string/jumbo v4, "WXRecyclerTemplateList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "WXTemplateList doSafeLayout "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    const-string/jumbo v7, "case"

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " doSafeLayout  used "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    if-gtz v1, :cond_1

    .line 89
    const-string/jumbo v4, "WXRecyclerTemplateList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " WXTemplateList doSafeLayout wrong template "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    const-string/jumbo v7, "case"

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cell height "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "height":I
    .end local v2    # "start":J
    :cond_1
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    const-string/jumbo v4, "WXRecyclerTemplateList"

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 7
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "force"    # Z

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v4

    .line 110
    .local v4, "ptr":J
    invoke-static {v4, v5}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeRenderObjectHasNewLayout(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    invoke-static {v4, v5, p0}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeRenderObjectUpdateComponent(JLcom/taobao/weex/ui/component/WXComponent;)J

    .line 113
    :cond_2
    instance-of v6, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v6, :cond_0

    move-object v1, p0

    .line 114
    check-cast v1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 115
    .local v1, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v2

    .line 116
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 117
    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 118
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_3

    .line 119
    invoke-static {v0, p1}, Lcom/taobao/weex/ui/component/binding/Layouts;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 116
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
