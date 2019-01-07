.class final Ldac$5$1;
.super Ljava/lang/Object;
.source "UserToBasicDataDelegate.java"

# interfaces
.implements Ldiz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldac$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldac$5;


# direct methods
.method constructor <init>(Ldac$5;)V
    .locals 0
    .param p1, "this$1"    # Ldac$5;

    .prologue
    .line 285
    iput-object p1, p0, Ldac$5$1;->a:Ldac$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 289
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    .line 290
    .local v1, "msgType":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0xfc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_1

    .line 294
    :cond_0
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v2

    .line 1017
    iget-object v2, v2, Ldjc;->a:Ljava/lang/String;

    .line 294
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "intent_action_resend_audio_success"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "intent_key_resend_success"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    iget-object v2, p0, Ldac$5$1;->a:Ldac$5;

    iget-object v2, v2, Ldac$5;->a:Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 301
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "msgType":I
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lebl;->a(JI)V

    .line 313
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    const-string/jumbo v0, "101021"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Ldac$5$1;->a:Ldac$5;

    iget-object v0, v0, Ldac$5;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Ldac$5$1;->a:Ldac$5;

    iget-object v1, v1, Ldac$5;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lebr;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 308
    :cond_0
    return-void
.end method
