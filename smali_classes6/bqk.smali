.class public final Lbqk;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x436b0000    # 235.0f

    .line 17
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lbqk;->a:I

    .line 18
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lbqk;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)F
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origWidth"    # I
    .param p2, "origHeight"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 32
    if-nez p0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    sget v2, Lbqk;->a:I

    if-le p1, v2, :cond_2

    sget v2, Lbqk;->b:I

    if-le p2, v2, :cond_2

    .line 35
    int-to-double v2, p1

    mul-double/2addr v2, v6

    sget v4, Lbqk;->a:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 36
    .local v1, "widthRatio":F
    int-to-double v2, p2

    mul-double/2addr v2, v6

    sget v4, Lbqk;->b:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 37
    .local v0, "heightRatio":F
    cmpl-float v2, v1, v0

    if-gtz v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 38
    .end local v0    # "heightRatio":F
    .end local v1    # "widthRatio":F
    :cond_2
    sget v2, Lbqk;->a:I

    if-le p1, v2, :cond_3

    .line 39
    int-to-double v2, p1

    mul-double/2addr v2, v6

    sget v4, Lbqk;->a:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_0

    .line 41
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    sget v4, Lbqk;->b:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x42fa0000    # 125.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pictures"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 51
    if-eqz p0, :cond_0

    const/4 v3, 0x1

    if-gt p1, v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 73
    :cond_1
    :goto_0
    return v2

    .line 52
    :cond_2
    if-ne p1, v5, :cond_3

    .line 53
    sget v3, Lbqk;->c:I

    if-lez v3, :cond_3

    .line 54
    sget v2, Lbqk;->c:I

    goto :goto_0

    .line 57
    :cond_3
    if-ne p1, v6, :cond_4

    .line 58
    sget v3, Lbqk;->d:I

    if-lez v3, :cond_4

    .line 59
    sget v2, Lbqk;->d:I

    goto :goto_0

    .line 62
    :cond_4
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    .line 63
    .local v1, "screenWidth":I
    const/high16 v3, 0x42880000    # 68.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    sub-int v3, v1, v3

    const/high16 v4, 0x42640000    # 57.0f

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int v0, v3, v4

    .line 66
    .local v0, "containerWidth":I
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v3, v4

    sub-int v3, v0, v3

    div-int v2, v3, p1

    .line 68
    .local v2, "targetWidth":I
    if-ne p1, v5, :cond_5

    .line 69
    sput v2, Lbqk;->c:I

    goto :goto_0

    .line 70
    :cond_5
    if-ne p1, v6, :cond_1

    .line 71
    sput v2, Lbqk;->d:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    .locals 4
    .param p0, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 78
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 79
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 81
    new-instance v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    return-object v1
.end method
