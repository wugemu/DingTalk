.class final Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;
.super Ljava/lang/Object;
.source "SilenceModeSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 121
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/32 v10, 0x36ee80

    const/4 v5, 0x1

    .line 124
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v1

    invoke-virtual {v1}, Lcmp;->c()[J

    move-result-object v6

    .line 125
    .local v6, "currentTimeRange":[J
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4$1;

    invoke-direct {v2, p0, v6}, Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4$1;-><init>(Lcom/alibaba/android/user/settings/activity/SilenceModeSettingActivity$4;[J)V

    aget-wide v8, v6, v5

    div-long/2addr v8, v10

    long-to-int v3, v8

    aget-wide v8, v6, v5

    rem-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    long-to-int v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 132
    .local v0, "timePickerDialog":Landroid/app/TimePickerDialog;
    invoke-virtual {v0, v5}, Landroid/app/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 133
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 134
    return-void
.end method
