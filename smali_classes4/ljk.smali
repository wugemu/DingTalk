.class abstract Lljk;
.super Lljg;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljg",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 82
    .local p0, "this":Lljk;, "Lljk<TE;>;"
    invoke-direct {p0, p1}, Lljg;-><init>(I)V

    .line 83
    return-void
.end method
