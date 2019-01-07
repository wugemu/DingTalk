.class final Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$8;
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
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$8;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$8;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$8;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Landroid/text/Editable;)V

    .line 360
    return-void
.end method
