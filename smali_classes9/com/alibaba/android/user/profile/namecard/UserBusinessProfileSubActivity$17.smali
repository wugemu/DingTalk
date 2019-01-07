.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

.field final synthetic e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic f:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;ZLcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;ZLcom/alibaba/android/user/profile/v2/UserInfoItemObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->f:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    iput-boolean p4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->c:Z

    iput-object p5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->d:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iput-object p6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

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
    const/4 v4, 0x1

    .line 1625
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->a:Z

    if-eqz v0, :cond_1

    .line 1626
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->f:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->c:Z

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->f:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->d:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Z)V

    goto :goto_0
.end method
