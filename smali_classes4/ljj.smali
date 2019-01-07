.class abstract Lljj;
.super Lljm;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljm",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 110
    .local p0, "this":Lljj;, "Lljj<TE;>;"
    invoke-direct {p0, p1}, Lljm;-><init>(I)V

    .line 111
    return-void
.end method
