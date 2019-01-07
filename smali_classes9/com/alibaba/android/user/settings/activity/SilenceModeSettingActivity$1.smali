.class final Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$1;
.super Ljava/lang/Object;
.source "SilenceModeSettingActivity.java"

# interfaces
.implements Lcmt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/String;
    .param p4, "newValue"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "user_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string/jumbo v0, "silence_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "silence_mode_time_range"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$1;->a:Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;)V

    .line 54
    :cond_1
    return-void
.end method
