.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$28;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 2682
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$28;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2685
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$28;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v2, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$28;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$28;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->x(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Z)V

    .line 2686
    return-void

    .line 2685
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
