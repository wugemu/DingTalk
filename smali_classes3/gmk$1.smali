.class final Lgmk$1;
.super Landroid/util/SparseArray;
.source "SpaceMenuCreateFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    const/16 v0, 0x1392

    const-string/jumbo v1, "0"

    invoke-virtual {p0, v0, v1}, Lgmk$1;->put(ILjava/lang/Object;)V

    .line 24
    const/16 v0, 0x139c

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v0, v1}, Lgmk$1;->put(ILjava/lang/Object;)V

    .line 25
    const/16 v0, 0x13a6

    const-string/jumbo v1, "2"

    invoke-virtual {p0, v0, v1}, Lgmk$1;->put(ILjava/lang/Object;)V

    .line 26
    const/16 v0, 0x13b0

    const-string/jumbo v1, "100"

    invoke-virtual {p0, v0, v1}, Lgmk$1;->put(ILjava/lang/Object;)V

    .line 27
    const/16 v0, 0x13ba

    const-string/jumbo v1, "101"

    invoke-virtual {p0, v0, v1}, Lgmk$1;->put(ILjava/lang/Object;)V

    .line 28
    return-void
.end method
