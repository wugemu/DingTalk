.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

.field final synthetic e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic f:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;ZLcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;ZLcom/alibaba/android/user/profile/v2/UserInfoItemObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    .prologue
    .line 3203
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->f:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    iput-boolean p4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->c:Z

    iput-object p5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->d:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iput-object p6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3206
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->a:Z

    if-eqz v0, :cond_1

    .line 3207
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->f:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 3211
    :cond_0
    :goto_0
    return-void

    .line 3208
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->c:Z

    if-eqz v0, :cond_0

    .line 3209
    iget-object v5, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->f:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->d:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    iget-object v6, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v7, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$35;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    move v9, v4

    move-object v10, v3

    invoke-static/range {v5 .. v10}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;ZLcom/alibaba/android/user/profile/namecard/UserBusinessProfileActivity$a;)V

    goto :goto_0
.end method
