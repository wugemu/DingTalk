.class final Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/MobileSettingActivity;->finish()V

    .line 77
    return-void
.end method
