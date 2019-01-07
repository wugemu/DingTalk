.class public final Levz;
.super Ljava/lang/Object;
.source "ConfAboutStatistics.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Levz;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 29
    sget v0, Levz;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Levz;->a:I

    .line 30
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 33
    sget v0, Levz;->a:I

    return v0
.end method
