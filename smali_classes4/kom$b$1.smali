.class final Lkom$b$1;
.super Lkom$b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkom$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 926
    invoke-direct {p0}, Lkom$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkoo;)V
    .locals 1
    .param p1, "stream"    # Lkoo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lkoo;->a(Lokhttp3/internal/http2/ErrorCode;)V

    .line 929
    return-void
.end method
