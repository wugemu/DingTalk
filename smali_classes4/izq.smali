.class public final Lizq;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field a:I

.field b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "totalCount"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lizq;->a:I

    .line 14
    iget v0, p0, Lizq;->a:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lizq;->b:Ljava/nio/ByteBuffer;

    .line 15
    return-void
.end method
