.class final Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$10;
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
    .line 399
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->f(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 403
    return-void
.end method
