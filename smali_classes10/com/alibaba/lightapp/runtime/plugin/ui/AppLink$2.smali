.class Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$2;
.super Ljava/lang/Object;
.source "AppLink.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->request(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    const-string/jumbo v0, "webview_extras"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    return-object p1
.end method
