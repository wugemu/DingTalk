.class final Lixr;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field final a:[B

.field final b:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "errorCorrection"    # [B

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lixr;->a:[B

    .line 26
    iput-object p2, p0, Lixr;->b:[B

    .line 27
    return-void
.end method
