.class public final Lfhb;
.super Lfgx;
.source "ContactItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfgx",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lfgx;-><init>(Landroid/view/View;)V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfhb;->e:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lezg$j;->fragment_contact_home_contact_layout:I

    return v0
.end method

.method static synthetic a(Lfhb;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfhb;

    .prologue
    .line 32
    iget-object v0, p0, Lfhb;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lfhb;Lcom/alibaba/android/user/contact/homepage/CommonContactItem;Z)V
    .locals 4
    .param p0, "x0"    # Lfhb;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/homepage/CommonContactItem;
    .param p2, "x2"    # Z

    .prologue
    const/4 v3, 0x1

    .line 32
    .line 2109
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2113
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfhb;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2114
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2115
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2116
    sget v1, Lezg$c;->common_contact_long_click:I

    new-instance v2, Lfhb$3;

    invoke-direct {v2, p0, p1, p2}, Lfhb$3;-><init>(Lfhb;Lcom/alibaba/android/user/contact/homepage/CommonContactItem;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2137
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lfhb;Lcom/alibaba/android/user/contact/homepage/CommonContactItem;Z)V
    .locals 2
    .param p0, "x0"    # Lfhb;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/homepage/CommonContactItem;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    .line 2156
    const-string/jumbo v0, "ContactFragmentAdapter"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfhb$4;

    invoke-direct {v1, p0, p1, p2}, Lfhb$4;-><init>(Lfhb;Lcom/alibaba/android/user/contact/homepage/CommonContactItem;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    sget v0, Lezg$h;->cell_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lfhb;->c:Landroid/widget/RelativeLayout;

    .line 55
    sget v0, Lezg$h;->cell_left_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfhb;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 56
    sget v0, Lezg$h;->cell_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfhb;->b:Landroid/widget/TextView;

    .line 57
    sget v0, Lezg$h;->if_concern_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfhb;->d:Landroid/view/View;

    .line 59
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    .line 1063
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getCommonContactModel()Lfhm;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_0

    .line 2015
    iget-object v1, v0, Lfhm;->a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    .line 1071
    if-eqz v1, :cond_0

    .line 1075
    iget-object v2, p0, Lfhb;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v2, p0, Lfhb;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v1, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->mNick:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    iget-boolean v2, v0, Lfhm;->b:Z

    .line 1078
    if-eqz v2, :cond_1

    .line 1080
    iget-object v2, p0, Lfhb;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    :goto_0
    iget-object v2, p0, Lfhb;->c:Landroid/widget/RelativeLayout;

    new-instance v3, Lfhb$1;

    invoke-direct {v3, p0, v1, v0}, Lfhb$1;-><init>(Lfhb;Lcom/alibaba/android/user/contact/homepage/CommonContactItem;Lfhm;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    iget-object v1, p0, Lfhb;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Lfhb$2;

    invoke-direct {v2, p0, v0}, Lfhb$2;-><init>(Lfhb;Lfhm;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 32
    :cond_0
    return-void

    .line 1082
    :cond_1
    iget-object v2, p0, Lfhb;->d:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
