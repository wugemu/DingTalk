.class final Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$11;
.super Ljava/lang/Object;
.source "RobotSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 411
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->g(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 415
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    const-string/jumbo v1, "im_bot_seting_removebtn_confirm_click"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Ljava/lang/String;)V

    .line 416
    return-void
.end method
