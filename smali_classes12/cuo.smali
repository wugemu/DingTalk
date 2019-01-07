.class public final Lcuo;
.super Lczz;
.source "DingTextToViewHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lczz;-><init>()V

    return-void
.end method

.method static synthetic a(Lcuo;)V
    .locals 2
    .param p0, "x0"    # Lcuo;

    .prologue
    .line 13
    .line 1048
    iget-object v0, p0, Lcuo;->Y:Ldac;

    .line 1660
    iget-object v0, v0, Ldac;->i:Lcup;

    .line 1048
    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcuo;->Y:Ldac;

    .line 2660
    iget-object v0, v0, Ldac;->i:Lcup;

    .line 1049
    iget-object v1, p0, Lcuo;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcup;->a(Landroid/app/Activity;)V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "messsageId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "translation"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-super/range {p0 .. p5}, Lczz;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcuo;->Z:Landroid/widget/TextView;

    new-instance v1, Lcuo$2;

    invoke-direct {v1, p0}, Lcuo$2;-><init>(Lcuo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcuo;->aa:Landroid/widget/TextView;

    new-instance v1, Lcuo$3;

    invoke-direct {v1, p0}, Lcuo$3;-><init>(Lcuo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lczz;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 56
    invoke-virtual {p0, p2}, Lcuo;->b(Lcom/alibaba/wukong/im/Message;)Z

    .line 57
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lctk$g;->chatting_item_to_text_ding:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 17
    invoke-super {p0, p1}, Lczz;->c(Landroid/view/View;)V

    .line 19
    sget v1, Lctk$f;->chatting_content_view_stub:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 20
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 21
    new-instance v1, Lcuo$1;

    invoke-direct {v1, p0}, Lcuo$1;-><init>(Lcuo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcuo;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_ding:I

    invoke-static {v2}, Lcuo;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcuo;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcuo;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_ding:I

    invoke-static {v2}, Lcuo;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcuo;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcuo;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lcuo;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_ding_to_bg_left_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcuo;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_ding_to_bg_left_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    return-void
.end method
