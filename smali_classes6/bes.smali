.class public final Lbes;
.super Ljava/lang/Object;
.source "DingDetailQueryObject.java"


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "subTaskCount"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lbes;->a:J

    .line 26
    iput p3, p0, Lbes;->b:I

    .line 27
    return-void
.end method
