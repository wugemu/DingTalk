.class final Ldin$4;
.super Ljava/lang/Object;
.source "ConversationNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Ldin$4;->a:Landroid/os/Bundle;

    iput-object p2, p0, Ldin$4;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-boolean p3, p0, Ldin$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Ldin$4;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Ldin$4;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 188
    :cond_0
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Ldin$4;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 189
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Ldin$4;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 191
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    iget-boolean v0, p0, Ldin$4;->c:Z

    if-eqz v0, :cond_1

    .line 193
    const/high16 v0, 0x30000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    :cond_1
    return-object p1
.end method
