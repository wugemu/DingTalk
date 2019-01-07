.class public final Lbyg;
.super Ljava/lang/Object;
.source "FloatWindowUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 26
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 27
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil;->b()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 29
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 30
    const v3, 0x1000028

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 34
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 35
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 36
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 38
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 39
    .local v0, "context":Landroid/content/Context;
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 40
    .local v1, "defaultValue":I
    const-string/jumbo v3, "sp_key_float_window_x"

    invoke-static {v3, v1}, Lbyp;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 41
    const-string/jumbo v3, "sp_key_float_window_y"

    invoke-static {v3, v1}, Lbyp;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 43
    return-object v2
.end method
