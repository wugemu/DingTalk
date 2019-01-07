.class public final Lcun;
.super Lczy;
.source "DingTextFromViewHolder.java"


# instance fields
.field private Y:Lcum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lczy;-><init>()V

    return-void
.end method

.method static synthetic a(Lcun;Landroid/app/Activity;)V
    .locals 2
    .param p0, "x0"    # Lcun;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 16
    .line 1058
    iget-object v0, p0, Lcun;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcun;->X:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v1, "dingId"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1063
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
    .line 42
    invoke-super/range {p0 .. p5}, Lczy;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcun;->Z:Landroid/widget/TextView;

    new-instance v1, Lcun$1;

    invoke-direct {v1, p0, p1}, Lcun$1;-><init>(Lcun;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcun;->aa:Landroid/widget/TextView;

    new-instance v1, Lcun$2;

    invoke-direct {v1, p0, p1}, Lcun$2;-><init>(Lcun;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lczy;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 33
    iget-object v0, p0, Lcun;->Y:Lcum;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcum;

    invoke-direct {v0}, Lcum;-><init>()V

    iput-object v0, p0, Lcun;->Y:Lcum;

    .line 36
    :cond_0
    invoke-virtual {p0, p2}, Lcun;->b(Lcom/alibaba/wukong/im/Message;)Z

    .line 37
    iget-object v0, p0, Lcun;->Y:Lcum;

    invoke-virtual {v0, p1, p2}, Lcum;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 38
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lctk$g;->chatting_item_from_text_ding:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    invoke-super {p0, p1}, Lczy;->c(Landroid/view/View;)V

    .line 24
    iget-object v0, p0, Lcun;->Y:Lcum;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcum;

    invoke-direct {v0}, Lcum;-><init>()V

    iput-object v0, p0, Lcun;->Y:Lcum;

    .line 27
    :cond_0
    iget-object v0, p0, Lcun;->Y:Lcum;

    iget-object v1, p0, Lcun;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcum;->a(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcun;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_ding:I

    invoke-static {v2}, Lcun;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcun;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcun;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->lst_msg_tip_ding:I

    invoke-static {v2}, Lcun;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcun;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcun;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 89
    iget-object v0, p0, Lcun;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_ding_from_bg_right_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcun;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_ding_from_bg_right_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    return-void
.end method
