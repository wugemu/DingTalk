.class final Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4$1;
.super Ljava/lang/Object;
.source "MobileSettingActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 233
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string/jumbo v0, "TARGET"

    const-string/jumbo v1, "changeMobile"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    return-object p1
.end method
