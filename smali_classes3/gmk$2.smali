.class final Lgmk$2;
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
    .line 30
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 31
    const/16 v0, 0x1392

    const-string/jumbo v1, "space_files_new_word"

    invoke-virtual {p0, v0, v1}, Lgmk$2;->put(ILjava/lang/Object;)V

    .line 32
    const/16 v0, 0x139c

    const-string/jumbo v1, "space_files_new_exel"

    invoke-virtual {p0, v0, v1}, Lgmk$2;->put(ILjava/lang/Object;)V

    .line 33
    const/16 v0, 0x13a6

    const-string/jumbo v1, "space_files_new_ppt"

    invoke-virtual {p0, v0, v1}, Lgmk$2;->put(ILjava/lang/Object;)V

    .line 34
    const/16 v0, 0x13b0

    const-string/jumbo v1, "space_createdoc_alidoc_click"

    invoke-virtual {p0, v0, v1}, Lgmk$2;->put(ILjava/lang/Object;)V

    .line 35
    const/16 v0, 0x13ba

    const-string/jumbo v1, "space_createsheet_alidoc_click"

    invoke-virtual {p0, v0, v1}, Lgmk$2;->put(ILjava/lang/Object;)V

    .line 36
    return-void
.end method
