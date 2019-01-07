.class public final Lcyf;
.super Lcxu;
.source "UserDingAnnounceToViewHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcxu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcyf;)V
    .locals 2
    .param p0, "x0"    # Lcyf;

    .prologue
    .line 12
    .line 1046
    iget-object v0, p0, Lcyf;->Y:Ldac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyf;->Y:Ldac;

    .line 1660
    iget-object v0, v0, Ldac;->i:Lcup;

    .line 1046
    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcyf;->Y:Ldac;

    .line 2660
    iget-object v0, v0, Ldac;->i:Lcup;

    .line 1047
    iget-object v1, p0, Lcyf;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcup;->a(Landroid/app/Activity;)V

    .line 12
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
    .line 30
    invoke-super/range {p0 .. p5}, Lcxu;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcyf;->Z:Landroid/widget/TextView;

    new-instance v1, Lcyf$2;

    invoke-direct {v1, p0}, Lcyf$2;-><init>(Lcyf;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcyf;->aa:Landroid/widget/TextView;

    new-instance v1, Lcyf$3;

    invoke-direct {v1, p0}, Lcyf$3;-><init>(Lcyf;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lctk$g;->chatting_item_to_announce_ding:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcxu;->c(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcyf;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcyf;->r:Landroid/view/View;

    new-instance v1, Lcyf$1;

    invoke-direct {v1, p0}, Lcyf$1;-><init>(Lcyf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcyf;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_ding:I

    invoke-static {v2}, Lcyf;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcyf;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyf;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_ding:I

    invoke-static {v2}, Lcyf;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcyf;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyf;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 68
    iget-object v0, p0, Lcyf;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcyf;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_announce_ding_to_bg_left_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lcyf;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcyf;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_announce_ding_to_bg_left_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    :cond_0
    return-void
.end method
