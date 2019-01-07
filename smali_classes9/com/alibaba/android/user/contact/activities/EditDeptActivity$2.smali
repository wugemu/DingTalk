.class final Lcom/alibaba/android/user/contact/activities/EditDeptActivity$2;
.super Ljava/lang/Object;
.source "EditDeptActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$2;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

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
    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v0, "disableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$2;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->r(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    const-string/jumbo v1, "uncheck_department_list"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 546
    const-string/jumbo v1, "display_enterprise_oid"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$2;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->r(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 547
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$2;->a:Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    sget v3, Lezg$l;->select_parent_dept:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    return-object p1
.end method
