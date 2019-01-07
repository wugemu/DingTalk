.class final Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$1;
.super Ljava/lang/Object;
.source "RobotSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    move-result-object v0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    const-string/jumbo v2, "weatherAlarmEvent"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lctl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lctl;->a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V

    .line 101
    return-void

    .line 96
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
