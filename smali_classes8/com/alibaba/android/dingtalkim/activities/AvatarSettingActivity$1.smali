.class final Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity$1;
.super Ljava/lang/Object;
.source "AvatarSettingActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 87
    const-string/jumbo v0, "avatar"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;)Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    move-result-object v1

    .line 1082
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a:Ljava/lang/String;

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v0, "use_enterprise_icon"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;)Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    move-result-object v1

    .line 1090
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b:Z

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const-string/jumbo v0, "enterprise_name"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;)Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    move-result-object v1

    .line 1098
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c:Ljava/lang/String;

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string/jumbo v0, "choose_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "choose_enterprise_oid"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    return-object p1
.end method
