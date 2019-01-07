.class abstract Lljs;
.super Lljp;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljp",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 74
    .local p0, "this":Lljs;, "Lljs<TE;>;"
    invoke-direct {p0, p1}, Lljp;-><init>(I)V

    .line 75
    return-void
.end method
