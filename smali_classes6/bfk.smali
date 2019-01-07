.class public final Lbfk;
.super Ljava/lang/Object;
.source "ExecutorChangeObject.java"


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJILjava/lang/String;)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "executorId"    # J
    .param p5, "finishStatus"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lbfk;->a:J

    .line 22
    iput-wide p3, p0, Lbfk;->b:J

    .line 23
    iput p5, p0, Lbfk;->c:I

    .line 24
    iput-object p6, p0, Lbfk;->d:Ljava/lang/String;

    .line 25
    return-void
.end method
