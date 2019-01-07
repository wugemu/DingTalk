.class public final Lxg;
.super Ljava/lang/Object;
.source "FavoriteSyncResult.java"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lxg;->a:Z

    .line 11
    iput-boolean v0, p0, Lxg;->b:Z

    .line 12
    return-void
.end method
