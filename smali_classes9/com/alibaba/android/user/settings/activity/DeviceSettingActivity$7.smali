.class final Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$7;
.super Ljava/lang/Object;
.source "DeviceSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Z)V

    .line 133
    return-void
.end method
