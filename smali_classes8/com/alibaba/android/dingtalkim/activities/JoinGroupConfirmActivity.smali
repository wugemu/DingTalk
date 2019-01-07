.class public Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "JoinGroupConfirmActivity.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Lcom/alibaba/wukong/im/Conversation;

.field private d:J

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d:J

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;
    .param p1, "x1"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 76
    .line 2540
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 2541
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->finish()V

    .line 76
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method private static b()Z
    .locals 3

    .prologue
    .line 490
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_qrcode_apply_join_org"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->u:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 76
    .line 3264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3265
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->u:Z

    .line 3266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3268
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g:Landroid/widget/Button;

    sget v1, Lctk$i;->dt_im_join_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3270
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->m(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 3271
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->l:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_im_group_join_org_tip:I

    new-array v3, v3, [Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->s:Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->t:I

    return v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Z
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    .line 3469
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3472
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3473
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 3474
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 3475
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v0

    .line 3476
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3477
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3478
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    .line 3486
    :cond_1
    const/4 v0, 0x0

    .line 3483
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    const/4 v1, 0x0

    .line 76
    .line 3545
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 3546
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ApplyJoinGroupActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3547
    const-string/jumbo v0, "conversation"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3548
    const-string/jumbo v0, "inviter_id"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3549
    const-string/jumbo v0, "qrcode_key"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "qrcode_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3552
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->s:Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    if-eqz v0, :cond_1

    .line 3553
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->s:Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;->dest:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 3574
    :goto_0
    const-string/jumbo v3, "origin"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3575
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    :cond_0
    return-void

    .line 3556
    :pswitch_0
    const/16 v0, 0x8

    .line 3557
    goto :goto_0

    .line 3560
    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 3563
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3565
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->t:I

    if-lez v0, :cond_2

    .line 3566
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->t:I

    goto :goto_0

    .line 3568
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3572
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 3553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    .line 4507
    sget v0, Lctk$i;->group_qrcode_verify_failed:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 4508
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->n:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 76
    .line 6294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6295
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6514
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    .line 6515
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6516
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6518
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->C(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 6519
    invoke-static {v0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_qrcode_hide_member_count"

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6520
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6530
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 6531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6532
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5501
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5502
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    return-void

    .line 6524
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v0

    .line 6525
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->j:Landroid/widget/TextView;

    sget v2, Lctk$i;->confirm_join_group_profile_txt:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6526
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6534
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Lctk$e;->avatar_nobody:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 582
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->finish()V

    .line 585
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 130
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    sget v0, Lctk$g;->activity_join_group_confirm:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->setContentView(I)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->confirm_join_group_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 135
    sget v0, Lctk$f;->rl_group_info:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->e:Landroid/view/ViewGroup;

    .line 137
    sget v0, Lctk$f;->im_dashed_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->f:Landroid/widget/ImageView;

    .line 139
    sget v0, Lctk$f;->pb_qrcode_confirm:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->n:Landroid/widget/ProgressBar;

    .line 141
    sget v0, Lctk$f;->tv_verify_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->k:Landroid/widget/TextView;

    .line 143
    sget v0, Lctk$f;->tv_join_applied:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->h:Landroid/widget/TextView;

    .line 145
    sget v0, Lctk$f;->tv_group_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->m:Landroid/widget/TextView;

    .line 147
    sget v0, Lctk$f;->rl_alert:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->o:Landroid/widget/RelativeLayout;

    .line 149
    sget v0, Lctk$f;->tv_join_org_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->l:Landroid/widget/TextView;

    .line 1163
    sget v0, Lctk$f;->btn_add_to_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g:Landroid/widget/Button;

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    sget v0, Lctk$f;->tv_group_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->i:Landroid/widget/TextView;

    .line 1277
    sget v0, Lctk$f;->tv_member_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->j:Landroid/widget/TextView;

    .line 1279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1285
    sget v0, Lctk$f;->avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1299
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_add_group_biz_object"

    invoke-static {v0, v1}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->s:Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    .line 1301
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "qrcode_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p:Ljava/lang/String;

    .line 1302
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_conversation_group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->q:Ljava/lang/String;

    .line 1303
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r:Ljava/lang/String;

    .line 1304
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_share"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->t:I

    .line 1305
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->n:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2289
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2290
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    return-void

    .line 1312
    :cond_1
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1451
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1453
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/VerifyModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/VerifyModel;-><init>()V

    .line 1454
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p:Ljava/lang/String;

    iput-object v1, v2, Lcom/alibaba/wukong/idl/im/models/VerifyModel;->code:Ljava/lang/String;

    .line 1455
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/alibaba/wukong/idl/im/models/VerifyModel;->origin:Ljava/lang/Integer;

    .line 1456
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->verifyCodeV2(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/idl/im/models/VerifyModel;)V

    goto :goto_0

    .line 1457
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1459
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->q:Ljava/lang/String;

    invoke-static {v2}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->verifyGroupId(Lcom/alibaba/wukong/Callback;J)V

    goto :goto_0

    .line 1460
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1462
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->verifyPublicCid(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method
