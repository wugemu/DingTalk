.class final Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileSettingGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity$1;->a:Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/MobileSettingGuideActivity;->finish()V

    .line 64
    return-void
.end method
