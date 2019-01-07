.class public final Lbiu;
.super Lbit;
.source "SingleChatTaskDingHolder.java"


# instance fields
.field private A:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lckm$a;
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

.field private E:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private G:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field a:Landroid/app/Activity;

.field b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field c:Ljava/lang/CharSequence;

.field d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

.field e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

.field f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

.field g:Lcom/alibaba/android/ding/widget/DingVerticalAnimView;

.field h:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

.field i:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/alibaba/android/ding/widget/VoicePlayView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ListView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parentListView"    # Landroid/widget/ListView;
    .param p3, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 220
    invoke-direct {p0}, Lbit;-><init>()V

    .line 93
    new-instance v0, Lbiu$1;

    invoke-direct {v0, p0}, Lbiu$1;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->x:Lckm$a;

    .line 104
    new-instance v0, Lbiu$12;

    invoke-direct {v0, p0}, Lbiu$12;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->y:Lckm$a;

    .line 115
    new-instance v0, Lbiu$16;

    invoke-direct {v0, p0}, Lbiu$16;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->z:Lckm$a;

    .line 126
    new-instance v0, Lbiu$17;

    invoke-direct {v0, p0}, Lbiu$17;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->A:Lckm$a;

    .line 140
    new-instance v0, Lbiu$18;

    invoke-direct {v0, p0}, Lbiu$18;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->B:Lckm$a;

    .line 154
    new-instance v0, Lbiu$19;

    invoke-direct {v0, p0}, Lbiu$19;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->C:Lckm$a;

    .line 168
    new-instance v0, Lbiu$20;

    invoke-direct {v0, p0}, Lbiu$20;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->D:Lckm$a;

    .line 182
    new-instance v0, Lbiu$21;

    invoke-direct {v0, p0}, Lbiu$21;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->E:Lckm$a;

    .line 193
    new-instance v0, Lbiu$22;

    invoke-direct {v0, p0}, Lbiu$22;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->F:Lckm$a;

    .line 206
    new-instance v0, Lbiu$2;

    invoke-direct {v0, p0}, Lbiu$2;-><init>(Lbiu;)V

    iput-object v0, p0, Lbiu;->G:Lckm$a;

    .line 221
    iput-object p1, p0, Lbiu;->a:Landroid/app/Activity;

    .line 222
    iput-object p2, p0, Lbiu;->j:Landroid/widget/ListView;

    .line 223
    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    .end local p3    # "name":Ljava/lang/CharSequence;
    :cond_0
    iput-object p3, p0, Lbiu;->c:Ljava/lang/CharSequence;

    .line 224
    return-void
.end method

