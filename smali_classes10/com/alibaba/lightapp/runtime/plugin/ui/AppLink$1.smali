.class Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$1;
.super Ljava/lang/Object;
.source "AppLink.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;->open(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;

.field final synthetic val$appId:J


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$1;->val$appId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    const-string/jumbo v0, "micro_app"

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/AppLink$1;->val$appId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 72
    return-object p1
.end method
