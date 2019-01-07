.class final Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$4;
.super Ljava/lang/Object;
.source "EnterpriseOASettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$4;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "to_page"

    const-string/jumbo v2, "to_oa"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v1, "org_id"

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$4;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->e(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 134
    const-string/jumbo v1, "corpid"

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$4;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-static {v2}, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;->f(Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity$4;->a:Lcom/alibaba/android/oa/activity/EnterpriseOASettingsActivity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 136
    return-void
.end method
