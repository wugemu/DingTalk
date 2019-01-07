.class final Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$4;
.super Ljava/lang/Object;
.source "NewMsgSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 208
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.provider.extra.APP_PACKAGE"

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    .line 209
    invoke-virtual {v4}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 210
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/settings/activity/NewMsgSettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "user"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "gotoSystemSettings failed, error="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
