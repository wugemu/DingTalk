.class public final Lcxs;
.super Lctv;
.source "UnknownErrorMsgViewHolder.java"


# instance fields
.field private final a:Z

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcxs;->b:Landroid/widget/TextView;

    .line 22
    iput-boolean p1, p0, Lcxs;->a:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lcxs;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxs;->b:Landroid/widget/TextView;

    .line 46
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcxs;->b:Landroid/widget/TextView;

    sget v1, Lctk$i;->im_encrypt_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcxs;->b:Landroid/widget/TextView;

    sget v1, Lctk$i;->message_low:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcxs;->a:Z

    if-eqz v0, :cond_0

    .line 28
    sget v0, Lctk$g;->chatting_item_to:I

    .line 30
    :goto_0
    return v0

    :cond_0
    sget v0, Lctk$g;->chatting_item_from:I

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcxs;->a:Z

    if-eqz v0, :cond_0

    .line 37
    sget v0, Lctk$g;->chatting_item_to_unknown:I

    .line 39
    :goto_0
    return v0

    :cond_0
    sget v0, Lctk$g;->chatting_item_from_unknown:I

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcxs;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send:I

    invoke-static {v2}, Lcxs;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcxs;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcxs;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcxs;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcxs;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
