.class public final Lbez;
.super Ljava/lang/Object;
.source "DingTaskTransferObject.java"


# instance fields
.field public a:J

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(JLjava/util/List;Z)V
    .locals 1
    .param p1, "dingId"    # J
    .param p4, "ignorePrevent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "transUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lbez;->a:J

    .line 23
    iput-object p3, p0, Lbez;->b:Ljava/util/List;

    .line 24
    iput-boolean p4, p0, Lbez;->c:Z

    .line 25
    return-void
.end method
