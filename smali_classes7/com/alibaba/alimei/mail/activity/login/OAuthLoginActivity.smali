.class public Lcom/alibaba/alimei/mail/activity/login/OAuthLoginActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "OAuthLoginActivity.java"


# instance fields
.field private a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v1, Laxo$g;->cmail_activity_oauth:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/login/OAuthLoginActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/login/OAuthLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Landroid/content/Intent;)Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/login/OAuthLoginActivity;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    .line 27
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/login/OAuthLoginActivity;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-virtual {v1, p0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/login/OAuthLoginActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 30
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Laxo$f;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/login/OAuthLoginActivity;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 31
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/login/OAuthLoginActivity;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 38
    return-void
.end method
