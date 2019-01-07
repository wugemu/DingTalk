.class public Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSettingsActivity.java"


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/view/View;

.field private J:Landroid/view/View;

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/view/View$OnClickListener;

.field private S:Landroid/view/MenuItem;

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lacz$a;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Lacz$a;",
            ">;"
        }
    .end annotation
.end field

.field private final a:I

.field private final b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ToggleButton;

.field private g:Landroid/widget/ToggleButton;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/view/View;

.field private j:Lcom/alibaba/wukong/im/Conversation;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ToggleButton;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/ToggleButton;

.field private r:Landroid/widget/LinearLayout;

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private t:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/view/View;

.field private w:Z

.field private x:Z

.field private y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private z:Lrz;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 85
    iput v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->b:I

    .line 89
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->c:Z

    .line 92
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->e:Landroid/view/View;

    .line 93
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->f:Landroid/widget/ToggleButton;

    .line 94
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->g:Landroid/widget/ToggleButton;

    .line 95
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h:Landroid/widget/ToggleButton;

    .line 96
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->i:Landroid/view/View;

    .line 98
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->k:Landroid/view/View;

    .line 99
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->l:Landroid/view/View;

    .line 100
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->m:Landroid/widget/ToggleButton;

    .line 101
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->n:Landroid/view/View;

    .line 103
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->o:Landroid/view/View;

    .line 105
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->p:Landroid/widget/LinearLayout;

    .line 106
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->q:Landroid/widget/ToggleButton;

    .line 108
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->r:Landroid/widget/LinearLayout;

    .line 109
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 110
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 111
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->u:Landroid/widget/TextView;

    .line 113
    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->v:Landroid/view/View;

    .line 115
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->w:Z

    .line 116
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->x:Z

    .line 119
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->z:Lrz;

    .line 141
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    .line 982
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->U:Lfp;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    const/4 v2, 0x1

    .line 77
    .line 16691
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 16692
    const/4 v0, 0x0

    sget v1, Laxo$i;->loading:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 16693
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$17;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$17;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 16700
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 16708
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16709
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 77
    :cond_1
    return-void
.end method

