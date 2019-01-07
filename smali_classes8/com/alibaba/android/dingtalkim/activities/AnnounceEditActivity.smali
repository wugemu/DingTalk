.class public Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "AnnounceEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ToggleButton;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/view/View;

.field private j:Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

.field private k:Ljava/lang/String;

.field private l:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;

.field private m:Z

.field private n:Z

.field private o:Lcom/alibaba/wukong/im/ConversationChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 254
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->o:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 548
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;ILcom/alibaba/wukong/im/Conversation;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v4, 0x0

    .line 54
    .line 4292
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4293
    sget v1, Lctk$i;->tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 4294
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 4295
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$14;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 4296
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4305
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 54
    .line 3219
    if-eqz p1, :cond_0

    .line 3222
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->getMembers(Lcom/alibaba/wukong/Callback;)V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .prologue
    .line 54
    .line 4375
    if-nez p1, :cond_0

    .line 4376
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[sendDing] invalid content"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->dismissLoadingDialog()V

    .line 4378
    const-string/jumbo v0, "chat_setting_announce_fail"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 4379
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->finish()V

    .line 4394
    :goto_0
    return-void

    .line 4382
    :cond_0
    if-nez p2, :cond_1

    .line 4383
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[sendDing] invalid conversationId"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4384
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->dismissLoadingDialog()V

    .line 4385
    const-string/jumbo v0, "chat_setting_announce_fail"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 4386
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->finish()V

    goto :goto_0

    .line 4389
    :cond_1
    if-nez p5, :cond_2

    .line 4390
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[sendDing] invalid typeNotification"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4391
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->dismissLoadingDialog()V

    .line 4392
    const-string/jumbo v0, "chat_setting_announce_fail"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 4393
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->finish()V

    goto :goto_0

    .line 4396
    :cond_2
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    const v2, 0x7ffffffe

    invoke-interface {v7, v0, p2, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->listMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->g:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->j:Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 54
    .line 3309
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3310
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_1

    .line 3311
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3312
    sget v1, Lctk$i;->announce_group_content_too_long:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$15;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$15;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3317
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 3367
    :cond_0
    :goto_0
    return-void

    .line 3319
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 3320
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->j:Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;->getRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v2

    .line 3322
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->l:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;

    if-nez v3, :cond_2

    .line 3323
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;ZLjava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;-><init>(Lcma;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->l:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;

    .line 3358
    :cond_2
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v3

    invoke-virtual {v3}, Ldyn;->b()Ldxd;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->l:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;

    invoke-interface {v3, v4, v0, v5}, Ldxd;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 3361
    sget v0, Lctk$i;->dt_im_group_announce_publishing:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->showLoadingDialog(I)V

    .line 3362
    if-nez v1, :cond_3

    .line 3363
    const-string/jumbo v0, "chat_setting_announce_click_withoutding"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3364
    :cond_3
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v2, v0, :cond_4

    .line 3365
    const-string/jumbo v0, "chat_setting_announc_click_app"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3366
    :cond_4
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v2, v0, :cond_5

    .line 3367
    const-string/jumbo v0, "chat_setting_announce_click_sms"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3368
    :cond_5
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v2, v0, :cond_0

    .line 3369
    const-string/jumbo v0, "chat_setting_announce_click_call"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 54
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 475
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->m:Z

    if-eqz v1, :cond_0

    .line 476
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 477
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->announce_group_content_edit_exit_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    .line 481
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 488
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 492
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget v3, Lctk$g;->announce_edit:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "conversation_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->k:Ljava/lang/String;

    .line 84
    const-string/jumbo v3, "send_text"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    .local v2, "text":Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lctk$g;->actbar_textview:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1243
    sget v3, Lctk$f;->tv_ok:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->c:Landroid/widget/TextView;

    .line 1244
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->c:Landroid/widget/TextView;

    sget v5, Lctk$i;->dt_im_group_announce_publish:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1245
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->c:Landroid/widget/TextView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$12;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->b:Landroid/view/View;

    .line 88
    sget v3, Lctk$f;->ll_touch:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    .line 89
    sget v3, Lctk$f;->announce_edit_text:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e:Landroid/widget/EditText;

    .line 90
    sget v3, Lctk$f;->ll_ding:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->f:Landroid/widget/LinearLayout;

    .line 91
    sget v3, Lctk$f;->toggle_announce_ding:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->g:Landroid/widget/ToggleButton;

    .line 92
    sget v3, Lctk$f;->ll_send_type:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->h:Landroid/widget/LinearLayout;

    .line 93
    sget v3, Lctk$f;->line_above_remind_type_selector:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->i:Landroid/view/View;

    .line 95
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v1, "layoutParamsOfRemindTypeSelector":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcjj;->c:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 99
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->d(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->j:Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    .line 100
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->h:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->j:Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    invoke-virtual {v3, v4, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 105
    iput-boolean v8, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->n:Z

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->o:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v3, v4}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 2144
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$8;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->setTouchCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;)V

    .line 2163
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->g:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$9;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2178
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_group_announce_ding"

    invoke-virtual {v3, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v3

    .line 2179
    const-string/jumbo v4, "im"

    sget-object v5, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->a:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "fGroupAnnounceDing:"

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    if-eqz v3, :cond_1

    .line 2181
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2182
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2183
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->i:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2184
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->j:Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    invoke-virtual {v3, v9}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;->setVisibility(I)V

    .line 2185
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->j:Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;

    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;->setRemindType(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V

    .line 2193
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$10;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    invoke-static {v4, v5, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->k:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 2186
    :goto_1
    return-void

    .line 107
    :cond_0
    iput-boolean v10, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->n:Z

    goto/16 :goto_0

    .line 2188
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 514
    sget v1, Lctk$i;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 515
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 516
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 517
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->c:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->n:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 518
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->c:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->n:Z

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 519
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    move v1, v3

    .line 517
    goto :goto_0

    :cond_1
    move v2, v3

    .line 518
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 504
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->l:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->l:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;

    .line 2578
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;->a:Lcma;

    .line 506
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->l:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$a;

    .line 508
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->o:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 509
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 510
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 524
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 545
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 526
    :pswitch_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->m:Z

    if-eqz v1, :cond_0

    .line 527
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->announce_group_content_edit_exit_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    .line 532
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 539
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 540
    const/4 v1, 0x1

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 496
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onPause()V

    .line 497
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->e:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 500
    :cond_0
    return-void
.end method
