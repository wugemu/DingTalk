.class public Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;
.source "MailLoginNativeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$a;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/TextView;

.field private D:Lcnd;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/view/View;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/view/ViewGroup;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Landroid/view/View;

.field private X:Landroid/view/View;

.field private Y:Landroid/view/View;

.field private Z:Landroid/widget/ImageView;

.field private aa:Ljava/lang/String;

.field private ab:Lrz;

.field private ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ad:[Ljava/lang/CharSequence;

.field private ae:I

.field private af:Z

.field private ag:Z

.field private ah:Ljava/lang/String;

.field private ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

.field private aj:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

.field private ak:Z

.field private al:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

.field private am:Landroid/os/Handler;

.field private an:Ljava/lang/String;

.field private ao:Landroid/view/View;

.field private ap:Landroid/widget/TextView;

.field private aq:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private ar:Z

.field private as:Landroid/view/View;

.field private at:Z

.field private final s:Ljava/lang/String;

.field private t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/Button;

.field private x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

.field private y:Landroid/view/ViewStub;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "1119"

    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 301
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;-><init>()V

    .line 145
    const-string/jumbo v0, "https://oes.alibaba-inc.com/organization/out/staff/flow/projectStaffInput.htm"

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->s:Ljava/lang/String;

    .line 180
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ab:Lrz;

    .line 182
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    .line 183
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ad:[Ljava/lang/CharSequence;

    .line 184
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ae:I

    .line 185
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->af:Z

    .line 187
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ag:Z

    .line 188
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ah:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 190
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aj:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 192
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ak:Z

    .line 197
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->am:Landroid/os/Handler;

    .line 290
    const-class v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->an:Ljava/lang/String;

    .line 296
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ar:Z

    .line 773
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->at:Z

    .line 303
    return-void
.end method

.method static synthetic A(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    const/4 v2, 0x0

    .line 121
    .line 27745
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27748
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    if-nez v0, :cond_0

    .line 27749
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 27750
    sget v1, Laxo$i;->mail_login_aliyun:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 27751
    sget v1, Laxo$i;->mail_no_auth_desc:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 29230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 27753
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 29275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 27755
    sget v1, Laxo$i;->mail_no_auth_register:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 27756
    sget v1, Laxo$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30263
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 27757
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$19;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$19;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    .line 30271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 27770
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$20;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$20;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    .line 31267
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 27781
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 27783
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27784
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 121
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)Landroid/text/TextWatcher;
    .locals 1
    .param p1, "setupEditView"    # Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .prologue
    .line 1382
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$14;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)V

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ab:Lrz;

    return-object v0
.end method

.method private a(Labf;)V
    .locals 8
    .param p1, "data"    # Labf;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 775
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    if-nez v2, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    if-eqz p1, :cond_4

    .line 780
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_mail_org_mail_bind_page_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v2, p1, Labf;->a:Ljava/lang/String;

    invoke-static {v2}, Lacn;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "orgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 785
    iget-object v2, p1, Labf;->b:Ljava/lang/Boolean;

    .line 10022
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 785
    if-eqz v2, :cond_3

    .line 786
    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v4

    sget v3, Laxo$i;->dt_mail_admin_has_distribute_email_for_you1:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "tips":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    .end local v0    # "orgName":Ljava/lang/String;
    .end local v1    # "tips":Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz p1, :cond_5

    iget-object v2, p1, Labf;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    iget-object v2, p1, Labf;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 798
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    sget v3, Laxo$i;->dt_mail_nopwd_login:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 799
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 800
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->at:Z

    .line 801
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ao:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 802
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->N:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->P:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 804
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->v:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 788
    .restart local v0    # "orgName":Ljava/lang/String;
    :cond_3
    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v4

    sget v3, Laxo$i;->dt_mail_admin_has_distribute_email_for_you2:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tips":Ljava/lang/String;
    goto :goto_1

    .line 794
    .end local v0    # "orgName":Ljava/lang/String;
    .end local v1    # "tips":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 806
    :cond_5
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    sget v3, Laxo$i;->dt_mail_agent_login:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 807
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->at:Z

    .line 808
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ao:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 809
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->N:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->P:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 811
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->v:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 812
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->q:I

    if-eq v2, v5, :cond_6

    .line 813
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 815
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;ILjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 121
    .line 11865
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 11867
    sget v1, Laxo$i;->dt_mail_scs_login_failed:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 12218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 11868
    if-nez p1, :cond_0

    .line 11869
    sget v1, Laxo$i;->dt_cmail_login_fail_notalimei:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 12239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 11873
    :goto_0
    sget v1, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 14230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 11875
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 14275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 11877
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 11878
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v1, v0, v2}, Lacj;->a(Landroid/content/Context;Landroid/app/Dialog;F)V

    .line 121
    return-void

    .line 13239
    :cond_0
    iput-object p2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Labf;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Labf;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Labf;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;J)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 121
    .line 27252
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 27253
    if-eqz v0, :cond_0

    .line 27254
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$30;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->call4Aid(Ljava/lang/Long;Liyv;)V

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 121
    .line 24843
    const-string/jumbo v0, "mail_mailbind_normallogin_configure_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 24125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24126
    const-string/jumbo v1, "mail_account_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24127
    const-string/jumbo v1, "account_pass"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24129
    invoke-static {}, Lacg;->g()Lacg$a;

    move-result-object v1

    .line 24130
    if-eqz v1, :cond_0

    .line 24131
    const-string/jumbo v2, "imap_server"

    .line 25304
    iget-object v3, v1, Lacg$a;->a:Ljava/lang/String;

    .line 24131
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24132
    const-string/jumbo v2, "imap_port"

    .line 25308
    iget v3, v1, Lacg$a;->b:I

    .line 24132
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24133
    const-string/jumbo v2, "imap_ssl"

    .line 25312
    iget-boolean v3, v1, Lacg$a;->c:Z

    .line 24133
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24135
    const-string/jumbo v2, "smtp_server"

    .line 25316
    iget-object v3, v1, Lacg$a;->d:Ljava/lang/String;

    .line 24135
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24136
    const-string/jumbo v2, "smtp_port"

    .line 25320
    iget v3, v1, Lacg$a;->e:I

    .line 24136
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24137
    const-string/jumbo v2, "smtp_ssl"

    .line 25324
    iget-boolean v1, v1, Lacg$a;->f:Z

    .line 24137
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24140
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v1

    .line 26220
    iput-boolean v4, v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b:Z

    .line 24142
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lacg;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcma;
    .param p5, "x5"    # Lcma;

    .prologue
    .line 121
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 121
    .line 14888
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 14889
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 14892
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14893
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v6

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14898
    :goto_0
    invoke-static {v0}, Lacn;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v3

    .line 14900
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 15218
    iput-object p1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 14902
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 14903
    :goto_1
    invoke-static {v3}, Lacn;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v7

    .line 14904
    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    .line 14905
    sget v8, Laxo$i;->dt_mail_bind_failed_admin_person_message:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 15239
    iput-object v8, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 18230
    :goto_2
    iput-boolean v6, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 14912
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 18275
    iput-boolean v6, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 14915
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    invoke-direct {v1, p0, v4, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p2, p3, v1}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Ljava/lang/String;Laer;)Z

    move-result v1

    .line 14980
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 14982
    if-nez v1, :cond_0

    .line 14986
    if-eqz v0, :cond_5

    if-eqz v7, :cond_5

    .line 14987
    sget v0, Laxo$b;->mail_login_failed_choose1:I

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$23;

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$23;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 15063
    :cond_0
    :goto_3
    return-void

    :cond_1
    move-object v4, v0

    .line 14895
    goto :goto_0

    :cond_2
    move v0, v6

    .line 14902
    goto :goto_1

    .line 14906
    :cond_3
    if-eqz v0, :cond_4

    if-nez v7, :cond_4

    .line 14907
    sget v8, Laxo$i;->dt_mail_bind_failed_not_admin_person_message:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 16239
    iput-object v8, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    goto :goto_2

    .line 14909
    :cond_4
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->k:Ljava/lang/String;

    .line 17239
    iput-object v8, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    goto :goto_2

    .line 15003
    :cond_5
    if-eqz v0, :cond_6

    if-nez v7, :cond_6

    .line 15004
    sget v6, Laxo$b;->mail_login_failed_choose2:I

    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$24;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 15031
    :cond_6
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    if-eq v0, v9, :cond_7

    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_9

    .line 15034
    :cond_7
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    if-ne v0, v9, :cond_8

    sget v0, Laxo$b;->mail_login_failed_choose3:I

    :goto_4
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$25;

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$25;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_8
    sget v0, Laxo$b;->mail_login_failed_choose4:I

    goto :goto_4

    .line 15061
    :cond_9
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 15063
    sget v0, Laxo$b;->mail_login_failed_choose5:I

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$26;

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$26;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 15083
    :cond_a
    sget v0, Laxo$b;->mail_login_failed_choose6:I

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$27;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$27;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->d(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;ZZZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0, p2, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(ZZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V
    .locals 11
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "mailLoginType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1544
    .local p4, "aliMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    .local p5, "agentMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lafh;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1545
    .local v2, "domain":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->an:Ljava/lang/String;

    const-string/jumbo v1, "domain is empty!!!"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V

    .line 1603
    :goto_0
    return-void

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->an:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mailLoginType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const/16 v0, 0x64

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_1

    .line 1554
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V

    goto :goto_0

    .line 1558
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_2

    .line 1559
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1561
    :cond_2
    invoke-static {}, Lro;->a()Lro;

    move-result-object v8

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$16;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$16;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V

    .line 10122
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v3, "listAgentConfigV2"

    invoke-static {v1, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10123
    new-instance v1, Lro$21;

    invoke-direct {v1, v8, v0}, Lro$21;-><init>(Lro;Lcma;)V

    .line 10140
    iget-object v0, v8, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v0, v2, v9, v10, v1}, Lcom/alibaba/alimei/idl/service/CMailIService;->listAgentConfigV2(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method private a(ZZZ)V
    .locals 10
    .param p1, "contactAdmin"    # Z
    .param p2, "isAli"    # Z
    .param p3, "showUnEditableMail"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1125
    if-nez p3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1127
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1195
    :goto_0
    return-void

    .line 1131
    :cond_1
    iget v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    if-eqz p2, :cond_3

    .line 1133
    :cond_2
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1137
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v1

    .line 1138
    .local v1, "isAlibabaUser":Z
    iget-boolean v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ak:Z

    if-nez v5, :cond_4

    if-nez v1, :cond_4

    .line 1139
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->O:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->O:Landroid/widget/TextView;

    new-instance v6, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$8;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$8;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    :goto_1
    if-eqz p1, :cond_5

    .line 1154
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    sget v6, Laxo$i;->dt_cmail_login_modify_tip:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1149
    :cond_4
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1150
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->O:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1156
    :cond_5
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$9;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$c;->ui_common_theme_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v0, p0, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$9;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;I)V

    .line 1171
    .local v0, "clickableSpan":Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$a;
    iget v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 1172
    sget v5, Laxo$i;->dt_cmail_login_bind_tip_action_title_qq:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1173
    .local v2, "link":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    sget v6, Laxo$i;->dt_cmail_login_tips_tecentEnt:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    :goto_2
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->p:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1179
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->p:Ljava/lang/String;

    .line 1184
    .local v4, "tips":Ljava/lang/String;
    :goto_3
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1185
    .local v3, "textContent":Landroid/text/SpannableStringBuilder;
    iget v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 1186
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1187
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v0, v8, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1192
    :goto_4
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    .line 1175
    .end local v2    # "link":Ljava/lang/String;
    .end local v3    # "textContent":Landroid/text/SpannableStringBuilder;
    .end local v4    # "tips":Ljava/lang/String;
    :cond_6
    sget v5, Laxo$i;->dt_cmail_login_bind_tip_action_title:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "link":Ljava/lang/String;
    goto :goto_2

    .line 1181
    :cond_7
    sget v5, Laxo$i;->dt_cmail_login_tips_common:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "tips":Ljava/lang/String;
    goto :goto_3

    .line 1189
    .restart local v3    # "textContent":Landroid/text/SpannableStringBuilder;
    :cond_8
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1190
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v0, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ae:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    return-object v0
.end method

.method private b(I)V
    .locals 5
    .param p1, "loginStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2303
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->q:I

    if-ne v0, p1, :cond_0

    .line 11346
    :goto_0
    return-void

    .line 2306
    :cond_0
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->q:I

    .line 11311
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->q:I

    packed-switch v0, :pswitch_data_0

    .line 11348
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 11349
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    sget v1, Laxo$i;->dt_mail_agent_login:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11351
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 11353
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11354
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    sget v1, Laxo$f;->pass_title_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11356
    :cond_2
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(I)V

    goto :goto_0

    .line 11313
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(I)V

    .line 11314
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 11316
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    sget v1, Laxo$i;->dt_mail_authorize_code_login_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 11318
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 11319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    sget v1, Laxo$f;->web_key_login_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->R:Landroid/widget/TextView;

    .line 11320
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->R:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_authorize_code_manual_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11321
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11322
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    sget v1, Laxo$f;->pass_title_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11324
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->h()V

    goto :goto_0

    .line 11327
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(I)V

    .line 11328
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 11330
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    sget v1, Laxo$i;->dt_mail_agent_login:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 11332
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 11333
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    sget v1, Laxo$f;->web_key_login_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11334
    sget v1, Laxo$i;->dt_mail_authorize_code_login_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11335
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11336
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    sget v1, Laxo$f;->pass_title_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11338
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->h()V

    goto/16 :goto_0

    .line 11341
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11342
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11343
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    sget v1, Laxo$i;->dt_cmail_next_action:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 11344
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ao:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11345
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 11311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Labf;)V
    .locals 0
    .param p1, "model"    # Labf;

    .prologue
    .line 821
    if-nez p1, :cond_0

    .line 825
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Labf;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcma;
    .param p5, "x5"    # Lcma;

    .prologue
    .line 121
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 121
    .line 21345
    if-nez p1, :cond_0

    move v3, v2

    .line 21346
    :goto_0
    if-eqz v3, :cond_4

    .line 21349
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ad:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 21350
    new-array v0, v3, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ad:[Ljava/lang/CharSequence;

    move v1, v2

    .line 21352
    :goto_1
    if-ge v1, v3, :cond_1

    .line 21353
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21354
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ad:[Ljava/lang/CharSequence;

    aput-object v0, v4, v1

    .line 21352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 21345
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 21357
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21358
    sget v1, Laxo$i;->mail_oauth_user_mail_address:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21360
    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ae:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ae:I

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ad:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 21361
    :cond_2
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ae:I

    .line 21363
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ad:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ae:I

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21378
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 121
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Z)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    .line 26500
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 26501
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26503
    if-eqz p1, :cond_0

    sget-object v4, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    .line 26505
    :goto_0
    iget v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v3, 0x1

    .line 26506
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->i()Lcma;

    move-result-object v5

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->j()Lcma;

    move-result-object v6

    .line 26505
    invoke-static/range {v0 .. v6}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;IZLcom/alibaba/alimei/mail/account/AgentServerSSLLevel;Lcma;Lcma;)V

    .line 121
    return-void

    .line 26503
    :cond_0
    sget-object v4, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->NON_SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "mailLoginType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p4, "aliMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    .local p5, "agentMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .line 1615
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ab:Lrz;

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ab:Lrz;

    .line 11041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lrz;->a:J

    .line 1620
    invoke-static {p1}, Lacn;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1621
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1622
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "account_name"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const-string/jumbo v0, "/page/mail_oauth_login.html"

    invoke-virtual {p0, v0, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1628
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_1
    move-object v1, p2

    .line 1629
    .local v1, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1630
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->q:I

    if-eq v0, v3, :cond_3

    .line 1631
    :cond_2
    sget v0, Laxo$i;->dt_mail_login_null_not_permitted:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1636
    :cond_3
    invoke-static {p1}, Lafh;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1637
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->an:Ljava/lang/String;

    invoke-static {v0, p1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->an:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "length:"

    aput-object v5, v2, v4

    .line 1639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1638
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    sget v0, Laxo$i;->dt_mail_scs_invalid_address:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1644
    :cond_4
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->q:I

    if-ne v0, v3, :cond_5

    .line 1645
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    invoke-direct {v7, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1646
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "account_name"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    const/16 v0, 0x4bc

    invoke-virtual {p0, v7, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1652
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_6

    .line 1653
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Laxo$i;->dt_mail_please_wait:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 1656
    :cond_6
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b(Ljava/lang/String;)V

    .line 1658
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aa:Ljava/lang/String;

    if-nez v0, :cond_7

    move-object v0, p1

    move v2, p3

    move-object v4, p4

    move-object v5, p5

    .line 1659
    invoke-static/range {v0 .. v5}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;IZLcma;Lcma;)V

    goto/16 :goto_0

    .line 1662
    :cond_7
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    if-nez v0, :cond_8

    const/4 v8, 0x0

    .line 11246
    .local v8, "verifyCode":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 1663
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aa:Ljava/lang/String;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1664
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$17;

    invoke-direct {v4, p0, p1, v1, p4}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$17;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    const-class v5, Lxv;

    .line 1709
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    .line 1665
    invoke-interface {v0, v4, v5, v9}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 1663
    invoke-interface {v2, v3, v8, v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->verifyImageCheckCode(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto/16 :goto_0

    .line 1662
    .end local v8    # "verifyCode":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    return-object v0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 829
    .local p1, "distributedMails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v3, "mails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lafh;->b()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "bindEmail":Ljava/lang/String;
    const/4 v0, 0x0

    .line 833
    .local v0, "addBindEmail":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 834
    const/4 v0, 0x1

    .line 837
    :cond_0
    if-eqz p1, :cond_2

    .line 838
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 839
    .local v2, "email":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 840
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 843
    const/4 v0, 0x0

    goto :goto_0

    .line 847
    .end local v2    # "email":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 848
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labf;

    .line 849
    .local v4, "model":Labf;
    if-eqz v4, :cond_3

    iget-object v6, v4, Labf;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 850
    iget-object v6, v4, Labf;->a:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v6, v4, Labf;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 853
    const/4 v0, 0x0

    goto :goto_1

    .line 859
    .end local v4    # "model":Labf;
    :cond_4
    if-eqz v0, :cond_5

    .line 860
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    :cond_5
    return-object v3
.end method

.method private c(I)V
    .locals 2
    .param p1, "visible"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2363
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    sget v1, Laxo$f;->view_login_pass_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2364
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    sget v1, Laxo$f;->passwordLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2366
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 121
    .line 23585
    if-eqz p1, :cond_2

    .line 23586
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 23621
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 23623
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->h()V

    .line 121
    return-void

    .line 23590
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    if-nez v0, :cond_0

    .line 23591
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->y:Landroid/view/ViewStub;

    sget v1, Laxo$f;->account_verify_code_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 23592
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->y:Landroid/view/ViewStub;

    sget v1, Laxo$g;->activity_mail_login_verify_code:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 23593
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->y:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    .line 23594
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    sget v1, Laxo$f;->account_verify_code:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 23596
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 23597
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    sget v1, Laxo$f;->account_verify_code_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->A:Landroid/widget/ImageView;

    .line 23599
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    sget v1, Laxo$f;->account_verify_code_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->B:Landroid/view/View;

    .line 23600
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 23601
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$34;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$34;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23608
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->A:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$35;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$35;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23614
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->B:Landroid/view/View;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2
    .param p1, "isClearListener"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    if-eqz p1, :cond_3

    .line 653
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 655
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 658
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 659
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 660
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 665
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 668
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 676
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 686
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setTextChangedListener(Landroid/text/TextWatcher;)V

    .line 687
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$5;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1450
    return-void
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ak:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    .line 18628
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 18630
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18631
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18634
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 18859
    const-string/jumbo v0, "mail_mailbind_orglogin_login_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 18640
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->at:Z

    if-eqz v0, :cond_5

    .line 18641
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->i()Lcma;

    move-result-object v2

    .line 19454
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ab:Lrz;

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19457
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ab:Lrz;

    .line 20041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lrz;->a:J

    .line 19460
    invoke-static {v1}, Lafh;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 19461
    sget v0, Laxo$i;->dt_mail_scs_invalid_address:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 18641
    :cond_1
    :goto_1
    return-void

    .line 18637
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->j:Ljava/util/Map;

    .line 18951
    const-string/jumbo v2, "mail_login_login_mailbox_click"

    invoke-static {v2, v0}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 19466
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_4

    .line 19467
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v3, Laxo$i;->dt_mail_please_wait:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 19470
    :cond_4
    invoke-static {}, Lro;->a()Lro;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    .line 19471
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;

    invoke-direct {v5, p0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Lcma;)V

    const-class v2, Lcma;

    .line 19492
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 19471
    invoke-interface {v0, v5, v2, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 19470
    invoke-virtual {v3, v4, v1, v0}, Lro;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    goto :goto_1

    .line 18643
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18644
    iget v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->i()Lcma;

    move-result-object v4

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->j()Lcma;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V

    goto :goto_1
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    .line 20552
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ar:Z

    if-eqz v0, :cond_0

    .line 20553
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 20555
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aq:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxo$i;->icon_closeeye:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 20557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ar:Z

    :goto_0
    return-void

    .line 20559
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 20561
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aq:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxo$i;->icon_eye:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 20562
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 20564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ar:Z

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 526
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 8538
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 8539
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ap:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8540
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ap:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ak:Z

    if-nez v0, :cond_3

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewVisible(I)V

    .line 534
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 526
    goto :goto_0

    .line 8542
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ap:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8543
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    goto :goto_1

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewVisible(I)V

    goto :goto_2
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    return-object v0
.end method

.method private h()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1436
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->b()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lacn;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 1437
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->b()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 1438
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->b()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->q:I

    if-ne v3, v1, :cond_4

    :cond_2
    move v0, v1

    .line 1440
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aa:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    .line 1441
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 1443
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->b()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 1445
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->d(Z)V

    .line 1446
    return-void

    .end local v0    # "valid":Z
    :cond_4
    move v0, v2

    .line 1438
    goto :goto_0

    .restart local v0    # "valid":Z
    :cond_5
    move v0, v2

    .line 1443
    goto :goto_1
.end method

.method private i()Lcma;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2151
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$28;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    const-class v2, Lcma;

    .line 2206
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 2151
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    .line 20715
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aa:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 20716
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aa:Ljava/lang/String;

    const/16 v3, 0x64

    const/16 v4, 0x28

    const-string/jumbo v0, "EVENTBUTLER"

    .line 20718
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$18;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$18;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    const-class v6, Lxv;

    .line 20737
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 20719
    invoke-interface {v0, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 20716
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getImageCheckCode(Ljava/lang/String;IILxv;)V

    .line 121
    :cond_0
    return-void
.end method

.method private j()Lcma;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2214
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    const-class v2, Lcma;

    .line 2243
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 2214
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    .line 22307
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ab:Lrz;

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22311
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ab:Lrz;

    .line 23041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 22313
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 22314
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/new_mail_account.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ad:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    const/4 v2, 0x1

    .line 121
    .line 23330
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23332
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setEnabled(Z)V

    .line 23333
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setEnabled(Z)V

    .line 23339
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_agent_bind_titile:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Labf;)V

    .line 121
    return-void
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->af:Z

    return v0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->N:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ao:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->h()V

    return-void
.end method

.method static synthetic t(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->an:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->A:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    .line 24112
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 24113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aq:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->text_color_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 24115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ar:Z

    .line 24116
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 24118
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 24119
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 121
    return-void
.end method

.method static synthetic x(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcma;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->i()Lcma;

    move-result-object v0

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Lcma;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->j()Lcma;

    move-result-object v0

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->am:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x6

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 370
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->as:Landroid/view/View;

    .line 371
    sget v1, Laxo$f;->welcome_title_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    .line 372
    sget v1, Laxo$f;->welcome_tips_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F:Landroid/widget/TextView;

    .line 373
    sget v1, Laxo$f;->email_title_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->M:Landroid/widget/TextView;

    .line 374
    sget v1, Laxo$f;->pass_title_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->N:Landroid/widget/TextView;

    .line 375
    sget v1, Laxo$f;->account_email:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 376
    sget v1, Laxo$f;->account_password:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 377
    sget v1, Laxo$f;->passwordLayout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->v:Landroid/view/View;

    .line 378
    sget v1, Laxo$f;->next_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    .line 379
    sget v1, Laxo$f;->view_account_pass_divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ao:Landroid/view/View;

    .line 380
    sget v1, Laxo$f;->tv_default_domain:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ap:Landroid/widget/TextView;

    .line 381
    sget v1, Laxo$f;->view_login_pass_divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->P:Landroid/view/View;

    .line 382
    sget v1, Laxo$f;->iftv_pass_visible:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aq:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 383
    sget v1, Laxo$f;->add_account_btn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->O:Landroid/widget/TextView;

    .line 384
    sget v1, Laxo$f;->common_email_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Q:Landroid/widget/TextView;

    .line 385
    sget v1, Laxo$f;->web_key_login_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->R:Landroid/widget/TextView;

    .line 386
    sget v1, Laxo$f;->other_emails_group:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->S:Landroid/view/ViewGroup;

    .line 387
    sget v1, Laxo$f;->mail_brand_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    .line 391
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 392
    sget v1, Laxo$f;->account_verify_code_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->y:Landroid/view/ViewStub;

    .line 393
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 394
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcnd;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    sget v4, Laxo$f;->root_view:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcnd;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->D:Lcnd;

    .line 396
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 399
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_uninput_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 400
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 401
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setOpsViewVisible(I)V

    .line 402
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewVisible(I)V

    .line 405
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getClearView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v6, v6, v2, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 407
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 409
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_uninput_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 411
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 412
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewVisible(I)V

    .line 415
    sget v1, Laxo$f;->mail_login_tips:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->C:Landroid/widget/TextView;

    .line 8200
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->h:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 8203
    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 8204
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    sget v2, Laxo$i;->dt_mail_login_pwd_placeholder_qq:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 8209
    :goto_0
    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    if-ne v1, v9, :cond_3

    .line 8210
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->al:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    if-nez v1, :cond_1

    .line 8211
    new-instance v1, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->al:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    .line 8213
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    .line 8215
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v2

    .line 8216
    and-int/lit16 v2, v2, 0xb0

    .line 8218
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 8219
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 8220
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 8221
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lss;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 8222
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->M:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    .line 8224
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 8226
    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$10;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Landroid/view/View;)V

    .line 8271
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8274
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->al:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 421
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 423
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$12;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$12;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 437
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$22;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$22;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 451
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$31;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$31;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 463
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aq:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$32;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$32;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->R:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$33;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$33;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->g(Ljava/lang/String;)V

    .line 483
    return-void

    .line 8206
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    sget v2, Laxo$i;->dt_mail_pass_hint:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 8276
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8278
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "distributionMails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 576
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->d:Ljava/util/List;

    .line 8698
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ag:Z

    if-eqz v0, :cond_2

    .line 8699
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    .line 8701
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    if-nez v0, :cond_0

    .line 8702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    .line 8705
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8707
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 8708
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8711
    if-lez v1, :cond_4

    .line 8855
    const-string/jumbo v0, "mail_mailbind_normallogin_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 8714
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8715
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    .line 8716
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8717
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8718
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8722
    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->af:Z

    .line 8723
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setEnabled(Z)V

    .line 8725
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->g(Ljava/lang/String;)V

    .line 8728
    const/4 v0, 0x2

    if-lt v1, v0, :cond_3

    .line 8729
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    sget v1, Laxo$e;->right_arrow_login_pwd:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setOpsViewImageResource(I)V

    .line 8730
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setOpsViewVisible(I)V

    .line 8731
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 8732
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 8733
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 8734
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 8735
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 8736
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setClickable(Z)V

    .line 8737
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$6;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Landroid/widget/EditText;)V

    .line 8754
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8755
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getOpsView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8760
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_2
    :goto_1
    return-void

    .line 8757
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 8758
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 9855
    :cond_4
    const-string/jumbo v0, "mail_mailbind_normallogin_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 8765
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setEnabled(Z)V

    .line 8767
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->g(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->d()V

    .line 318
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->D:Lcnd;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->D:Lcnd;

    .line 6038
    iget-object v1, v0, Lcnd;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6039
    iget-object v1, v0, Lcnd;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 320
    :cond_0
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->D:Lcnd;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 330
    :cond_2
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->aj:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 331
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ai:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 337
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ab:Lrz;

    .line 338
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ac:Ljava/util/List;

    .line 339
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Z)V

    .line 340
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 341
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 342
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->w:Landroid/widget/Button;

    .line 343
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    .line 344
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->y:Landroid/view/ViewStub;

    .line 345
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z:Landroid/view/View;

    .line 346
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->A:Landroid/widget/ImageView;

    .line 347
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F:Landroid/widget/TextView;

    .line 348
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->M:Landroid/widget/TextView;

    .line 349
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->N:Landroid/widget/TextView;

    .line 350
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->O:Landroid/widget/TextView;

    .line 351
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->S:Landroid/view/ViewGroup;

    .line 352
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Q:Landroid/widget/TextView;

    .line 353
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->R:Landroid/widget/TextView;

    .line 354
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->T:Landroid/view/View;

    .line 355
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Y:Landroid/view/View;

    .line 356
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->V:Landroid/view/View;

    .line 357
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->W:Landroid/view/View;

    .line 358
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->X:Landroid/view/View;

    .line 359
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->U:Landroid/view/View;

    .line 361
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 365
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 366
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Z)V

    .line 6872
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->J:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 6873
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->J:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 6876
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->n:Z

    if-nez v0, :cond_2

    .line 6878
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setEnabled(Z)V

    .line 6879
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setEnabled(Z)V

    .line 6880
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6881
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->d(Z)V

    .line 7003
    :cond_1
    :goto_0
    return-void

    .line 6885
    :cond_2
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ag:Z

    .line 6887
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->S:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6888
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7010
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 7011
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_org_mail_bind_page_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7012
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6894
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 6896
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->af:Z

    .line 6897
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setEnabled(Z)V

    .line 6898
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ak:Z

    .line 6901
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6903
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labf;

    .line 6904
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 6905
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v5, v2

    .line 6906
    :goto_2
    if-ge v5, v6, :cond_13

    .line 6907
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labf;

    .line 6908
    if-eqz v1, :cond_a

    .line 6912
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c:Ljava/lang/String;

    iget-object v8, v1, Labf;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 6915
    iput v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ae:I

    move-object v0, v1

    move v1, v4

    .line 6920
    :goto_3
    if-nez v1, :cond_3

    .line 6921
    iput v6, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ae:I

    move-object v0, v3

    :cond_3
    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 6930
    :goto_4
    if-eqz v1, :cond_c

    .line 6931
    iget-object v5, v1, Labf;->a:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->g(Ljava/lang/String;)V

    .line 6932
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Labf;)V

    .line 6939
    :goto_5
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    .line 6940
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6942
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 6944
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v9, :cond_4

    .line 6945
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    sget v6, Laxo$e;->right_arrow_login_pwd:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setOpsViewImageResource(I)V

    .line 6946
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setOpsViewVisible(I)V

    .line 6947
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 6948
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 6949
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 6950
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 6951
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setClickable(Z)V

    .line 6952
    new-instance v5, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$7;

    invoke-direct {v5, p0, v1, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$7;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Landroid/widget/EditText;Ljava/util/List;)V

    .line 6967
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6968
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getOpsView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6986
    :cond_4
    :goto_6
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ak:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 6987
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 6988
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-static {v1, v3}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 6996
    :goto_7
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->d:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    .line 6997
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_6
    move v1, v4

    .line 6998
    :goto_8
    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 6999
    invoke-direct {p0, v4, v2, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(ZZZ)V

    goto/16 :goto_0

    .line 7014
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7016
    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    packed-switch v1, :pswitch_data_0

    .line 7110
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_mail_agent_bind_titile:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7111
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7112
    const-string/jumbo v1, "type"

    const-string/jumbo v5, "other"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7113
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;)V

    .line 7114
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_other:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Ljava/lang/String;)V

    .line 7115
    sget v0, Laxo$i;->dt_cmail_login_tips_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->f(Ljava/lang/String;)V

    .line 7116
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;)V

    .line 7117
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7018
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    new-array v5, v9, [Ljava/lang/String;

    sget v6, Laxo$i;->dt_mail_login_page_title_login_prefix:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    sget v6, Laxo$i;->dt_mail_supplier_alimail:I

    .line 7019
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 7018
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7020
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7021
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$e;->cmail_mail_alibaba_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7022
    const-string/jumbo v1, "type"

    const-string/jumbo v5, "alimail"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7023
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Ljava/lang/String;)V

    .line 7024
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;)V

    .line 7025
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->f(Ljava/lang/String;)V

    .line 7026
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7029
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_mail_agent_login_title:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "QQ"

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7030
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7031
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$e;->cmail_mail_qq_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7032
    const-string/jumbo v1, "type"

    const-string/jumbo v5, "qqmail"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7033
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP_qq"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;)V

    .line 7034
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_qq:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Ljava/lang/String;)V

    .line 7035
    sget v0, Laxo$i;->dt_cmail_login_tips_tecent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->f(Ljava/lang/String;)V

    .line 7036
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_prefix:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;)V

    .line 7037
    const-string/jumbo v0, "@qq.com"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Ljava/lang/String;)V

    .line 7038
    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(I)V

    goto/16 :goto_1

    .line 7041
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    new-array v5, v9, [Ljava/lang/String;

    sget v6, Laxo$i;->dt_mail_login_page_title_login_prefix:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    sget v6, Laxo$i;->dt_mail_supplier_tencentEnt:I

    .line 7042
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 7041
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7043
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7044
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$e;->cmail_mail_qq_en_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7045
    const-string/jumbo v1, "type"

    const-string/jumbo v5, "qqorgmail"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7046
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/tencent_mail_faq"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;)V

    .line 7047
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_tecentqq:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Ljava/lang/String;)V

    .line 7048
    sget v0, Laxo$i;->dt_cmail_login_tips_tecentEnt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->f(Ljava/lang/String;)V

    .line 7049
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;)V

    .line 7050
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7053
    :pswitch_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_mail_agent_login_title:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "163"

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7054
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7055
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$e;->cmail_mail_163_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7056
    const-string/jumbo v1, "type"

    const-string/jumbo v5, "163mail"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7057
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP_163"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;)V

    .line 7058
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_163:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Ljava/lang/String;)V

    .line 7059
    sget v0, Laxo$i;->dt_cmail_login_tips_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->f(Ljava/lang/String;)V

    .line 7060
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_prefix:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;)V

    .line 7061
    const-string/jumbo v0, "@163.com"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7064
    :pswitch_5
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    new-array v5, v9, [Ljava/lang/String;

    sget v6, Laxo$i;->dt_mail_login_page_title_login_prefix:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    sget v6, Laxo$i;->dt_mail_supplier_163ent:I

    .line 7065
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 7064
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7066
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7067
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$e;->cmail_mail_163_en_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7068
    const-string/jumbo v1, "type"

    const-string/jumbo v5, "163orgmail"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7069
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Ljava/lang/String;)V

    .line 7070
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;)V

    .line 7071
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7074
    :pswitch_6
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_mail_agent_login_title:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "126"

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7075
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7076
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$e;->cmail_mail_126_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7077
    const-string/jumbo v1, "type"

    const-string/jumbo v5, "126mail"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7078
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP_163"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;)V

    .line 7079
    sget v0, Laxo$i;->dt_cmail_login_bind_alert_message_126:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c(Ljava/lang/String;)V

    .line 7080
    sget v0, Laxo$i;->dt_cmail_login_tips_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->f(Ljava/lang/String;)V

    .line 7081
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_prefix:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;)V

    .line 7082
    const-string/jumbo v0, "@126.com"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7085
    :pswitch_7
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_mail_agent_login_title:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Gmail"

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7086
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7087
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$e;->cmail_gmail:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7088
    const-string/jumbo v1, "type"

    const-string/jumbo v5, "Gmail"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7089
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;)V

    .line 7091
    sget v0, Laxo$i;->dt_cmail_login_tips_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->f(Ljava/lang/String;)V

    .line 7092
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_prefix:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;)V

    .line 7093
    const-string/jumbo v0, "@gmail.com"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Ljava/lang/String;)V

    .line 7094
    const-string/jumbo v0, "@gmail.com"

    invoke-static {v0}, Lacn;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    :goto_9
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(I)V

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_9

    .line 7098
    :pswitch_8
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_mail_agent_login_title:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Outlook"

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7099
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7100
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->Z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$e;->cmail_outlook:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7101
    const-string/jumbo v1, "type"

    const-string/jumbo v5, "Outlook"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7102
    const-string/jumbo v0, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Ljava/lang/String;)V

    .line 7104
    sget v0, Laxo$i;->dt_cmail_login_tips_common:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->f(Ljava/lang/String;)V

    .line 7105
    sget v0, Laxo$i;->dt_mail_login_account_placeholder_prefix:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;)V

    .line 7106
    const-string/jumbo v0, "@outlook.com"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e(Ljava/lang/String;)V

    .line 7107
    const-string/jumbo v0, "@outlook.com"

    invoke-static {v0}, Lacn;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    :goto_a
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(I)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_a

    .line 6906
    :cond_a
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_2

    :cond_b
    move-object v1, v0

    move v0, v4

    .line 6926
    goto/16 :goto_4

    .line 6934
    :cond_c
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->g(Ljava/lang/String;)V

    .line 6935
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->E:Landroid/widget/TextView;

    sget v5, Laxo$i;->dt_mail_agent_bind_titile:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6936
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Labf;)V

    goto/16 :goto_5

    .line 6971
    :cond_d
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->af:Z

    .line 6972
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ak:Z

    .line 6974
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6976
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setEnabled(Z)V

    .line 6977
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->g(Ljava/lang/String;)V

    .line 6978
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setEnabled(Z)V

    .line 6979
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->setClearViewVisible(I)V

    move v0, v2

    goto/16 :goto_6

    .line 6989
    :cond_e
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->ak:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 6990
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getEditText()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 6991
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-static {v1, v3}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_7

    .line 6993
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-static {v1, v3}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_7

    :cond_10
    move v1, v2

    .line 6997
    goto/16 :goto_8

    .line 7000
    :cond_11
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 7001
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->c:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 7284
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 7285
    if-eqz v0, :cond_1

    .line 7286
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$11;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$11;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/idl/service/CMailIService;->listAgentConfig(Ljava/lang/String;Ljava/lang/Long;Liyv;)V

    goto/16 :goto_0

    .line 7004
    :cond_12
    invoke-direct {p0, v2, v2, v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(ZZZ)V

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto/16 :goto_3

    .line 7016
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1511
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1513
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    if-nez p3, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    const/16 v0, 0x4bc

    if-ne p1, v0, :cond_0

    .line 1518
    const-string/jumbo v0, "mail_qq_mail_auth_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1519
    .local v2, "authCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1520
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->q:I

    .line 1522
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1524
    .local v1, "accountName":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1525
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->o:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1528
    :cond_2
    iget v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->e:I

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->i()Lcma;

    move-result-object v4

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->j()Lcma;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Ljava/lang/String;Ljava/lang/String;ILcma;Lcma;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->onDestroy()V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->al:Lcom/alibaba/alimei/mail/adapter/MailAccountInputAdapter;

    .line 572
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailLoginBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 312
    sget v0, Laxo$g;->alm_cmail_fragment_login_n:I

    return v0
.end method
