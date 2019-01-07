.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6$1;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;->onDataReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;

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
    .line 569
    const-string/jumbo v0, "remind_type"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;->val$remindType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;->val$source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string/jumbo v0, "remind_ext"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;->val$remindExt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    return-object p1
.end method
