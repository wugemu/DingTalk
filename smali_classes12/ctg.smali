.class public final Lctg;
.super Ljava/lang/Object;
.source "WheelConsts.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 16
    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v3, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lctg;->a:I

    .line 20
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v3, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lctg;->b:I

    .line 25
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v3, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lctg;->c:I

    .line 32
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->uidic_global_color_c5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lctg;->d:I

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lctg;->e:I

    .line 37
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lctg;->f:I

    .line 38
    const/4 v0, 0x0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lctg;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