.method private k()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 509
    iget-object v4, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    if-nez v4, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v4, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v1

    .line 513
    .local v1, "attachmentObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 516
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 517
    .local v0, "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz v0, :cond_0

    .line 521
    iget-object v4, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "1"

    iget-object v5, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v6, "isRE"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 522
    .local v2, "isHongbaoLink":Z
    :goto_1
    iget v3, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v4

    if-eq v3, v4, :cond_2

    if-eqz v2, :cond_4

    .line 523
    :cond_2
    iget-object v3, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget v4, Laxp$e;->ding_attachment_red_bg:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachBackground(I)V

    goto :goto_0

    .end local v2    # "isHongbaoLink":Z
    :cond_3
    move v2, v3

    .line 521
    goto :goto_1

    .line 524
    .restart local v2    # "isHongbaoLink":Z
    :cond_4
    iget-object v3, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->E(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 525
    iget-object v3, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget v4, Laxp$e;->ding_attachment_un_bg:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachBackground(I)V

    goto :goto_0

    .line 527
    :cond_5
    iget-object v3, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget v4, Laxp$e;->ding_attachment_bg:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachBackground(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 228
    iget-object v0, p0, Lbiu;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_item_single_chat_task_ding:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbiu;->k:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->ll_cb_finish:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbiu;->l:Landroid/widget/LinearLayout;

    .line 230
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->cb_finish:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iput-object v0, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 231
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->tv_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    iput-object v0, p0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    .line 232
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->view_audio_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/VoicePlayView;

    iput-object v0, p0, Lbiu;->m:Lcom/alibaba/android/ding/widget/VoicePlayView;

    .line 233
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->ll_attachment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbiu;->n:Landroid/widget/LinearLayout;

    .line 234
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->tv_attachment_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbiu;->p:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->tv_deadline:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    iput-object v0, p0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    .line 236
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->ll_receiver_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbiu;->q:Landroid/widget/LinearLayout;

    .line 237
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->iv_receiver_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lbiu;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 238
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->tv_receiver_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbiu;->s:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->rl_comment_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lbiu;->t:Landroid/widget/RelativeLayout;

    .line 240
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->iv_comment_red_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbiu;->u:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->tv_comment_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbiu;->v:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->ll_cb_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbiu;->w:Landroid/widget/LinearLayout;

    .line 243
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->v_done_anim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;

    iput-object v0, p0, Lbiu;->g:Lcom/alibaba/android/ding/widget/DingVerticalAnimView;

    .line 244
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->cb_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iput-object v0, p0, Lbiu;->h:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 245
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$f;->tv_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    iput-object v0, p0, Lbiu;->i:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    .line 246
    iget-object v0, p0, Lbiu;->i:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setMaxLines(I)V

    .line 248
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    .line 1643
    iget-object v1, p0, Lbiu;->x:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 1644
    iget-object v1, p0, Lbiu;->y:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 1645
    iget-object v1, p0, Lbiu;->z:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 1646
    iget-object v1, p0, Lbiu;->A:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 1647
    iget-object v1, p0, Lbiu;->B:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 1648
    iget-object v1, p0, Lbiu;->C:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 1649
    iget-object v1, p0, Lbiu;->D:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 1650
    iget-object v1, p0, Lbiu;->E:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 1651
    iget-object v1, p0, Lbiu;->F:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 1652
    iget-object v1, p0, Lbiu;->G:Lckm$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lckm$a;->a(Landroid/content/Context;Landroid/app/Application;)V

    .line 250
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 255
    instance-of v1, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 259
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 260
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 261
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3299
    :cond_2
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v1, :cond_3

    .line 3302
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->x:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lckm$a;)V

    .line 3303
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->y:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f(Lckm$a;)V

    .line 3304
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->z:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->r(Lckm$a;)V

    .line 3305
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->A:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R(Lckm$a;)V

    .line 3306
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->B:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->h(Lckm$a;)V

    .line 3307
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->C:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j(Lckm$a;)V

    .line 3308
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->D:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->v(Lckm$a;)V

    .line 3309
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->E:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X(Lckm$a;)V

    .line 3310
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->F:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->V(Lckm$a;)V

    .line 3311
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->G:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T(Lckm$a;)V

    .line 2533
    :cond_3
    iget-object v1, p0, Lbiu;->k:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2534
    iget-object v1, p0, Lbiu;->k:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2535
    iget-object v1, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setListener(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;)V

    .line 2536
    iget-object v1, p0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setStrikeValue(F)V

    .line 2537
    iget-object v1, p0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setStrikeValue(F)V

    .line 2538
    iget-object v1, p0, Lbiu;->g:Lcom/alibaba/android/ding/widget/DingVerticalAnimView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->setAnimValue(F)V

    .line 2539
    iput-object v3, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2541
    iget-object v1, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    if-eqz v1, :cond_4

    .line 2544
    :try_start_0
    iget-object v1, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2548
    :goto_1
    iput-object v3, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    .line 265
    :cond_4
    iput-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 267
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4286
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->x:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lckm$a;)V

    .line 4287
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->y:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e(Lckm$a;)V

    .line 4288
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->z:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q(Lckm$a;)V

    .line 4289
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->A:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Q(Lckm$a;)V

    .line 4290
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->B:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(Lckm$a;)V

    .line 4291
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->C:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i(Lckm$a;)V

    .line 4292
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->D:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->u(Lckm$a;)V

    .line 4293
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->E:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->W(Lckm$a;)V

    .line 4294
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->F:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->U(Lckm$a;)V

    .line 4295
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbiu;->G:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S(Lckm$a;)V

    .line 4553
    iget-object v1, p0, Lbiu;->k:Landroid/view/View;

    new-instance v2, Lbiu$3;

    invoke-direct {v2, p0}, Lbiu$3;-><init>(Lbiu;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4560
    iget-object v1, p0, Lbiu;->k:Landroid/view/View;

    new-instance v2, Lbiu$4;

    invoke-direct {v2, p0}, Lbiu$4;-><init>(Lbiu;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4567
    iget-object v1, p0, Lbiu;->l:Landroid/widget/LinearLayout;

    new-instance v2, Lbiu$5;

    invoke-direct {v2, p0}, Lbiu$5;-><init>(Lbiu;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4607
    iget-object v1, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    new-instance v2, Lbiu$6;

    invoke-direct {v2, p0}, Lbiu$6;-><init>(Lbiu;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setListener(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;)V

    .line 4618
    iget-object v1, p0, Lbiu;->w:Landroid/widget/LinearLayout;

    new-instance v2, Lbiu$7;

    invoke-direct {v2, p0}, Lbiu$7;-><init>(Lbiu;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4629
    iget-object v1, p0, Lbiu;->h:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    new-instance v2, Lbiu$8;

    invoke-direct {v2, p0}, Lbiu$8;-><init>(Lbiu;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setListener(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;)V

    .line 274
    invoke-virtual {p0}, Lbiu;->b()V

    .line 275
    invoke-virtual {p0}, Lbiu;->c()V

    .line 276
    invoke-virtual {p0}, Lbiu;->d()V

    .line 277
    invoke-virtual {p0}, Lbiu;->e()V

    .line 278
    invoke-virtual {p0}, Lbiu;->f()V

    .line 279
    invoke-virtual {p0}, Lbiu;->g()V

    .line 280
    invoke-virtual {p0}, Lbiu;->h()V

    .line 281
    invoke-virtual {p0}, Lbiu;->i()V

    .line 282
    invoke-virtual {p0}, Lbiu;->j()V

    goto/16 :goto_0

    .line 2545
    :catch_0
    move-exception v1

    .line 2546
    const-string/jumbo v2, "[SingleChatTaskDingHolder]release attachment view failed"

    invoke-static {v2, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    iget-object v2, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 316
    iget-object v2, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->h(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    iget-object v2, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    :cond_0
    iget-object v2, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 319
    iget-object v2, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    .line 337
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v2, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v2, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    iget-object v2, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 327
    iget-object v2, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto :goto_0

    .line 329
    :cond_3
    iget-object v2, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v2, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto :goto_0

    .line 334
    :cond_4
    iget-object v2, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v3, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v2, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 334
    goto :goto_1
.end method

.method c()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v10, 0x8

    .line 340
    iget-object v4, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    iget-object v5, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 345
    iget-object v4, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .line 346
    .local v3, "textContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    iget-object v4, p0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v4, v10}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 355
    :goto_1
    iget-object v4, p0, Lbiu;->m:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v4, v10}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v4, p0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setMaxLines(I)V

    .line 351
    iget-object v4, p0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 352
    iget-object v4, p0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v5

    iget-object v6, p0, Lbiu;->a:Landroid/app/Activity;

    .line 353
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lbiu;->a:Landroid/app/Activity;

    iget-object v9, p0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->getTextSize()F

    move-result v9

    invoke-static {v8, v9}, Lcms;->d(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    .line 5050
    invoke-virtual {v5, v6, v7, v8}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v5

    .line 352
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setTextWithTransact(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 356
    .end local v3    # "textContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    :cond_3
    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    iget-object v5, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 357
    iget-object v4, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    .line 358
    .local v1, "audioContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    iget-object v4, p0, Lbiu;->m:Lcom/alibaba/android/ding/widget/VoicePlayView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "ding"

    aput-object v6, v5, v8

    iget-object v6, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageId(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "audioPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 361
    const-class v4, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 362
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getDuration()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAudioVolumns()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v2, v6, v7, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 363
    .local v0, "audio":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbke;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthUrl(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->setAuthCode(Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lbiu;->m:Lcom/alibaba/android/ding/widget/VoicePlayView;

    iget-object v5, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/android/ding/widget/VoicePlayView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v4, p0, Lbiu;->m:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setMessageAudio(Lcom/alibaba/wukong/im/MessageContent$AudioContent;)V

    .line 367
    iget-object v4, p0, Lbiu;->m:Lcom/alibaba/android/ding/widget/VoicePlayView;

    sget-object v5, Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;->GRAY:Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setScheme(Lcom/alibaba/android/ding/widget/VoicePlayView$SCHEME;)V

    .line 368
    iget-object v4, p0, Lbiu;->m:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-static {}, Lbkz;->b()Lbkz;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVoicePlayListener(Lcom/alibaba/android/ding/widget/VoicePlayView$a;)V

    .line 369
    iget-object v4, p0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v4, v10}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 370
    iget-object v4, p0, Lbiu;->m:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v4, v8}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto/16 :goto_0

    .line 372
    .end local v0    # "audio":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    :cond_4
    iget-object v4, p0, Lbiu;->e:Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    invoke-virtual {v4, v10}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->setVisibility(I)V

    .line 373
    iget-object v4, p0, Lbiu;->m:Lcom/alibaba/android/ding/widget/VoicePlayView;

    invoke-virtual {v4, v10}, Lcom/alibaba/android/ding/widget/VoicePlayView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 379
    iget-object v2, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v1

    .line 380
    .local v1, "attachmentObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 381
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 382
    .local v0, "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    iget-object v2, p0, Lbiu;->a:Landroid/app/Activity;

    invoke-static {v2, v0}, Layt;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    move-result-object v2

    iput-object v2, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    .line 383
    iget-object v2, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setChooseMode(I)V

    .line 385
    iget-object v2, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    iget-object v3, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setSendId(J)V

    .line 386
    iget-object v2, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    iget-object v3, p0, Lbiu;->j:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setParentListView(Landroid/widget/ListView;)V

    .line 387
    iget-object v2, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    iget-object v3, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setDingId(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    sget-object v3, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->NoBorder:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    sget-object v4, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    sget-object v5, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V

    .line 390
    iget-object v2, p0, Lbiu;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 391
    iget-object v2, p0, Lbiu;->n:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    iget-object v2, p0, Lbiu;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    iget v2, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 394
    iget-object v2, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->b()V

    .line 399
    :goto_0
    invoke-direct {p0}, Lbiu;->k()V

    .line 406
    .end local v0    # "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :goto_1
    return-void

    .line 396
    .restart local v0    # "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :cond_0
    iget-object v2, p0, Lbiu;->o:Lcom/alibaba/android/ding/attachment/BaseAttachmentView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->c()V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v2, p0, Lbiu;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 404
    .end local v0    # "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :cond_2
    iget-object v2, p0, Lbiu;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 409
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Z()Ljava/util/List;

    move-result-object v0

    .line 410
    .local v0, "attachmentObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 411
    iget-object v1, p0, Lbiu;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v1, p0, Lbiu;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lbiu;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_ding_attachment_num_fmt:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v1, p0, Lbiu;->p:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method f()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 420
    iget-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 421
    iget-object v0, p0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setVisibility(I)V

    .line 442
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setMaxLines(I)V

    .line 427
    iget-object v0, p0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    iget-object v1, p0, Lbiu;->a:Landroid/app/Activity;

    sget v2, Laxp$i;->dt_ding_item_deadline_at:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 428
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v4

    invoke-static {v4, v5, v6}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 427
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->y(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    sget v1, Laxp$e;->ding_bg_corner_3_solid_red:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    :cond_2
    iget-object v0, p0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    sget v1, Laxp$e;->ding_bg_corner_3_solid_low_gray:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Lbiu;->f:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    sget v1, Laxp$e;->ding_bg_corner_3_solid_gray:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method g()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 445
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lbiu;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->h(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lbiu;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lbiu;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Laxp$i;->icon_yes_people_fill:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 454
    iget-object v1, p0, Lbiu;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lbiu;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_ding_item_single_receiver_status_completed_fmt:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lbiu;->c:Ljava/lang/CharSequence;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object v1, p0, Lbiu;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 459
    :cond_2
    iget-object v1, p0, Lbiu;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->s()I

    move-result v0

    .line 461
    .local v0, "executorCompletedCount":I
    iget-object v2, p0, Lbiu;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Laxp$i;->icon_yes_people_fill:I

    :goto_1
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 462
    iget-object v1, p0, Lbiu;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lbiu;->a:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_ding_item_task_complete_at_at:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 464
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 465
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aj()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 463
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 461
    :cond_3
    sget v1, Laxp$i;->icon_people_fill:I

    goto :goto_1
.end method

.method h()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 470
    iget-object v2, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 471
    iget-object v2, p0, Lbiu;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lbiu;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lbiu;->a:Landroid/app/Activity;

    sget v4, Laxp$i;->dt_ding_single_task_new_comment_num_at:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v2, p0, Lbiu;->u:Landroid/view/View;

    iget-object v3, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 473
    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lbiu;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 480
    iget-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lbiu;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lbiu;->g:Lcom/alibaba/android/ding/widget/DingVerticalAnimView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lbiu;->i:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setVisibility(I)V

    .line 497
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lbiu;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lbiu;->g:Lcom/alibaba/android/ding/widget/DingVerticalAnimView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lbiu;->i:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lbiu;->h:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v1, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lbiu;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lbiu;->g:Lcom/alibaba/android/ding/widget/DingVerticalAnimView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lbiu;->i:Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/StrikeTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 500
    iget-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->E(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$e;->ding_bg_yellow_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 505
    :goto_0
    invoke-direct {p0}, Lbiu;->k()V

    .line 506
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lbiu;->k:Landroid/view/View;

    sget v1, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
