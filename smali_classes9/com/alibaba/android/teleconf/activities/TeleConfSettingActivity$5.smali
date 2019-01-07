.class final Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$5;
.super Ljava/lang/Object;
.source "TeleConfSettingActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$5;->a:Ljava/util/List;

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
    const/4 v3, 0x1

    .line 637
    const-string/jumbo v0, "count_limit"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v1, "activity_identify_conf_setting"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    sget v2, Leuj$l;->conf_txt_user_favorites:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string/jumbo v0, "count_limit_tips"

    sget v1, Leuj$l;->conf_txt_favorites_choose_limit:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    const-string/jumbo v0, "conf_next_title"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    sget v2, Leuj$l;->conf_txt_select_favo_member_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string/jumbo v0, "conf_header_title"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    sget v2, Leuj$l;->conf_txt_add_favorites_user_text:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string/jumbo v0, "filter_myself"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    const-string/jumbo v0, "can_choose_current_user"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    const-string/jumbo v1, "seleced_members"

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$5;->a:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 646
    return-object p1
.end method
