.class final Lfid$1;
.super Ljava/lang/Object;
.source "OrgNavigatorInteractorImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfid;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

.field final synthetic b:Lfid;


# direct methods
.method constructor <init>(Lfid;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V
    .locals 0
    .param p1, "this$0"    # Lfid;

    .prologue
    .line 63
    iput-object p1, p0, Lfid$1;->b:Lfid;

    iput-object p2, p0, Lfid$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 66
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfid$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lfid$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 68
    const-string/jumbo v0, "staff_id"

    iget-object v1, p0, Lfid$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string/jumbo v0, "fr_source"

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ORG_CONTACT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    .line 70
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v1

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    return-object p1
.end method
