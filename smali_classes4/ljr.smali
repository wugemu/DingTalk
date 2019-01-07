.class abstract Lljr;
.super Lljt;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljt",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 56
    .local p0, "this":Lljr;, "Lljr<TE;>;"
    invoke-direct {p0, p1}, Lljt;-><init>(I)V

    .line 57
    return-void
.end method
