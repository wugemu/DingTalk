.class public final Lgxo;
.super Ljava/lang/Object;
.source "JSONWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public a:Lgyq;

.field private b:Lgyy;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lgyy;

    invoke-direct {v0, p1}, Lgyy;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lgxo;->b:Lgyy;

    .line 23
    new-instance v0, Lgyq;

    iget-object v1, p0, Lgxo;->b:Lgyy;

    invoke-direct {v0, v1}, Lgyq;-><init>(Lgyy;)V

    iput-object v0, p0, Lgxo;->a:Lgyq;

    .line 24
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lgxo;->b:Lgyy;

    invoke-virtual {v0}, Lgyy;->close()V

    .line 183
    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lgxo;->b:Lgyy;

    invoke-virtual {v0}, Lgyy;->flush()V

    .line 179
    return-void
.end method
