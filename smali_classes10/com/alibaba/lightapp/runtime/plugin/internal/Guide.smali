.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Guide;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Guide.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public closeGuideBanner(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_close_push_task_banner"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Guide;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 22
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method
