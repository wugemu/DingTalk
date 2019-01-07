.class final Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;
.super Ljava/lang/Object;
.source "RobotSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TimePicker;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Landroid/widget/TimePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;->a:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    const-string/jumbo v1, "cronTimeHour"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;->a:Landroid/widget/TimePicker;

    .line 316
    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;->mExtension:Ljava/util/Map;

    const-string/jumbo v1, "cronTimeMinute"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;->a:Landroid/widget/TimePicker;

    .line 318
    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lctl;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lctl;->a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V

    .line 320
    return-void
.end method
