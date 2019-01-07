.class public Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;
.super Lcom/alibaba/android/teleconf/widget/BaseFloatView;
.source "ConfVideoHolderFloatView.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x2

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->getWindowManagerParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 38
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 40
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 41
    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 43
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->setWindowManagerParam(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 48
    sget v0, Leuj$j;->layout_conf_float_view_video_window_holder:I

    return v0
.end method

.method public onClick()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 58
    const-string/jumbo v0, "tele_video_h"

    const-string/jumbo v1, "ConfVideoHolderFloatView"

    const-string/jumbo v2, "Click for go back video conf"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewt;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 1064
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1065
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_floatwindow_click"

    invoke-interface {v0, v3, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1067
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_conf_floating_enter_opt_enable"

    .line 2083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1067
    if-eqz v0, :cond_1

    .line 1069
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->a:Landroid/content/Context;

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    invoke-virtual {v0}, Levu;->g()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1070
    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->b()V

    .line 61
    return-void

    .line 1073
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->a:Landroid/content/Context;

    invoke-static {v0}, Lewb;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1076
    :catch_0
    move-exception v0

    const-string/jumbo v0, "tele_video_h"

    const-string/jumbo v1, "ConfVideoHolderFloatView"

    const-string/jumbo v2, "PendingIntent send exp"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->a:Landroid/content/Context;

    invoke-static {v0}, Lewb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVideoHolderFloatView;->a:Landroid/content/Context;

    invoke-static {v0}, Lewb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1083
    :cond_2
    const-string/jumbo v0, "tele_video_h"

    const-string/jumbo v1, "ConfVideoHolderFloatView"

    const-string/jumbo v2, "Remove run-floating"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
