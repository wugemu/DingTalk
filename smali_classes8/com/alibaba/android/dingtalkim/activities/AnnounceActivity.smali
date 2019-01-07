.class public Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "AnnounceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;,
        Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Ldtl;

.field private d:Lcom/alibaba/wukong/im/Message;

.field private e:Z

.field private f:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;

.field private g:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:Z

.field private p:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field private q:Lcom/alibaba/wukong/im/MessageListener;

.field private r:Landroid/view/View$OnClickListener;

.field private final s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 116
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->p:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 153
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->q:Lcom/alibaba/wukong/im/MessageListener;

    .line 476
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->r:Landroid/view/View$OnClickListener;

    .line 489
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->s:I

    .line 610
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Ldtl;)Ldtl;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
    .param p1, "x1"    # Ldtl;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    return-object p1
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->l:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->m:Landroid/view/View;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e:Z

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e:Z

    if-eqz v0, :cond_1

    .line 403
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v2, "f_group_announce_ding"

    .line 3083
    invoke-virtual {v0, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 403
    if-eqz v0, :cond_1

    const-string/jumbo v0, "pref_key_group_announce_tip_first_show"

    .line 404
    invoke-static {v0, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    const-string/jumbo v0, "pref_key_group_announce_tip_first_show"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->m:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Landroid/view/View;)V

    .line 408
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 400
    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 574
    :goto_0
    return-void

    .line 566
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v4, 0x0

    .line 58
    .line 5178
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5179
    sget v1, Lctk$i;->tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 5180
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 5181
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    .line 5182
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5191
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    .line 4310
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 4311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4312
    const-string/jumbo v1, "conversation_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4314
    const-string/jumbo v1, "chat_setting_announce_edit"

    invoke-static {v1}, Lcps;->b(Ljava/lang/String;)V

    .line 4315
    const-string/jumbo v1, "send_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4319
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 58
    :cond_0
    return-void

    .line 4317
    :cond_1
    const-string/jumbo v1, "chat_setting_announce_create"

    invoke-static {v1}, Lcps;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 462
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->i:I

    if-eq v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    sget v1, Lctk$i;->chat_item_unreadcount_tips:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->unread_tv_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->i:I

    .line 474
    :cond_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    sget v1, Lctk$i;->chat_item_all_read:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->read_tv_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 58
    .line 5226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 5227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->f:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;

    if-nez v0, :cond_0

    .line 5228
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;-><init>(Lcma;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->f:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;

    .line 5275
    :cond_0
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->b()Ldxd;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->f:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;

    invoke-interface {v0, v1, v2}, Ldxd;->a(Ljava/lang/String;Lcma;)V

    .line 5276
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->showLoadingDialog()V

    .line 58
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Ldtl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 14
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 58
    .line 5333
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5336
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->supportInvalidateOptionsMenu()V

    .line 5337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    iget-object v0, v0, Ldtl;->h:Ldtk;

    if-nez v0, :cond_2

    .line 5338
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a()V

    .line 5390
    :cond_1
    :goto_0
    return-void

    .line 5340
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    iget-object v0, v0, Ldtl;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    iget-object v0, v0, Ldtl;->e:Ljava/lang/Integer;

    .line 5341
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    iget-object v0, v0, Ldtl;->h:Ldtk;

    iget-object v0, v0, Ldtk;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    iget-object v0, v0, Ldtl;->h:Ldtk;

    iget-object v0, v0, Ldtk;->a:Ljava/lang/Integer;

    .line 5343
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_b

    .line 5344
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 5345
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 5346
    sget v0, Lctk$f;->announce_info_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    iget-object v1, v1, Ldtl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5347
    sget v0, Lctk$f;->announce_info_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v6, Lctk$i;->announce_group_info:I

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    iget-object v1, v1, Ldtl;->g:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    iget-object v1, v1, Ldtl;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5416
    :goto_1
    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    .line 5417
    const-string/jumbo v1, "Invalid"

    .line 5347
    :goto_2
    aput-object v1, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5348
    sget v0, Lctk$f;->announce_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5349
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    iget-object v1, v1, Ldtl;->h:Ldtk;

    iget-object v1, v1, Ldtk;->b:Ljava/lang/String;

    .line 6019
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5349
    :goto_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    invoke-static {p0, v1, v2}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5350
    const/16 v1, 0xf

    invoke-static {v0, v1, v10}, Lcql;->a(Landroid/widget/TextView;IZ)V

    .line 5351
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e:Z

    if-eqz v0, :cond_8

    .line 5352
    sget v0, Lctk$f;->announce_edit_button_div:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 5353
    sget v0, Lctk$f;->announce_edit_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5354
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 5355
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5361
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_group_announce_ding"

    .line 6083
    invoke-virtual {v1, v2, v10}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 5361
    if-eqz v1, :cond_3

    const-string/jumbo v1, "pref_key_group_announce_tip_first_show"

    .line 5362
    invoke-static {v1, v10}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5363
    const-string/jumbo v1, "pref_key_group_announce_tip_first_show"

    invoke-static {v1, v11}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 5364
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Landroid/view/View;)V

    .line 5370
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_a

    .line 5371
    invoke-static {}, Ldka;->a()Ldka;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v2, v3, v1}, Ldka;->a(JLcom/alibaba/wukong/im/Message;)Z

    .line 5372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 5373
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getGroupLevel()I

    move-result v0

    if-eq v0, v10, :cond_a

    .line 5377
    sget v0, Lctk$f;->announce_info_unread_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    .line 5378
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5379
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->i:I

    .line 5380
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b()V

    goto/16 :goto_0

    :cond_4
    move-wide v2, v4

    .line 5347
    goto/16 :goto_1

    .line 5421
    :cond_5
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 5422
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v4

    .line 5424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5425
    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5426
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 5428
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5429
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 5431
    if-eq v5, v4, :cond_6

    .line 5432
    invoke-static {v2, v3}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5437
    :goto_5
    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5438
    invoke-static {v2, v3}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5440
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 5434
    :cond_6
    invoke-static {v2, v3}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_5

    .line 6023
    :cond_7
    const-string/jumbo v2, "\t"

    const-string/jumbo v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 5367
    :cond_8
    sget v0, Lctk$f;->announce_edit_button_div:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 5368
    sget v0, Lctk$f;->announce_edit_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 5383
    :cond_9
    sget v0, Lctk$f;->announce_info_unread_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 5384
    iput-object v13, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 5387
    :cond_a
    sget v0, Lctk$f;->announce_info_unread_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 5388
    iput-object v13, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->h:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 5391
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a()V

    .line 6444
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6445
    sget v1, Lctk$i;->version_low:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    .line 6446
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$14;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    .line 6452
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6458
    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 58
    .line 7281
    const-string/jumbo v0, "chat_setting_announce_delete"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 7282
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 7283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->g:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;

    if-nez v0, :cond_0

    .line 7284
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;-><init>(Lcma;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->g:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;

    .line 7304
    :cond_0
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->b()Ldxd;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->g:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;

    invoke-interface {v0, v1, v2}, Ldxd;->b(Ljava/lang/String;Lcma;)V

    .line 7305
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->showLoadingDialog()V

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissLoadingDialog()V
    .locals 1

    .prologue
    .line 535
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->dismissLoadingDialog()V

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->n:Z

    .line 537
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 324
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_announce_send_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_announce_seed"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 327
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 328
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->finish()V

    .line 330
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onAttachedToWindow()V

    .line 542
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->n:Z

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->showLoadingDialog()V

    .line 545
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget v1, Lctk$g;->announce_detail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_announce_seed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a:J

    .line 90
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 1101
    :cond_0
    sget v1, Lctk$f;->announce_empty_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->j:Landroid/view/View;

    .line 1102
    sget v1, Lctk$f;->announce_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->k:Landroid/view/View;

    .line 1103
    sget v1, Lctk$f;->announce_empty_tip_edit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->l:Landroid/view/View;

    .line 1104
    sget v1, Lctk$f;->announce_empty_create:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->m:Landroid/view/View;

    .line 1195
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 1196
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->p:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 1197
    const-class v1, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->q:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/MessageService;->addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 1198
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    invoke-static {v1, v2}, Ldjl;->a(Ljava/lang/String;Ldjl$a;)V

    .line 1221
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->showLoadingDialog()V

    .line 2108
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->m:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 493
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->o:Z

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->c:Ldtl;

    if-eqz v1, :cond_0

    .line 495
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->e:Z

    if-eqz v1, :cond_0

    .line 496
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 497
    .local v0, "deleteItem":Landroid/view/MenuItem;
    sget v1, Lctk$e;->ic_actbar_conv_delete:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 498
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 502
    .end local v0    # "deleteItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->f:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->f:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;

    .line 3606
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;->a:Lcma;

    .line 551
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->f:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->g:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->g:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;

    .line 3640
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;->a:Lcma;

    .line 555
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->g:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;

    .line 557
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->p:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 558
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->q:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 559
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 560
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 507
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 524
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 509
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->announce_group_delete_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V

    .line 514
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 521
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showLoadingDialog()V
    .locals 1

    .prologue
    .line 529
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->showLoadingDialog()V

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->n:Z

    .line 531
    return-void
.end method
