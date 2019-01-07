.class abstract Lljh;
.super Lljb;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljb",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 28
    .local p0, "this":Lljh;, "Lljh<TE;>;"
    invoke-direct {p0, p1}, Lljb;-><init>(I)V

    .line 29
    return-void
.end method
