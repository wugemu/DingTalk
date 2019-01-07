.class public Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;
.super Lcom/alibaba/android/dingtalkbase/BaseQrFragment;
.source "MyQRCodePersonalFragment.java"


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;-><init>()V

    .line 50
    const-class v0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 149
    .local v1, "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, " "

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Z)I

    move-result v0

    .line 150
    .local v0, "share":I
    if-nez v0, :cond_2

    .line 151
    sget v2, Lezg$l;->share_no_apps:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 152
    :cond_2
    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    .line 153
    sget v2, Lezg$l;->share_not_support:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 4
    .param p1, "qrCodeView"    # Landroid/widget/ImageView;
    .param p2, "progressView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 110
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment$1;-><init>(Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;Landroid/widget/ImageView;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method protected final a(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "tvTitle"    # Landroid/widget/TextView;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    sget v0, Lezg$l;->dt_contact_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
    .locals 2
    .param p1, "avatarImageViewIcon"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "tvName"    # Landroid/widget/TextView;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final c(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "tvDes"    # Landroid/widget/TextView;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/MyQRCodePersonalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 61
    :cond_0
    return-void
.end method
