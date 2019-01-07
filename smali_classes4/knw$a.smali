.class final Lknw$a;
.super Lokio/ForwardingSink;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lknw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:J


# direct methods
.method constructor <init>(Lokio/Sink;)V
    .locals 0
    .param p1, "delegate"    # Lokio/Sink;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 146
    return-void
.end method


# virtual methods
.method public final write(Lokio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 150
    iget-wide v0, p0, Lknw$a;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lknw$a;->a:J

    .line 151
    return-void
.end method
