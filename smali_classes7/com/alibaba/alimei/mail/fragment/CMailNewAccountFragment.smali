.class public Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;
.source "CMailNewAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/EditText;

.field b:Z

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->f:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->b:Z

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    .line 1131
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1138
    sget v0, Laxo$i;->loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a(Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->d:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1141
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;Ljava/lang/String;)V

    const-class v3, Lcma;

    .line 1195
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1141
    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1196
    invoke-static {}, Lro;->a()Lro;

    invoke-static {v1, v0}, Lro;->b(Ljava/lang/String;Lcma;)V

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 251
    if-nez p0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 255
    .local v0, "length":I
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    const/16 v2, 0x14

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_0
    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 247
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    throw v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->c()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2
    .param p1, "loadingText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->c()V

    .line 232
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 233
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 235
    return-void
.end method

.method public final m_()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->f:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$6;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$6;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)V

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lgqq;)V

    .line 228
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->I:Landroid/view/View;

    sget v1, Laxo$f;->edit_nick:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->I:Landroid/view/View;

    sget v1, Laxo$f;->textView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->c:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->I:Landroid/view/View;

    sget v1, Laxo$f;->ding_mail_login:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->d:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->c:Landroid/widget/TextView;

    const-string/jumbo v1, "@dingtalk.com"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 55
    sget v0, Laxo$g;->alm_cmail_fragment_mail_new_account:I

    return v0
.end method
