.class public final Lbfo;
.super Ljava/lang/Object;
.source "InvitationCancelObject.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "dingId"    # J
    .param p3, "cancelReason"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lbfo;->a:J

    .line 22
    iput-object p3, p0, Lbfo;->b:Ljava/lang/String;

    .line 23
    return-void
.end method
