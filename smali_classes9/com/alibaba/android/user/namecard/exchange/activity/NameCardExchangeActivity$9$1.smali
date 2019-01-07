.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9$1;
.super Ljava/lang/Object;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9$1;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x2

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9$1;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9;

    iget-object v1, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9$1;->a:Ljava/util/List;

    .line 2274
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c:Z

    .line 2275
    iget-boolean v2, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    if-nez v2, :cond_1

    .line 3153
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;

    .line 3155
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->cardUser:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-nez v3, :cond_2

    .line 3156
    :cond_1
    :goto_1
    return-void

    .line 3158
    :cond_2
    new-instance v3, Lftx;

    invoke-direct {v3}, Lftx;-><init>()V

    .line 3159
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->cardUser:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 4020
    iput-object v4, v3, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 3161
    iget-object v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3162
    iget-object v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->passwd:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3163
    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lftx;)V

    goto :goto_0

    .line 3166
    :cond_3
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->roomId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 3167
    iget-object v5, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3172
    iget-object v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3174
    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->type:I

    if-ne v0, v10, :cond_0

    .line 4199
    iget-object v0, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4200
    iget-object v0, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4570
    if-eqz v3, :cond_0

    iget-object v0, v3, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v0, :cond_0

    .line 4573
    iget-object v0, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;

    .line 4574
    if-eqz v0, :cond_4

    .line 4577
    iget-wide v6, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->c:J

    iget-object v5, v3, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 4578
    iget-object v3, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    if-eqz v3, :cond_5

    .line 4579
    iget-object v3, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g:Ljava/util/LinkedList;

    iget-object v4, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4580
    iget-object v3, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->f:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4581
    iget v3, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->d:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(I)V

    .line 4583
    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    .line 4584
    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/view/View;)V

    .line 4585
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4586
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4587
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4588
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4589
    const-string/jumbo v5, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 4590
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4591
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 4592
    new-instance v4, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$15;

    invoke-direct {v4, v1, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$15;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4613
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 4614
    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4616
    :cond_5
    iget-object v3, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->f:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4617
    iget v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->d:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(I)V

    goto/16 :goto_0

    .line 3182
    :cond_6
    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomPushObject;->type:I

    if-eq v0, v10, :cond_0

    .line 3183
    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lftx;)V

    goto/16 :goto_0

    .line 3188
    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c()V

    goto/16 :goto_1

    .line 4589
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
