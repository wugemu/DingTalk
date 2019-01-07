.class public final Lyf;
.super Ljava/lang/Object;
.source "MoniterConfig.java"


# static fields
.field public static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/32 v0, 0xea60

    sput-wide v0, Lyf;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 16
    sget-wide v0, Lyf;->a:J

    return-wide v0
.end method
