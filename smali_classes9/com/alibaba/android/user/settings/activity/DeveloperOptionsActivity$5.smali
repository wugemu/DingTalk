.class final Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$5;
.super Ljava/lang/Object;
.source "DeveloperOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->d(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_settings_developer_options_smartapp_cache"

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$5;->a:Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->d(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 122
    :cond_0
    return-void
.end method
