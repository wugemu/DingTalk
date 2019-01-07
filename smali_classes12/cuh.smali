.class public final Lcuh;
.super Lcts;
.source "CombinedPraiseViewHolder.java"


# instance fields
.field private S:Landroid/widget/TextView;

.field private a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcts;-><init>()V

    return-void
.end method

.method static synthetic a(Lcuh;)Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;
    .locals 1
    .param p0, "x0"    # Lcuh;

    .prologue
    .line 30
    iget-object v0, p0, Lcuh;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    return-object v0
.end method

.method static synthetic b(Lcuh;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcuh;

    .prologue
    .line 30
    iget-object v0, p0, Lcuh;->S:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcuh;)V
    .locals 0
    .param p0, "x0"    # Lcuh;

    .prologue
    .line 30
    invoke-direct {p0}, Lcuh;->o()V

    return-void
.end method

.method private o()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    iget-object v3, p0, Lcuh;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->getDisplayPraises()Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 126
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 127
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    invoke-static {}, Ldka;->a()Ldka;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Ldka;->a(JLcom/alibaba/wukong/im/Message;)Z

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "conversationType"    # I

    .prologue
    .line 39
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "conversationTag"    # J

    .prologue
    .line 43
    return-void
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentUid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 87
    invoke-super/range {p0 .. p5}, Lcts;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V

    .line 3135
    instance-of v2, p4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v2, :cond_1

    move-object v0, v4

    .line 90
    .end local p4    # "message":Lcom/alibaba/wukong/im/Message;
    .local v0, "model":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    :cond_0
    :goto_1
    return-void

    .line 3138
    .end local v0    # "model":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    .restart local p4    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    check-cast p4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p4    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v2, p4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 3139
    instance-of v6, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    if-nez v6, :cond_2

    move-object v0, v4

    .line 3140
    goto :goto_0

    .line 3142
    :cond_2
    check-cast v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    move-object v0, v2

    goto :goto_0

    .line 93
    .restart local v0    # "model":Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;
    :cond_3
    iget-object v6, p0, Lcuh;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    .line 4097
    if-eqz v0, :cond_7

    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5076
    if-nez v0, :cond_8

    move-object v2, v4

    .line 4098
    :goto_2
    iput-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    .line 4099
    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    if-eqz v2, :cond_7

    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 4101
    iget-object v4, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5294
    iget v7, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->a:I

    if-lez v7, :cond_5

    .line 5297
    iget v7, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->a:I

    iget v8, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->c:I

    mul-int/2addr v7, v8

    iget v8, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->e:I

    if-le v7, v8, :cond_4

    .line 5298
    iget v7, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->e:I

    iget v8, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->a:I

    div-int/2addr v7, v8

    iput v7, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->c:I

    .line 5300
    :cond_4
    iget v7, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->c:I

    if-ge v2, v7, :cond_a

    .line 5301
    :goto_3
    iget v7, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->e:I

    iget v8, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->a:I

    mul-int/2addr v2, v8

    sub-int v2, v7, v2

    shr-int/lit8 v2, v2, 0x1

    iput v2, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->f:I

    .line 4103
    :cond_5
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->removeAllViewsInLayout()V

    .line 4104
    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4105
    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4106
    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 4108
    iget-object v4, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    sget-object v7, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;->FOLD:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    if-ne v4, v7, :cond_b

    iget-object v4, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .line 6268
    iget v4, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->d:I

    .line 4108
    if-le v2, v4, :cond_b

    .line 4109
    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .line 7268
    iget v2, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->d:I

    .line 4109
    iput v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    .line 4113
    :goto_4
    iget-object v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    iget v4, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    invoke-virtual {v6, v2, v3, v4, v3}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a(Ljava/util/List;IIZ)V

    .line 4115
    :cond_6
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->requestLayout()V

    .line 4116
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->invalidate()V

    .line 94
    :cond_7
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 95
    .local v1, "num":I
    iget-object v2, p0, Lcuh;->b:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v6, Lctk$i;->dt_im_chat_fold_likes_title:I

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0}, Lcuh;->o()V

    .line 99
    iget-object v2, p0, Lcuh;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    .line 8150
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->d:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .line 8268
    iget v2, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->d:I

    .line 8150
    if-le v4, v2, :cond_c

    move v2, v5

    .line 99
    :goto_5
    if-eqz v2, :cond_e

    .line 100
    iget-object v2, p0, Lcuh;->S:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v3, p0, Lcuh;->S:Landroid/widget/TextView;

    iget-object v2, p0, Lcuh;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lctk$i;->dt_im_click_to_close:I

    invoke-static {v2}, Lcuh;->b(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v2, p0, Lcuh;->S:Landroid/widget/TextView;

    new-instance v3, Lcuh$2;

    invoke-direct {v3, p0, v0}, Lcuh$2;-><init>(Lcuh;Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 5079
    .end local v1    # "num":I
    :cond_8
    new-instance v4, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;-><init>()V

    .line 5080
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    iput-object v2, v4, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->b:Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel$DisplayState;

    .line 5081
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    .line 5082
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 5083
    :goto_7
    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 5084
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5083
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    move-object v2, v4

    .line 5087
    goto/16 :goto_2

    .line 5300
    :cond_a
    iget v2, v4, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;->c:I

    goto/16 :goto_3

    .line 4111
    :cond_b
    iput v2, v6, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b:I

    goto/16 :goto_4

    .restart local v1    # "num":I
    :cond_c
    move v2, v3

    .line 8150
    goto :goto_5

    .line 101
    :cond_d
    sget v2, Lctk$i;->dt_im_view_all:I

    invoke-static {v2}, Lcuh;->b(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 118
    :cond_e
    iget-object v2, p0, Lcuh;->S:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 57
    sget v3, Lctk$f;->combine_praise_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    iput-object v3, p0, Lcuh;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    .line 58
    iget-object v4, p0, Lcuh;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    iget-object v3, p0, Lcuh;->L:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->setParent(Landroid/widget/AbsListView;)V

    .line 59
    sget v3, Lctk$f;->tv_praise_num_tip:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcuh;->b:Landroid/widget/TextView;

    .line 60
    sget v3, Lctk$f;->tv_praise_view_action:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcuh;->S:Landroid/widget/TextView;

    .line 61
    iget-object v3, p0, Lcuh;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    new-instance v4, Lcuh$1;

    invoke-direct {v4, p0, p1}, Lcuh$1;-><init>(Lcuh;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->setListener(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$a;)V

    .line 75
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 76
    .local v0, "context":Landroid/content/Context;
    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 77
    .local v2, "size":I
    new-instance v1, Lecw;

    sget v3, Lctk$i;->icon_likegood:I

    invoke-static {v3}, Lcuh;->b(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lctk$c;->pure_white:I

    .line 1404
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 77
    invoke-direct {v1, v3, v4}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 2079
    .local v1, "drawable":Lecw;
    iput v2, v1, Lecw;->b:I

    .line 3070
    iput v2, v1, Lecw;->a:I

    .line 81
    iget-object v3, p0, Lcuh;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v3, p0, Lcuh;->b:Landroid/widget/TextView;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 83
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lctk$g;->chatting_item_combine_praise:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method
