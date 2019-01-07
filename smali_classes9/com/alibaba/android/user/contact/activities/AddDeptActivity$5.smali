.class final Lcom/alibaba/android/user/contact/activities/AddDeptActivity$5;
.super Ljava/lang/Object;
.source "AddDeptActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$5;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

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
    .line 252
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$5;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .line 253
    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 252
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 254
    const-string/jumbo v0, "choose_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$5;->a:Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    sget v2, Lezg$l;->select_parent_dept:I

    .line 257
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    return-object p1
.end method
