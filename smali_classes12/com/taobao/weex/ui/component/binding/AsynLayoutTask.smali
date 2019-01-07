.class Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;
.super Landroid/os/AsyncTask;
.source "AsynLayoutTask.java"


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
.field private final component:Lcom/taobao/weex/ui/component/WXComponent;

.field private final position:I

.field private final templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;ILcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .param p1, "templateViewHolder"    # Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .param p2, "position"    # I
    .param p3, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 38
    iput p2, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->position:I

    .line 39
    iput-object p3, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->position:I

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutOnly(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->position:I

    iget-object v1, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->templateViewHolder:Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;->component:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/binding/Layouts;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 59
    :cond_0
    return-void
.end method
