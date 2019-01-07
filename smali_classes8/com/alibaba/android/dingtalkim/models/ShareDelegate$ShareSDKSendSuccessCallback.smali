.class public Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareSDKSendSuccessCallback"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x79382f62ecf4aab1L


# instance fields
.field private mMoveHomeTaskToBack:Z

.field private mUseV1Version:Z

.field public shareAppName:Ljava/lang/String;

.field public sharePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "useV1Version"    # Z
    .param p2, "moveHomeTaskToBack"    # Z

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->mUseV1Version:Z

    .line 900
    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->mMoveHomeTaskToBack:Z

    .line 901
    return-void
.end method

.method static synthetic access$2700(Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->mUseV1Version:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->mMoveHomeTaskToBack:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->nav2HomeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private nav2HomeActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 959
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$2;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 966
    return-void
.end method


# virtual methods
.method public doAction(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 904
    if-nez p1, :cond_0

    .line 956
    :goto_0
    return-void

    .line 907
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 908
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lctk$g;->im_dialog_share_success_title_layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 910
    .local v1, "customTitle":Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 911
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 912
    .local v2, "items":[Ljava/lang/String;
    sget v3, Lctk$i;->and_back_third_app:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->shareAppName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 913
    sget v3, Lctk$i;->and_stay_ding:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 914
    new-instance v3, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 955
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
