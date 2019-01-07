.class public final Ldmo;
.super Ljava/lang/Object;
.source "Random.java"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ldmo;->a:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .locals 1
    .param p0, "upper"    # F

    .prologue
    .line 13
    sget-object v0, Ldmo;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(I)I
    .locals 1
    .param p0, "upper"    # I

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    :cond_0
    sget-object v0, Ldmo;->a:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(FF)F
    .locals 3
    .param p1, "lower"    # F
    .param p2, "upper"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 8
    .local v1, "min":F
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 9
    .local v0, "max":F
    sub-float v2, v0, v1

    invoke-static {v2}, Ldmo;->a(F)F

    move-result v2

    add-float/2addr v2, v1

    return v2
.end method
