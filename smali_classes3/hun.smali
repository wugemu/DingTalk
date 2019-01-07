.class public final Lhun;
.super Ljava/lang/Object;
.source "BizResponse.java"


# instance fields
.field public a:I

.field b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lhun;->a:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhun;->b:J

    return-void
.end method
