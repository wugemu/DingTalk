.class public final Lhbw;
.super Ljava/lang/Object;
.source "OrientationUtil.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput v0, Lhbw;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 7
    sget v0, Lhbw;->a:I

    return v0
.end method

.method public static a(I)V
    .locals 0
    .param p0, "ori"    # I

    .prologue
    .line 10
    sput p0, Lhbw;->a:I

    .line 11
    return-void
.end method
