.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;

    .prologue
    .line 3330
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3333
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->masterUid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3335
    const-string/jumbo v0, "staff_id"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgMasterStaffId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3337
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$42;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3339
    return-object p1
.end method
