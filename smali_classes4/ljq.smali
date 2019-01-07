.class abstract Lljq;
.super Lljo;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljo",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 36
    .local p0, "this":Lljq;, "Lljq<TE;>;"
    invoke-direct {p0, p1}, Lljo;-><init>(I)V

    .line 37
    return-void
.end method
