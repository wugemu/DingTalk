.class public final Lbfp;
.super Ljava/lang/Object;
.source "InvitationStatusUpdateObject.java"


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "changeStatus"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lbfp;->a:J

    .line 23
    iput p3, p0, Lbfp;->b:I

    .line 24
    iput-object p4, p0, Lbfp;->c:Ljava/lang/String;

    .line 25
    return-void
.end method
