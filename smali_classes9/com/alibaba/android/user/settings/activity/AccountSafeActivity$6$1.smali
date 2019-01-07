.class final Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6$1;
.super Ljava/lang/Object;
.source "AccountSafeActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6$1;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;

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
    .line 358
    const-string/jumbo v0, "setting_change_pwd"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6$1;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$6;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .line 359
    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->g(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string/jumbo v0, "TARGET"

    const-string/jumbo v1, "intent_key_change_pwd_from_setting"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    return-object p1
.end method
