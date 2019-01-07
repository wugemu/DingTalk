.class public Lcom/alibaba/android/ding/widget/SubTaskDetailView;
.super Landroid/widget/FrameLayout;
.source "SubTaskDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Layn;

.field private n:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->n:Lckm$a;

    .line 176
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$4;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->o:Lckm$a;

    .line 186
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$5;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->p:Lckm$a;

    .line 197
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$6;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->q:Lckm$a;

    .line 208
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->r:Lckm$a;

    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->n:Lckm$a;

    .line 176
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$4;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->o:Lckm$a;

    .line 186
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$5;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->p:Lckm$a;

    .line 197
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$6;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->q:Lckm$a;

    .line 208
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->r:Lckm$a;

    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->n:Lckm$a;

    .line 176
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$4;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->o:Lckm$a;

    .line 186
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$5;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->p:Lckm$a;

    .line 197
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$6;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->q:Lckm$a;

    .line 208
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->r:Lckm$a;

    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a()V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->j:Z

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_ding_sub_item_detail:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->b:Landroid/view/View;

    .line 80
    sget v0, Laxp$f;->iv_cc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 81
    sget v0, Laxp$f;->checkbox:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 82
    sget v0, Laxp$f;->tv_date:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->e:Landroid/widget/TextView;

    .line 83
    sget v0, Laxp$f;->tv_receiver:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    .line 84
    sget v0, Laxp$f;->ding_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->g:Landroid/widget/TextView;

    .line 85
    sget v0, Laxp$f;->v_split:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->h:Landroid/view/View;

    .line 86
    invoke-virtual {p0, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    new-instance v1, Lcom/alibaba/android/ding/widget/SubTaskDetailView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$1;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/widget/SubTaskDetailView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$2;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Laxp$c;->C6_5:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    return-void
.end method

.method private a(JZ)V
    .locals 5
    .param p1, "receiverId"    # J
    .param p3, "tipsMe"    # Z

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 280
    move v0, p3

    .line 281
    .local v0, "finalTipsMe":Z
    new-instance v1, Lbht;

    new-instance v3, Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView$8;-><init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;Z)V

    const-class v4, Lbht$a;

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 281
    invoke-static {v3, v4, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbht$a;

    invoke-direct {v1, p1, p2, v2}, Lbht;-><init>(JLbht$a;)V

    .line 297
    .local v1, "receiverUserProfileEvent":Lbht;
    invoke-virtual {v1}, Lbht;->a()V

    .line 299
    .end local v0    # "finalTipsMe":Z
    .end local v1    # "receiverUserProfileEvent":Lbht;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/SubTaskDetailView;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "tipsMe"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 302
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aj()I

    move-result v0

    .line 308
    .local v0, "count":I
    if-le v0, v6, :cond_4

    .line 309
    if-eqz p2, :cond_3

    .line 310
    if-ne v0, v4, :cond_2

    .line 311
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$i;->dt_task_owner_me_and_someone:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :goto_1
    if-eqz p2, :cond_5

    .line 323
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_warming_text_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$i;->dt_task_owner_me_and_someone_show_total:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$i;->dt_task_owner_multi_title_tip:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$i;->dt_task_owner_title_tip:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 325
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_level1_text_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Layn;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->m:Layn;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->i:I

    return v0
.end method


# virtual methods
.method public a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 3
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[SubTaskDetailView]removeObserver dingId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->o:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->v(Lckm$a;)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->p:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h(Lckm$a;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->q:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j(Lckm$a;)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->n:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T(Lckm$a;)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->r:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R(Lckm$a;)V

    .line 238
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
    .locals 10
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "isLastPosition"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->j:Z

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a()V

    .line 128
    :cond_0
    iput-boolean p2, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->l:Z

    .line 1134
    if-eqz p1, :cond_7

    .line 1138
    iget v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->i:I

    .line 1140
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1141
    if-eqz v0, :cond_1

    .line 1142
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1145
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1219
    if-eqz p1, :cond_2

    .line 1220
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "[SubTaskDetailView]addObserver dingId:"

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->o:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->u(Lckm$a;)V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->p:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(Lckm$a;)V

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->q:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i(Lckm$a;)V

    .line 1224
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->n:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S(Lckm$a;)V

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->r:Lckm$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q(Lckm$a;)V

    .line 1148
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->G(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    invoke-static {p1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lbkh;->H(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1333
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1334
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setVisibility(I)V

    .line 1335
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2241
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2242
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2243
    :cond_4
    invoke-direct {p0, v7, v2}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Ljava/lang/String;Z)V

    .line 1152
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->k:Z

    if-eqz v0, :cond_6

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->h:Landroid/view/View;

    iget-boolean v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->l:Z

    if-eqz v1, :cond_5

    move v2, v6

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->setTag(Ljava/lang/Object;)V

    .line 130
    :cond_7
    return-void

    .line 1341
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1342
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1343
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->g:Landroid/widget/TextView;

    sget v3, Laxp$i;->dt_ding_already_done:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1344
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Laxp$c;->ui_common_level3_text_color:I

    invoke-static {v3, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->g:Landroid/widget/TextView;

    sget v3, Laxp$e;->ding_bg_ding_meeting_status_done:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1350
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->f(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1351
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1352
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setVisibility(I)V

    goto :goto_0

    .line 1347
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1356
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setVisibility(I)V

    .line 1358
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1359
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    move-object v3, v0

    move v0, v1

    .line 1365
    :goto_3
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 1366
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto/16 :goto_0

    .line 1361
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1362
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 1363
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto/16 :goto_0

    .line 1365
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_d

    move-object v3, v0

    move v0, v1

    goto :goto_3

    :cond_d
    move-object v3, v0

    move v0, v2

    goto :goto_3

    .line 2245
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2246
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2247
    if-nez v0, :cond_f

    .line 2248
    invoke-direct {p0, v7, v2}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2250
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2253
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aj()I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 2254
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->i(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2255
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Laxp$i;->ding_txt_sender_me:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2257
    :cond_10
    invoke-direct {p0, v4, v5, v2}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(JZ)V

    goto/16 :goto_1

    .line 2259
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_13

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aj()I

    move-result v0

    if-le v0, v1, :cond_13

    .line 2261
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->i(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2263
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-nez v0, :cond_12

    .line 2264
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2265
    if-eqz v0, :cond_12

    .line 2266
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2270
    :cond_12
    :goto_4
    invoke-direct {p0, v4, v5, v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(JZ)V

    goto/16 :goto_1

    .line 2272
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_14
    move v1, v2

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[SubTaskDetailView]onClick goToDetail"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2681
    iget v2, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 374
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 376
    :cond_0
    return-void
.end method

.method public setBgColor(I)V
    .locals 2
    .param p1, "resColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    return-void
.end method

.method public setShowSplitView(Z)V
    .locals 0
    .param p1, "showSplitView"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->k:Z

    .line 117
    return-void
.end method

.method public setSplitViewVisibleState(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->k:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->h:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_0
    return-void

    .line 162
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTaskFinishStateChangedListener(Layn;)V
    .locals 0
    .param p1, "taskFinishStateChangedListener"    # Layn;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->m:Layn;

    .line 75
    return-void
.end method
