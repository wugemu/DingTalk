.class abstract Lljm;
.super Lljk;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljk",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# instance fields
.field volatile f:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 93
    .local p0, "this":Lljm;, "Lljm<TE;>;"
    invoke-direct {p0, p1}, Lljk;-><init>(I)V

    .line 94
    return-void
.end method
