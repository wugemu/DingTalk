.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$4;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$4;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 588
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$4;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/user/organization_profile.html"

    new-instance v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$4$1;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$4;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 595
    return-void
.end method
