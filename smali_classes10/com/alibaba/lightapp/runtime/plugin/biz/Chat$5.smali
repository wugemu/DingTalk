.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->toConversation(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

.field final synthetic val$remindExt:Ljava/lang/String;

.field final synthetic val$remindType:I

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;->val$remindType:I

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;->val$source:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;->val$remindExt:Ljava/lang/String;

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
    .line 554
    const-string/jumbo v0, "remind_type"

    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;->val$remindType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;->val$source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string/jumbo v0, "remind_ext"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;->val$remindExt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    return-object p1
.end method
