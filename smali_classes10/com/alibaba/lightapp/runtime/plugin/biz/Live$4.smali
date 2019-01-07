.class Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;
.super Ljava/lang/Object;
.source "Live.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->nav2PlayVideo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$liveUuid:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;->val$cid:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;->val$liveUuid:Ljava/lang/String;

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
    .line 228
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;->val$cid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;->val$title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v0, "intent_extra_live_key"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v0, "intent_extra_live_key"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$4;->val$liveUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    return-object p1
.end method
