.class final Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4$1;
.super Ljava/lang/Object;
.source "SilenceModeSettingActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;[J)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4$1;->b:Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4$1;->a:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4$1;->a:[J

    mul-int/lit16 v1, p2, 0xe10

    mul-int/lit8 v2, p3, 0x3c

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    aput-wide v2, v0, v4

    .line 129
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4$1;->a:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4$1;->a:[J

    aget-wide v4, v1, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcmp;->a(JJ)V

    .line 130
    return-void
.end method
