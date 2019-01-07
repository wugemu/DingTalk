.class abstract Lbnp$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PostHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation


# instance fields
.field c:Landroid/view/View;

.field d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field final synthetic h:Lbnp;


# direct methods
.method constructor <init>(Lbnp;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lbnp;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 337
    iput-object p1, p0, Lbnp$c;->h:Lbnp;

    .line 338
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 339
    iput-object p2, p0, Lbnp$c;->c:Landroid/view/View;

    .line 340
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    sget v0, Lbpu$d;->avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lbnp$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1347
    sget v0, Lbpu$d;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnp$c;->e:Landroid/widget/TextView;

    .line 1348
    sget v0, Lbpu$d;->comment_or_like:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnp$c;->f:Landroid/widget/TextView;

    .line 1349
    sget v0, Lbpu$d;->time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnp$c;->g:Landroid/widget/TextView;

    .line 343
    return-void
.end method

.method static synthetic a(Lbnp$c;J)V
    .locals 7
    .param p0, "x0"    # Lbnp$c;
    .param p1, "x1"    # J

    .prologue
    .line 331
    .line 6396
    iget-object v0, p0, Lbnp$c;->h:Lbnp;

    invoke-static {v0}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 6397
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lbnp$c$2;

    invoke-direct {v1, p0}, Lbnp$c$2;-><init>(Lbnp$c;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 6404
    :cond_0
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v1

    .line 6405
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lbnp$c$3;

    invoke-direct {v3, p0}, Lbnp$c$3;-><init>(Lbnp$c;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lbnp$c;->h:Lbnp;

    .line 6432
    invoke-static {v5}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v5

    .line 6405
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v0}, Lbou;->c(Ljava/lang/Long;Lcma;)V

    .line 331
    return-void
.end method


# virtual methods
.method a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V
    .locals 6
    .param p1, "noticeObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 436
    iget-object v0, p0, Lbnp$c;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1445
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 1446
    if-nez v0, :cond_0

    .line 1447
    const-string/jumbo v0, "userObject = null"

    .line 2076
    invoke-static {v5, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 2468
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 2469
    if-nez v0, :cond_1

    .line 2470
    const-string/jumbo v0, "userObject = null"

    .line 3076
    invoke-static {v5, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 3478
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 3479
    if-eqz v0, :cond_4

    .line 3485
    iget v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    .line 3486
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3487
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->isComment()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3488
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    .line 3489
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3490
    const-string/jumbo v0, "comment is empty"

    .line 4076
    invoke-static {v5, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 5508
    :goto_2
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    .line 5509
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 5510
    const-string/jumbo v0, "createAt <= 0"

    .line 6076
    invoke-static {v5, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 441
    :goto_3
    invoke-virtual {p0, p1}, Lbnp$c;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V

    .line 442
    return-void

    .line 1451
    :cond_0
    iget-object v1, p0, Lbnp$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Lbpu$c;->icon_avatar_default_round:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1452
    iget-object v1, p0, Lbnp$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 1453
    iget-object v1, p0, Lbnp$c;->h:Lbnp;

    invoke-static {v1}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    new-instance v4, Lbnp$c$4;

    invoke-direct {v4, p0, v0}, Lbnp$c$4;-><init>(Lbnp$c;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)V

    invoke-static {v1, v2, v3, v4}, Lbqr;->a(Landroid/app/Activity;JLcov;)V

    goto :goto_0

    .line 2474
    :cond_1
    iget-object v1, p0, Lbnp$c;->e:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3492
    :cond_2
    iget-object v1, p0, Lbnp$c;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lbnp$c;->h:Lbnp;

    invoke-static {v2}, Lbnp;->e(Lbnp;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3493
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    iget-object v2, p0, Lbnp$c;->h:Lbnp;

    invoke-static {v2}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lbnp$c;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-static {v3, v4}, Lcms;->a(Landroid/content/Context;F)F

    move-result v3

    .line 5050
    invoke-virtual {v1, v2, v0, v3}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 3494
    iget-object v1, p0, Lbnp$c;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3497
    :cond_3
    iget-object v0, p0, Lbnp$c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lbnp$c;->h:Lbnp;

    invoke-static {v1}, Lbnp;->f(Lbnp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3498
    iget-object v0, p0, Lbnp$c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lbnp$c;->h:Lbnp;

    invoke-static {v1}, Lbnp;->d(Lbnp;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 3502
    :cond_4
    iget-object v0, p0, Lbnp$c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lbnp$c;->h:Lbnp;

    invoke-static {v1}, Lbnp;->c(Lbnp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3503
    iget-object v0, p0, Lbnp$c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lbnp$c;->h:Lbnp;

    invoke-static {v1}, Lbnp;->d(Lbnp;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 5513
    :cond_5
    iget-object v2, p0, Lbnp$c;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lbnp$c;->h:Lbnp;

    invoke-static {v3}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lbqi;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method abstract b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 355
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    if-nez v2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "feed_click_new_comments_reminder"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    move-object v0, v1

    .line 361
    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .line 362
    .local v0, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    .line 1366
    sget-object v4, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->SINGLE:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1368
    new-instance v4, Lbnp$c$1;

    invoke-direct {v4, p0, v2, v3}, Lbnp$c$1;-><init>(Lbnp$c;J)V

    invoke-static {v4}, Lbpa;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
