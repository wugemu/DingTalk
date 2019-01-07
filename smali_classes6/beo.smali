.class public final Lbeo;
.super Ljava/lang/Object;
.source "CheckInCodeObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field private c:J


# direct methods
.method public constructor <init>(Lbcc;)V
    .locals 4
    .param p1, "checkInCodeModel"    # Lbcc;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-object v0, p1, Lbcc;->a:Ljava/lang/String;

    iput-object v0, p0, Lbeo;->a:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lbcc;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lbeo;->c:J

    .line 21
    iget-object v0, p1, Lbcc;->c:Ljava/lang/Integer;

    .line 2033
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 21
    iput v0, p0, Lbeo;->b:I

    .line 23
    :cond_0
    return-void
.end method
