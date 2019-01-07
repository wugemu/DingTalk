.class final Lcom/alibaba/android/user/settings/activity/FontSettingActivity$2;
.super Ljava/lang/Object;
.source "FontSettingActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 116
    if-eqz p3, :cond_0

    .line 117
    if-ltz p2, :cond_0

    invoke-static {}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b()[F

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-static {}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b()[F

    move-result-object v1

    aget v1, v1, p2

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;F)F

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    const-string/jumbo v1, "pref_font_scale"

    invoke-static {}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b()[F

    move-result-object v2

    aget v2, v2, p2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;F)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    invoke-static {}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b()[F

    move-result-object v1

    aget v1, v1, p2

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;F)V

    .line 123
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 127
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 131
    return-void
.end method
