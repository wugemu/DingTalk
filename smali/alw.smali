.class public final Lalw;
.super Ljava/lang/Object;
.source "BizResponse.java"


# instance fields
.field a:I

.field b:J

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lalw;->a:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lalw;->b:J

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lalw;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
