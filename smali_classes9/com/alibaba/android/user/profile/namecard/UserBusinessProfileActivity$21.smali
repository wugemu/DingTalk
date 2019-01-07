.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$21;
.super Ljava/lang/Object;
.source "UserBusinessProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 2436
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$21;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$21;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2439
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$21;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$21;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$21;->a:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$21;->b:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->q(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;ZLcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$a;)V

    .line 2440
    return-void

    .line 2439
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
