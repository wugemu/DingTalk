.class Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;
.super Ljava/lang/Object;
.source "Nav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->pop(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$to:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;->val$to:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->access$800(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    .line 339
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;->val$to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->popPage(Ljava/lang/String;)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    const/4 v2, 0x3

    const-string/jumbo v3, "nav model is null"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$6;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->access$900(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
