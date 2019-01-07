.class public final Lcyo;
.super Lcyk;
.source "UserEncryptedVideoFromViewHolder.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyk;-><init>(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcyk;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 39
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcyo;->aa:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcyo;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Lcyo;->d:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_message_vedio_encrypt_bubble_tips:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcyo;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_video:I

    invoke-static {v2}, Lcyo;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcyo;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyo;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcyo;->aa:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyo;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_im_chat_app_title_common_video:I

    invoke-static {v2}, Lcyo;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcyo;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyo;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcyo;->aa:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyo;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
