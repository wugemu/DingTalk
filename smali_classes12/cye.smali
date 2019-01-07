.class public final Lcye;
.super Lcxt;
.source "UserDingAnnounceFromViewHolder.java"


# instance fields
.field private Y:Landroid/view/View;

.field private af:Lcum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcxt;-><init>()V

    return-void
.end method

.method static synthetic a(Lcye;Landroid/app/Activity;)V
    .locals 2
    .param p0, "x0"    # Lcye;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 16
    .line 1076
    iget-object v0, p0, Lcye;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcye;->X:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v1, "dingId"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1081
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 16
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
    .line 60
    invoke-super/range {p0 .. p5}, Lcxt;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcye;->Z:Landroid/widget/TextView;

    new-instance v1, Lcye$2;

    invoke-direct {v1, p0, p1}, Lcye$2;-><init>(Lcye;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcye;->aa:Landroid/widget/TextView;

    new-instance v1, Lcye$3;

    invoke-direct {v1, p0, p1}, Lcye$3;-><init>(Lcye;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method protected final b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcxt;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 44
    iget-object v0, p0, Lcye;->Y:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcye;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcye;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcye;->Y:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    :goto_0
    iget-object v0, p0, Lcye;->af:Lcum;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lcum;

    invoke-direct {v0}, Lcum;-><init>()V

    iput-object v0, p0, Lcye;->af:Lcum;

    .line 54
    :cond_1
    invoke-virtual {p0, p2}, Lcye;->b(Lcom/alibaba/wukong/im/Message;)Z

    .line 55
    iget-object v0, p0, Lcye;->af:Lcum;

    invoke-virtual {v0, p1, p2}, Lcum;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 56
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcye;->Y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lctk$g;->chatting_item_from_announce_ding:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcxt;->c(Landroid/view/View;)V

    .line 24
    sget v0, Lctk$f;->layout_reply:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcye;->Y:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcye;->Y:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcye;->Y:Landroid/view/View;

    new-instance v1, Lcye$1;

    invoke-direct {v1, p0}, Lcye$1;-><init>(Lcye;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcye;->af:Lcum;

    if-nez v0, :cond_1

    .line 36
    new-instance v0, Lcum;

    invoke-direct {v0}, Lcum;-><init>()V

    iput-object v0, p0, Lcye;->af:Lcum;

    .line 38
    :cond_1
    iget-object v0, p0, Lcye;->af:Lcum;

    iget-object v1, p0, Lcye;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcum;->a(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcye;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_ding:I

    invoke-static {v2}, Lcye;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcye;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcye;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_ding:I

    invoke-static {v2}, Lcye;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcye;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcye;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 102
    iget-object v0, p0, Lcye;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcye;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_announce_ding_from_bg_right_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lcye;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcye;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_announce_ding_from_bg_right_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    :cond_0
    return-void
.end method
