.class public Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CalendarShareReceiverDetailActivity.java"

# interfaces
.implements Lapj$b;


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private i:I

.field private j:I

.field private k:Lapj$a;

.field private l:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)Lapj$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->k:Lapj$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->l:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    return-object p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->l:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->SCHEDULE_VIEW:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->l:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->VIEW_FREE_BUSY:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    .prologue
    const/4 v5, 0x1

    .line 26
    .line 4172
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4173
    sget v1, Laow$f;->dt_ding_share_delete_schedules:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4174
    sget v1, Laow$f;->dt_ding_share_cancel_share_schedules_to_AT:I

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4175
    sget v1, Laow$f;->dt_ding_share_action_relieve:I

    new-instance v2, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$6;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4185
    sget v1, Laow$f;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4186
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 26
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->l:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->a()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 154
    .line 3167
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 154
    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getPrivilege()Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->l:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 133
    iput-object p3, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->m:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1167
    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->a()V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 146
    .line 2167
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 146
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 167
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Laow$e;->calendar_activity_share_receiver_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->setContentView(I)V

    .line 47
    sget v0, Laow$f;->dt_ding_share_privilege_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1061
    sget v0, Laow$d;->aiv_avatar_oto:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1062
    sget v0, Laow$d;->tv_user_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->b:Landroid/widget/TextView;

    .line 1063
    sget v0, Laow$d;->tv_can_read:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->c:Landroid/widget/TextView;

    .line 1064
    sget v0, Laow$d;->tv_free_busy:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->d:Landroid/widget/TextView;

    .line 1065
    sget v0, Laow$d;->tv_can_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->e:Landroid/widget/TextView;

    .line 1066
    sget v0, Laow$d;->iv_clicked_can_read:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1067
    sget v0, Laow$d;->iv_clicked_free_busy:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1068
    sget v0, Laow$d;->iv_clicked_can_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1069
    sget v0, Laow$a;->text_color_blue:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->i:I

    .line 1070
    sget v0, Laow$a;->uidic_global_color_6_1:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->j:I

    .line 1072
    sget v0, Laow$d;->rl_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$1;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    sget v0, Laow$d;->tv_stop_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$2;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    sget v0, Laow$d;->ll_can_read:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$3;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    sget v0, Laow$d;->ll_can_free_busy:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$4;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    sget v0, Laow$d;->ll_can_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity$5;-><init>(Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    new-instance v0, Lapk;

    invoke-direct {v0, p0, p0}, Lapk;-><init>(Landroid/app/Activity;Lapj$b;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->k:Lapj$a;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->k:Lapj$a;

    invoke-interface {v0}, Lapj$a;->i()V

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 58
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lapj$a;

    .line 4141
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarShareReceiverDetailActivity;->k:Lapj$a;

    .line 26
    return-void
.end method
