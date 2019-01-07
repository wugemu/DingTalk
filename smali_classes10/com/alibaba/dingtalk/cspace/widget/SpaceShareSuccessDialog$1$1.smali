.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1$1;
.super Ljava/lang/Object;
.source "SpaceShareSuccessDialog.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "paramIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    const-string/jumbo v0, "to_page"

    const-string/jumbo v1, "to_chat"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v0, "im_navigator_from"

    const-string/jumbo v1, "profile"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    return-object p1
.end method
