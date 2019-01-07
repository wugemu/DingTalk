.class final Lcom/alibaba/android/search/model/ExternalContactModel$1;
.super Ljava/lang/Object;
.source "ExternalContactModel.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/ExternalContactModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/model/ExternalContactModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/ExternalContactModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/ExternalContactModel;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/android/search/model/ExternalContactModel$1;->a:Lcom/alibaba/android/search/model/ExternalContactModel;

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
    .line 186
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/alibaba/android/search/model/ExternalContactModel$1;->a:Lcom/alibaba/android/search/model/ExternalContactModel;

    iget-object v1, v1, Lcom/alibaba/android/search/model/ExternalContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    const-string/jumbo v0, "staff_id"

    iget-object v1, p0, Lcom/alibaba/android/search/model/ExternalContactModel$1;->a:Lcom/alibaba/android/search/model/ExternalContactModel;

    iget-object v1, v1, Lcom/alibaba/android/search/model/ExternalContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/search/model/ExternalContactModel$1;->a:Lcom/alibaba/android/search/model/ExternalContactModel;

    iget-object v1, v1, Lcom/alibaba/android/search/model/ExternalContactModel;->mOrgNodeItemObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 189
    const-string/jumbo v0, "fr_source"

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ORG_CONTACT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    return-object p1
.end method
