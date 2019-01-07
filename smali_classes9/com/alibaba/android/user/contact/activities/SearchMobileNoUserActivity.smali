.class public Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SearchMobileNoUserActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lezg$j;->search_no_invitation_user_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->b:Ljava/lang/String;

    .line 34
    sget v0, Lezg$h;->search_no_userprofile_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->c:Landroid/widget/TextView;

    .line 35
    sget v0, Lezg$h;->search_no_userprofile_mobilephone:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->d:Landroid/widget/TextView;

    .line 36
    sget v0, Lezg$h;->search_mobile_no_userprofile_result_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->e:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lezg$l;->phone_num:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lezg$l;->not_register_yet:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->home_menu_add_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SearchMobileNoUserActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$g;->actionbar_icon:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 46
    return-void
.end method
