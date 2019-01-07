.class public final Lhaf;
.super Ljava/lang/Object;
.source "CompressSettings.java"


# static fields
.field static a:I

.field static b:I

.field static c:F

.field static d:F

.field static e:I

.field static f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x500

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sput v0, Lhaf;->a:I

    .line 37
    sput v0, Lhaf;->b:I

    .line 38
    const v0, 0x3f19999a    # 0.6f

    sput v0, Lhaf;->c:F

    .line 39
    const/high16 v0, 0x3f400000    # 0.75f

    sput v0, Lhaf;->d:F

    .line 41
    const v0, 0x19000

    sput v0, Lhaf;->e:I

    .line 42
    const v0, 0x3e800

    sput v0, Lhaf;->f:I

    .line 43
    return-void
.end method
