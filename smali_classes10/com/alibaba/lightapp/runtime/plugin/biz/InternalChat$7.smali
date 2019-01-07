.class Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$7;
.super Ljava/lang/Object;
.source "InternalChat.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->navToChat(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

.field final synthetic val$chatFloatDialogDo:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

.field final synthetic val$cid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$7;->val$chatFloatDialogDo:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$7;->val$cid:Ljava/lang/String;

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
    .line 452
    const-string/jumbo v0, "chat_sw_float_dialog"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$7;->val$chatFloatDialogDo:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 455
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$7;->val$cid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string/jumbo v0, "to_page"

    const-string/jumbo v1, "to_chat"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    return-object p1
.end method
