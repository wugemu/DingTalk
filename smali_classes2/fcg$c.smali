.class abstract Lfcg$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PostHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcg;
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

.field final synthetic h:Lfcg;


# direct methods
.method constructor <init>(Lfcg;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lfcg;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 341
    iput-object p1, p0, Lfcg$c;->h:Lfcg;

    .line 342
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 343
    iput-object p2, p0, Lfcg$c;->c:Landroid/view/View;

    .line 344
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1350
    sget v0, Lezg$h;->avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfcg$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1351
    sget v0, Lezg$h;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcg$c;->e:Landroid/widget/TextView;

    .line 1352
    sget v0, Lezg$h;->comment_or_like:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcg$c;->f:Landroid/widget/TextView;

    .line 1353
    sget v0, Lezg$h;->time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfcg$c;->g:Landroid/widget/TextView;

    .line 347
    return-void
.end method

.method static synthetic a(Lfcg$c;J)V
    .locals 5
    .param p0, "x0"    # Lfcg$c;
    .param p1, "x1"    # J

    .prologue
    .line 335
    .line 6398
    iget-object v0, p0, Lfcg$c;->h:Lfcg;

    invoke-static {v0}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 6399
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lfcg$c$2;

    invoke-direct {v1, p0}, Lfcg$c$2;-><init>(Lfcg$c;)V

    invoke-virtual {v0, v1}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 7036
    :cond_0
    sget-object v1, Lfdm$a;->a:Lfdk;

    .line 6407
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lfcg$c$3;

    invoke-direct {v2, p0}, Lfcg$c$3;-><init>(Lfcg$c;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lfcg$c;->h:Lfcg;

    .line 6434
    invoke-static {v4}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v4

    .line 6407
    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, p1, p2, v0}, Lfdk;->c(JLcma;)V

    .line 335
    return-void
.end method


# virtual methods
.method a(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V
    .locals 6
    .param p1, "noticeObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 438
    iget-object v0, p0, Lfcg$c;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1447
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 1448
    if-nez v0, :cond_0

    .line 1449
    const-string/jumbo v0, "userObject = null"

    .line 2060
    invoke-static {v5, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 2470
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 2471
    if-nez v0, :cond_1

    .line 2472
    const-string/jumbo v0, "userObject = null"

    .line 3060
    invoke-static {v5, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 3480
    :goto_1
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 3481
    if-eqz v0, :cond_4

    .line 3487
    iget v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    .line 3488
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3489
    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->isComment()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3490
    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    .line 3491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3492
    const-string/jumbo v0, "comment is empty"

    .line 4060
    invoke-static {v5, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 5510
    :goto_2
    iget-wide v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    .line 5511
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 5512
    const-string/jumbo v0, "createAt <= 0"

    .line 6060
    invoke-static {v5, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 443
    :goto_3
    invoke-virtual {p0, p1}, Lfcg$c;->b(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V

    .line 444
    return-void

    .line 1453
    :cond_0
    iget-object v1, p0, Lfcg$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Lezg$g;->icon_avatar_default_round:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1454
    iget-object v1, p0, Lfcg$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 1455
    iget-object v1, p0, Lfcg$c;->h:Lfcg;

    invoke-static {v1}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    new-instance v4, Lfcg$c$4;

    invoke-direct {v4, p0, v0}, Lfcg$c$4;-><init>(Lfcg$c;Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)V

    invoke-static {v1, v2, v3, v4}, Lffn;->a(Landroid/app/Activity;JLcov;)V

    goto :goto_0

    .line 2476
    :cond_1
    iget-object v1, p0, Lfcg$c;->e:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3494
    :cond_2
    iget-object v1, p0, Lfcg$c;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lfcg$c;->h:Lfcg;

    invoke-static {v2}, Lfcg;->e(Lfcg;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3495
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    iget-object v2, p0, Lfcg$c;->h:Lfcg;

    invoke-static {v2}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lfcg$c;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-static {v3, v4}, Lcms;->a(Landroid/content/Context;F)F

    move-result v3

    .line 5050
    invoke-virtual {v1, v2, v0, v3}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 3496
    iget-object v1, p0, Lfcg$c;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3499
    :cond_3
    iget-object v0, p0, Lfcg$c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lfcg$c;->h:Lfcg;

    invoke-static {v1}, Lfcg;->f(Lfcg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3500
    iget-object v0, p0, Lfcg$c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lfcg$c;->h:Lfcg;

    invoke-static {v1}, Lfcg;->d(Lfcg;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 3504
    :cond_4
    iget-object v0, p0, Lfcg$c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lfcg$c;->h:Lfcg;

    invoke-static {v1}, Lfcg;->c(Lfcg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3505
    iget-object v0, p0, Lfcg$c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lfcg$c;->h:Lfcg;

    invoke-static {v1}, Lfcg;->d(Lfcg;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 5515
    :cond_5
    iget-object v2, p0, Lfcg$c;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lfcg$c;->h:Lfcg;

    invoke-static {v3}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lfff;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method abstract b(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 359
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    if-nez v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    .line 363
    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    .line 364
    .local v0, "object":Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;
    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    .line 1368
    sget-object v4, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->SINGLE:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1370
    new-instance v4, Lfcg$c$1;

    invoke-direct {v4, p0, v2, v3}, Lfcg$c$1;-><init>(Lfcg$c;J)V

    invoke-static {v4}, Lfds;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
