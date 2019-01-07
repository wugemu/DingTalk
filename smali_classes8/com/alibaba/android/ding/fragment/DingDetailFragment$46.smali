.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Lazv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 3537
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 3553
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    if-eqz v0, :cond_0

    .line 3554
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->dismissLoadingDialog()V

    .line 3556
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3681
    .line 6565
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    .line 3681
    if-nez v0, :cond_0

    .line 3685
    :goto_0
    return-void

    .line 3684
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->z(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(JJ)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "commentId"    # J

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3581
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(JJ)V

    .line 3583
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/CommentObject;)V
    .locals 6
    .param p1, "commentObject"    # Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3626
    if-nez p1, :cond_1

    .line 3632
    :cond_0
    :goto_0
    return-void

    .line 3629
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3630
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    iget-wide v4, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->b:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(JJ)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V
    .locals 1
    .param p1, "commentObject"    # Lcom/alibaba/android/ding/base/objects/CommentObject;
    .param p2, "type"    # Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    .prologue
    .line 3570
    if-nez p1, :cond_1

    .line 3576
    :cond_0
    :goto_0
    return-void

    .line 3573
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3574
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/CommentObject;ZZZ)V
    .locals 4
    .param p1, "commentObject"    # Lcom/alibaba/android/ding/base/objects/CommentObject;
    .param p2, "isText"    # Z
    .param p3, "allCommentHasNew"    # Z
    .param p4, "normalCommentHasNew"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3587
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3588
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3590
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 3591
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V

    .line 3594
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->k:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->NORMAL:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    if-ne v0, v1, :cond_2

    .line 3595
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->USER_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V

    .line 3598
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->ae(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 3600
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditContent(Ljava/lang/String;)V

    .line 3602
    if-eqz p2, :cond_3

    .line 3603
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$1;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 3614
    :cond_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$2;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3622
    return-void
.end method

.method public final a(Ljava/util/List;JILcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V
    .locals 16
    .param p2, "cursor"    # J
    .param p4, "direction"    # I
    .param p5, "type"    # Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/CommentObject;",
            ">;JI",
            "Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3636
    .line 4565
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/CommentObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v5

    .line 3636
    if-nez v5, :cond_0

    .line 3677
    :goto_0
    return-void

    .line 3639
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3640
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3641
    if-nez p4, :cond_8

    .line 3642
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[DingDetailActivity]request comment forward size:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 3643
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", type:"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, ", dingId:"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3642
    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 3644
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v8

    .line 5179
    sget-object v5, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    move-object/from16 v0, p5

    if-ne v0, v5, :cond_3

    iget-object v5, v8, Lcom/alibaba/android/ding/adapter/CommentAdapter;->d:Ljava/util/List;

    move-object v7, v5

    .line 5180
    :goto_1
    if-eqz p1, :cond_7

    .line 5184
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5186
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5187
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5188
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 5189
    const/4 v6, 0x0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 5190
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    iget-wide v10, v5, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    iget-wide v12, v6, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_4

    .line 5193
    const/4 v5, 0x0

    invoke-interface {v7, v5, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 5207
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 5208
    const/4 v5, 0x0

    invoke-interface {v7, v5, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 5209
    iget-object v5, v8, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    move-object/from16 v0, p5

    if-ne v0, v5, :cond_7

    .line 5210
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5211
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 5212
    if-eqz v5, :cond_2

    .line 5213
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    iget-wide v10, v5, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-virtual {v9, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v5

    .line 5214
    if-eqz v5, :cond_2

    .line 5215
    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5179
    :cond_3
    iget-object v5, v8, Lcom/alibaba/android/ding/adapter/CommentAdapter;->e:Ljava/util/List;

    move-object v7, v5

    goto :goto_1

    .line 5195
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 5196
    if-eqz v5, :cond_5

    .line 5197
    if-eqz v6, :cond_5

    iget-wide v12, v5, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    iget-wide v14, v6, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    cmp-long v11, v12, v14

    if-gtz v11, :cond_5

    .line 5199
    invoke-interface {v9, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5219
    :cond_6
    invoke-virtual {v8, v6}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Ljava/util/Collection;)V

    .line 5220
    invoke-virtual {v8}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    .line 3675
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->z(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->setVisibility(I)V

    .line 3676
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v6}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->as(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/16 :goto_0

    .line 3645
    :cond_8
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_9

    .line 3646
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[DingDetailActivity]request comment backward size:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 3647
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", type:"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, ", dingId:"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3646
    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 3648
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Ljava/util/Collection;Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V

    goto :goto_4

    .line 3649
    :cond_9
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_7

    .line 3650
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[DingDetailActivity]request comment context size:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 3651
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", type:"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, ", dingId:"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v7}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3650
    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 3652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v6

    .line 6170
    sget-object v5, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    move-object/from16 v0, p5

    if-ne v0, v5, :cond_b

    iget-object v5, v6, Lcom/alibaba/android/ding/adapter/CommentAdapter;->d:Ljava/util/List;

    .line 6171
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 6172
    if-eqz p1, :cond_a

    .line 6173
    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6175
    :cond_a
    invoke-virtual {v6}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    .line 3653
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-lez v5, :cond_7

    .line 3654
    const/4 v3, 0x0

    .line 3655
    .local v3, "index":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 3656
    .local v2, "comment":Lcom/alibaba/android/ding/base/objects/CommentObject;
    iget-wide v6, v2, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    cmp-long v6, p2, v6

    if-nez v6, :cond_d

    .line 3657
    add-int/lit8 v5, v3, -0x2

    if-ltz v5, :cond_c

    add-int/lit8 v4, v3, -0x2

    .line 3658
    .local v4, "selection":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->x(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$3;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;I)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 6170
    .end local v2    # "comment":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .end local v3    # "index":I
    .end local v4    # "selection":I
    :cond_b
    iget-object v5, v6, Lcom/alibaba/android/ding/adapter/CommentAdapter;->e:Ljava/util/List;

    goto :goto_5

    .line 3657
    .restart local v2    # "comment":Lcom/alibaba/android/ding/base/objects/CommentObject;
    .restart local v3    # "index":I
    :cond_c
    const/4 v4, 0x0

    goto :goto_7

    .line 3669
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 3670
    goto :goto_6
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 3560
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 3546
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    if-eqz v0, :cond_0

    .line 3547
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/activity/DingDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingDetailActivity;->showLoadingDialog()V

    .line 3549
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 3537
    check-cast p1, Lazv$a;

    .line 7541
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Lazv$a;)Lazv$a;

    .line 3537
    return-void
.end method
