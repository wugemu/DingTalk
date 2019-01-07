.class public Lcom/alibaba/android/user/login/NotInvitationsActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "NotInvitationsActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v1, Lezg$j;->activity_not_invitations:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/NotInvitationsActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/NotInvitationsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, "mIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 29
    const-string/jumbo v1, "areaCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/NotInvitationsActivity;->a:Ljava/lang/String;

    .line 30
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/NotInvitationsActivity;->c:Ljava/lang/String;

    .line 33
    :cond_0
    sget v1, Lezg$h;->iv_not_invitation_txt_phone:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/NotInvitationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/login/NotInvitationsActivity;->b:Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/user/login/NotInvitationsActivity;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lezg$l;->not_invitation_text_moblie:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/login/NotInvitationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/login/NotInvitationsActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/login/NotInvitationsActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lezg$l;->not_invitation_text_tips:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/login/NotInvitationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget v1, Lezg$h;->iv_not_invitation_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/NotInvitationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/user/login/NotInvitationsActivity;->d:Landroid/widget/ImageView;

    .line 38
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/alibaba/android/user/login/NotInvitationsActivity;->d:Landroid/widget/ImageView;

    sget v2, Lezg$g;->not_invitation_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/login/NotInvitationsActivity;->d:Landroid/widget/ImageView;

    sget v2, Lezg$g;->not_invitation_icon_en:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
