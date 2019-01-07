.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;

    .prologue
    .line 3041
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;

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
    .line 3044
    const-string/jumbo v0, "activity_identify"

    invoke-static {}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3045
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->N(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3046
    const-string/jumbo v0, "intent_key_label_data_type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3047
    const-string/jumbo v0, "intent_key_is_show_label_customize_guide"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3048
    const-string/jumbo v0, "intent_key_is_show_label_manage"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->N(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->f(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;J)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3049
    const-string/jumbo v1, "intent_key_label_list"

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$35;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3050
    const-string/jumbo v0, "intent_key_is_single_choose"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3051
    return-object p1
.end method
