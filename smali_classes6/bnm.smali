.class public final Lbnm;
.super Ljava/lang/Object;
.source "ScrollPositionMarker.java"


# static fields
.field public static a:Z

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lbnm;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lbnm;->b:I

    return v0
.end method

.method public static a(II)V
    .locals 0
    .param p0, "lastPosition"    # I
    .param p1, "lastOffset"    # I

    .prologue
    .line 22
    sput p0, Lbnm;->b:I

    .line 23
    sput p1, Lbnm;->c:I

    .line 24
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lbnm;->c:I

    return v0
.end method
