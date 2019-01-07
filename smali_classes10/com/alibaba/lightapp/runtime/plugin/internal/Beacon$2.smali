.class Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$2;
.super Ljava/lang/Object;
.source "Beacon.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;->bind(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

.field final synthetic val$argCorpId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$2;->val$argCorpId:Ljava/lang/String;

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
    .line 134
    const-string/jumbo v0, "corpId"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Beacon$2;->val$argCorpId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    return-object p1
.end method
