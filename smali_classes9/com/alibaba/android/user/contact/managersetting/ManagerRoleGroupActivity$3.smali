.class final Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$3;
.super Ljava/lang/Object;
.source "ManagerRoleGroupActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$3;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

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
    .line 161
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$3;->a:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->b(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    return-object p1
.end method
