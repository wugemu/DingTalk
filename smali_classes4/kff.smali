.class public final Lkff;
.super Ljava/lang/Object;
.source "PtrLocalDisplay.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:F

.field public static d:I

.field public static e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)I
    .locals 3
    .param p0, "dp"    # F

    .prologue
    .line 31
    sget v0, Lkff;->c:F

    .line 32
    .local v0, "scale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 20
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 22
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lkff;->a:I

    .line 24
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lkff;->b:I

    .line 25
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lkff;->c:F

    .line 26
    sget v2, Lkff;->a:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lkff;->d:I

    .line 27
    sget v2, Lkff;->b:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lkff;->e:I

    goto :goto_0
.end method