.method static synthetic C(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->m:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->j:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->z:Lrz;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1159
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1160
    invoke-static {p0, p2}, Lacg;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1162
    invoke-static {p2}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10563
    const-string/jumbo v0, "mail_account_setting_sign_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1168
    :goto_1
    invoke-static {}, Lacq;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1169
    invoke-static {p0, p2}, Lacg;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 10567
    :cond_2
    const-string/jumbo v0, "mail_account_setting_backup_sign_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1171
    :cond_3
    const-wide/16 v0, -0x1

    invoke-static {p0, p2, v0, v1}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v3, 0x1

    .line 77
    .line 12132
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->i()Ljava/util/List;

    move-result-object v0

    .line 12133
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12134
    :cond_0
    const-string/jumbo v0, "CMailAccountsActivity"

    const-string/jumbo v1, "showMailChooseDialog loginMails.isEmpty"

    invoke-static {v0, v1}, Lafg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12138
    :goto_0
    return-void

    .line 12136
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 12137
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 12141
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 12143
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12144
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12145
    sget v0, Laxo$i;->dt_mail_setting_choose_account:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12146
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;

    invoke-direct {v0, p0, v2, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;[Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12155
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 77
    .line 17039
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->w:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->A:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;I)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    .line 13090
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    .line 13091
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 13097
    :cond_0
    :goto_0
    return-void

    .line 14089
    :cond_1
    const-string/jumbo v0, "mail_org_dispatch_status"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 13095
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13096
    sget v0, Laxo$i;->dt_cmail_network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 13099
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->showLoadingDialog()V

    .line 13100
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    .line 13126
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 13127
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    .line 13128
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacz$a;

    iget-wide v4, v1, Lacz$a;->a:J

    .line 13127
    invoke-virtual {v2, v4, v5, v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(JLcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Ljava/util/List;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 77
    .line 17051
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17052
    :cond_0
    :goto_0
    return-void

    .line 17054
    :cond_1
    sget v0, Laxo$i;->dt_mail_already_binded:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 17055
    sget v0, Laxo$i;->dt_mail_open_forfree:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 17056
    sget v0, Laxo$i;->dt_mail_orgmail_enterandmanage:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 17058
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labk;

    .line 17059
    if-eqz v0, :cond_7

    .line 17060
    iget-object v3, v0, Labk;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    .line 17061
    const/4 v1, 0x1

    move v3, v1

    .line 17063
    :goto_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->U:Lfp;

    iget-object v8, v0, Labk;->a:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 17096
    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 17063
    check-cast v1, Lacz$a;

    .line 17064
    if-eqz v1, :cond_2

    .line 17065
    iget-object v0, v0, Labk;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v4

    :goto_3
    iput-object v0, v1, Lacz$a;->c:Ljava/lang/String;

    :cond_2
    move v0, v3

    :goto_4
    move v1, v0

    .line 17068
    goto :goto_1

    :cond_3
    move-object v0, v5

    .line 17065
    goto :goto_3

    .line 17070
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17071
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->H:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move-object v4, v6

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->x:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->B:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->r:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->C:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->F:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    return-object v0
.end method

.method private h()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 399
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    invoke-virtual {v4}, Lacr;->e()Z

    move-result v4

    if-nez v4, :cond_2

    .line 400
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->I:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->L:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->K:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->J:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->O:Landroid/widget/TextView;

    invoke-static {}, Lacn;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->J:Landroid/view/View;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    invoke-static {}, Lacn;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lafh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "orgName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 409
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .end local v2    # "orgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v2    # "orgName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->P:Landroid/widget/TextView;

    sget v5, Laxo$i;->dd_cmail_personal_mail:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 414
    .end local v2    # "orgName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    invoke-virtual {v4}, Lacr;->i()Ljava/util/List;

    move-result-object v0

    .line 415
    .local v0, "mails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 416
    :cond_3
    const-string/jumbo v4, "CMailAccountsActivity"

    const-string/jumbo v5, "mails.isEmpty()"

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->finish()V

    goto :goto_0

    .line 421
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 422
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->J:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->K:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->I:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->M:Landroid/widget/TextView;

    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 431
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    sget v4, Laxo$f;->prefix_next_icon:I

    .line 9372
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 433
    .local v1, "nextIcon":Landroid/view/View;
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->I:Landroid/view/View;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 436
    if-eqz v3, :cond_5

    iget-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    if-eqz v4, :cond_5

    .line 437
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->N:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_mail_set_mail_prefix:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 442
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    .line 443
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->K:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->J:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->O:Landroid/widget/TextView;

    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->J:Landroid/view/View;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    invoke-static {}, Lacn;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lafh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .restart local v2    # "orgName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 449
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 439
    .end local v2    # "orgName":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->N:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_mail_dingding_personal:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 451
    .restart local v2    # "orgName":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->P:Landroid/widget/TextView;

    sget v5, Laxo$i;->dd_cmail_personal_mail:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 454
    .end local v2    # "orgName":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->L:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->Q:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    const/4 v3, 0x1

    .line 77
    .line 15075
    new-instance v0, Lacz;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lacz;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 15076
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15077
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 15078
    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 15085
    sget v0, Laxo$i;->dt_mail_orgmail_select:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 15086
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    return-void
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->E:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->I:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    .line 15177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15178
    const-string/jumbo v1, "account_name"

    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15179
    const-string/jumbo v1, "/page/mail_dingtalk_setting.html"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->J:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->O:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->Q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->j:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    .line 15587
    sget v0, Laxo$f;->conversation_sticky_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->f:Landroid/widget/ToggleButton;

    .line 15588
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->f:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->j:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 15590
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 15592
    sget v0, Laxo$f;->rl_sticky_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->e:Landroid/view/View;

    .line 15593
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15594
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->e:Landroid/view/View;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15636
    sget v0, Laxo$f;->line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 15637
    if-eqz v0, :cond_0

    .line 15638
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15640
    :cond_0
    sget v0, Laxo$f;->line3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 15641
    if-eqz v0, :cond_1

    .line 15642
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15645
    :cond_1
    sget v0, Laxo$f;->setting_mail_notification:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->k:Landroid/view/View;

    .line 15646
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15647
    sget v0, Laxo$f;->mailnotice_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->m:Landroid/widget/ToggleButton;

    .line 15649
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->m:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 15650
    sget v0, Laxo$f;->mailnotice_access:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->n:Landroid/view/View;

    .line 15656
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15657
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->k:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15659
    sget v0, Laxo$f;->setting_mail_folder_notification:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->l:Landroid/view/View;

    .line 15660
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15661
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15663
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->m:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 15670
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->k:Landroid/view/View;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$16;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$16;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15678
    const/4 v0, 0x0

    .line 15681
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_key_mail_notification"

    invoke-static {v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 15687
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Ljava/lang/String;Z)V

    .line 77
    return-void

    :cond_2
    move v0, v2

    .line 15588
    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 15684
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_key_mail_notification"

    invoke-static {v2, v3}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method static synthetic s(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->w:Z

    return v0
.end method

.method static synthetic u(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->x:Z

    return v0
.end method

.method static synthetic w(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->f:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 77
    .line 15714
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15715
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 965
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->finish()V

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h()V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 974
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->finish()V

    .line 979
    :goto_0
    return-void

    .line 977
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h()V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "syncFromServer"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 725
    const-string/jumbo v1, "01"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 727
    const-string/jumbo v1, "00"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "0"

    .line 728
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "02"

    .line 729
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 730
    :cond_0
    const/4 v0, 0x0

    .line 735
    .local v0, "isMailNoticeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->j:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->j:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 738
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->j:Lcom/alibaba/wukong/im/Conversation;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/Conversation;->updateNotification(ZLcom/alibaba/wukong/Callback;)V

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->m:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 745
    if-eqz p2, :cond_2

    .line 746
    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v3, "dingding_mail"

    const-string/jumbo v4, "xpn"

    const-string/jumbo v2, "EVENTBUTLER"

    .line 749
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Z)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    .line 750
    invoke-interface {v2, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 746
    invoke-interface {v1, v3, v4, v2}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 777
    :cond_2
    return-void

    .line 732
    .end local v0    # "isMailNoticeOn":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "isMailNoticeOn":Z
    goto :goto_0
.end method

.method protected final declared-synchronized b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 781
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->m:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 782
    .local v0, "isChecked":Z
    if-eqz v0, :cond_2

    const-string/jumbo v2, "00"

    :goto_0
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->d:Ljava/lang/String;

    .line 785
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->j:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    .line 786
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->j:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/alibaba/wukong/im/Conversation;->updateNotification(ZLcom/alibaba/wukong/Callback;)V

    .line 10535
    :cond_1
    if-eqz v0, :cond_3

    const-string/jumbo v1, "mail_all_notice_on"

    :goto_1
    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 790
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_key_mail_notification"

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    monitor-exit p0

    return-void

    .line 782
    :cond_2
    :try_start_1
    const-string/jumbo v2, "01"

    goto :goto_0

    .line 10535
    :cond_3
    const-string/jumbo v1, "mail_all_notice_off"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 781
    .end local v0    # "isChecked":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 947
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->finish()V

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1375
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1376
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "guide_push"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1377
    const-string/jumbo v6, "/page/mail_notification_setting.html"

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 193
    :cond_0
    sget v5, Laxo$g;->alm_cmail_fragment_mail_settings:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->setContentView(I)V

    .line 194
    const-string/jumbo v5, "EVENTBUTLER"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$10;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    invoke-interface {v5, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 220
    .local v1, "conversation":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v5, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/ConversationService;

    .line 221
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Lacg;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-interface {v5, v1, v6}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v6, "pref_key_account_upgrade_new"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->w:Z

    .line 225
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v6, "pref_key_account_other_new"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->x:Z

    .line 227
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    .line 270
    .local v0, "clickListener":Landroid/view/View$OnClickListener;
    sget v5, Laxo$f;->setting1:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 271
    iget-boolean v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->w:Z

    if-eqz v5, :cond_1

    .line 272
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setDotNoticeViewVisibility(I)V

    .line 274
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    sget v5, Laxo$f;->setting2:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 276
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    sget v5, Laxo$f;->subscribe_item_red_dot:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->u:Landroid/widget/TextView;

    .line 278
    sget v5, Laxo$f;->subscribe_item:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->v:Landroid/view/View;

    .line 279
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->v:Landroid/view/View;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-static {}, Lacq;->i()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 281
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->u:Landroid/widget/TextView;

    sget v6, Laxo$i;->dt_mail_knowledge_academy_guide_tip:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 282
    const-string/jumbo v5, "pref_key_mail_subscribe_square_first_time"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->u:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->v:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setVisibility(I)V

    .line 296
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setVisibility(I)V

    .line 298
    iget-boolean v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->x:Z

    if-eqz v5, :cond_3

    .line 299
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setDotNoticeViewVisibility(I)V

    .line 304
    :cond_3
    sget v5, Laxo$f;->setting0:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->r:Landroid/widget/LinearLayout;

    .line 305
    sget v5, Laxo$f;->help_red_hot:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->C:Landroid/view/View;

    .line 306
    sget v5, Laxo$f;->sign_red_hot:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->D:Landroid/widget/TextView;

    .line 307
    sget v5, Laxo$f;->mail_red_hot:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->E:Landroid/view/View;

    .line 309
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->r:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->r:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    const-string/jumbo v5, "pref_key_has_show_account_help"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 316
    .local v3, "hasShowHelpAccount":Z
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->C:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 320
    const-string/jumbo v5, "pref_key_mail_new_signature"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 321
    .local v4, "hasShowSign":Z
    if-eqz v4, :cond_c

    .line 322
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->D:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :cond_4
    :goto_2
    const-string/jumbo v5, "pref_key_mail_domain_manager"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 333
    .local v2, "hasShowDomain":Z
    if-eqz v2, :cond_d

    .line 334
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->E:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :goto_3
    sget v5, Laxo$f;->org_mail_layout:I

    .line 2372
    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 339
    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->F:Landroid/view/View;

    .line 340
    sget v5, Laxo$f;->org_mail_divider:I

    .line 3372
    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 340
    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->G:Landroid/view/View;

    .line 341
    sget v5, Laxo$f;->org_mail_desc:I

    .line 4372
    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 341
    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->H:Landroid/widget/TextView;

    .line 4985
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    .line 4986
    if-eqz v5, :cond_5

    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_e

    .line 344
    :cond_5
    :goto_4
    sget v5, Laxo$f;->nick_layout:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->A:Landroid/view/View;

    .line 345
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->A:Landroid/view/View;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    sget v5, Laxo$f;->sign_layout:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->B:Landroid/view/View;

    .line 347
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->B:Landroid/view/View;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    sget v5, Laxo$f;->show_inner_pic_setting:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6385
    sget v5, Laxo$f;->dingtalk_mail:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->M:Landroid/widget/TextView;

    .line 6386
    sget v5, Laxo$f;->dingtalk_mail_desc:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->N:Landroid/widget/TextView;

    .line 6387
    sget v5, Laxo$f;->agent_mail:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->O:Landroid/widget/TextView;

    .line 6388
    sget v5, Laxo$f;->add_mail:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->Q:Landroid/widget/TextView;

    .line 6389
    sget v5, Laxo$f;->ll_dingtalk_mail:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->I:Landroid/view/View;

    .line 6390
    sget v5, Laxo$f;->add_mail_line:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->L:Landroid/view/View;

    .line 6391
    sget v5, Laxo$f;->agent_mail_layout:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->J:Landroid/view/View;

    .line 6392
    sget v5, Laxo$f;->agent_mail_line:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->K:Landroid/view/View;

    .line 6393
    sget v5, Laxo$f;->agent_mail_desc:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->P:Landroid/widget/TextView;

    .line 6394
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h()V

    .line 6493
    invoke-static {}, Lacq;->c()Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_12

    .line 7518
    :cond_6
    :goto_5
    sget v5, Laxo$f;->mail_conversation_toggle:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h:Landroid/widget/ToggleButton;

    .line 7520
    sget v5, Laxo$f;->mail_conversatin_toggle_container:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 7524
    const/4 v5, 0x0

    .line 7525
    const/4 v7, 0x0

    invoke-static {v7}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v7

    .line 7526
    if-eqz v7, :cond_14

    .line 7527
    invoke-interface {v7}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getShownType()I

    move-result v5

    .line 7531
    :goto_6
    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h:Landroid/widget/ToggleButton;

    if-nez v5, :cond_15

    const/4 v5, 0x1

    :goto_7
    invoke-virtual {v7, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 7532
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h:Landroid/widget/ToggleButton;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 7535
    new-instance v5, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7572
    sget v5, Laxo$f;->mail_download_detail_toggle_container:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 7574
    new-instance v6, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$14;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$14;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8369
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 8370
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->v:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :cond_7
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v5, :cond_8

    .line 358
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v6, Laxo$i;->dt_mail_config_setting:I

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 361
    :cond_8
    invoke-static {}, Lacq;->j()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 362
    sget v5, Laxo$f;->mail_download_detail_divider:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 363
    sget v5, Laxo$f;->mail_download_detail_toggle_container:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_9
    return-void

    .line 279
    .end local v2    # "hasShowDomain":Z
    .end local v3    # "hasShowHelpAccount":Z
    .end local v4    # "hasShowSign":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 286
    :cond_b
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->u:Landroid/widget/TextView;

    sget v6, Laxo$i;->cmail_subscribe_cainiao_express_comment:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 287
    const-string/jumbo v5, "pref_key_mail_cainiao_subscribe_is_setting_frist_time"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "pref_key_mail_cainiao_subscribe"

    const/4 v6, 0x0

    .line 288
    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 289
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->u:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 324
    .restart local v3    # "hasShowHelpAccount":Z
    .restart local v4    # "hasShowSign":Z
    :cond_c
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->D:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    invoke-static {}, Lacq;->a()Z

    move-result v5

    if-nez v5, :cond_4

    .line 327
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->D:Landroid/widget/TextView;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 336
    .restart local v2    # "hasShowDomain":Z
    :cond_d
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->E:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 4989
    :cond_e
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 4990
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->U:Lfp;

    invoke-virtual {v6}, Lfp;->b()V

    .line 4991
    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4992
    if-eqz v5, :cond_f

    iget v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 4993
    new-instance v7, Lacz$a;

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v5, v10}, Lacz$a;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 4995
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4996
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->U:Lfp;

    iget-wide v8, v7, Lacz$a;->a:J

    invoke-virtual {v5, v8, v9, v7}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_8

    .line 5000
    :cond_10
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->T:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 5001
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->F:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5002
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->G:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 5006
    :cond_11
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->F:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5007
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->G:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5008
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->F:Landroid/view/View;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5011
    new-instance v5, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$5;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    .line 5034
    const-class v6, Lcma;

    invoke-static {v5, v6, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 5035
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v6

    .line 5110
    if-eqz v5, :cond_5

    .line 5114
    new-instance v7, Lacr$8;

    invoke-direct {v7, v6, v5}, Lacr$8;-><init>(Lacr;Lcma;)V

    .line 5133
    invoke-static {}, Lro;->a()Lro;

    move-result-object v5

    .line 5699
    const-string/jumbo v6, "MailRPC"

    const-string/jumbo v8, "getMailAdminOrgList"

    invoke-static {v6, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5700
    new-instance v6, Lro$19;

    invoke-direct {v6, v5, v7}, Lro$19;-><init>(Lro;Lcma;)V

    .line 5717
    iget-object v5, v5, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v5, v6}, Lcom/alibaba/alimei/idl/service/CMailIService;->getMailAdminOrgList(Liyv;)V

    goto/16 :goto_4

    .line 6497
    :cond_12
    sget v5, Laxo$f;->desktop_sticky_toggle:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->g:Landroid/widget/ToggleButton;

    .line 6498
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->g:Landroid/widget/ToggleButton;

    .line 7046
    invoke-static {}, Laey;->a()Landroid/content/Intent;

    move-result-object v5

    .line 7047
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Laxo$i;->dingtalk_mail:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7048
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8, v7, v5}, Lcpp;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 7049
    const/4 v5, 0x1

    .line 6498
    :goto_9
    invoke-virtual {v6, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6499
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->g:Landroid/widget/ToggleButton;

    new-instance v6, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$12;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$12;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6509
    sget v5, Laxo$f;->rl_sticky_desktop:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->i:Landroid/view/View;

    .line 6510
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->i:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6511
    sget v5, Laxo$f;->line4:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 7051
    :cond_13
    const/4 v5, 0x0

    goto :goto_9

    .line 7529
    :cond_14
    const-string/jumbo v7, "CMailAccountsActivity"

    const-string/jumbo v8, "obtain settingApi fail, so set mail list showType to conversation"

    invoke-static {v7, v8}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 7531
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 466
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 467
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "zh_cn"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    :cond_0
    sget v1, Laxo$i;->and_title_help:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->S:Landroid/view/MenuItem;

    .line 469
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->S:Landroid/view/MenuItem;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 471
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 932
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->dismissLoadingDialog()V

    .line 942
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 943
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 486
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 9751
    :pswitch_0
    const-string/jumbo v0, "mail_login_login_feedback_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v2, "https://reservation.dingtalk.com/aliXiaomi?from=dingtalk_mail"

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 902
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onPause()V

    .line 903
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 904
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    .line 917
    .local v5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v1, "dingding_mail"

    const-string/jumbo v2, "xpn"

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->d:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    .line 923
    .end local v5    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/settings/CloudSetting;>;"
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1184
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 1185
    sget v0, Laxo$f;->show_inner_pic_setting_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11322
    invoke-static {}, Lajj;->b()I

    move-result v2

    .line 11323
    sget v1, Laxo$i;->dt_mail_settings_show_inner_pic_all:I

    .line 11324
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 11325
    sget v1, Laxo$i;->dt_mail_settings_show_inner_pic_wifi:I

    .line 11329
    :cond_0
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    return-void

    .line 11326
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 11327
    sget v1, Laxo$i;->dt_mail_settings_show_inner_pic_never:I

    goto :goto_0
.end method
