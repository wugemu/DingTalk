.class final Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$5;
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
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Z)V

    .line 109
    return-void
.end method
