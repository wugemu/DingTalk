.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->ackSettingsLater(Lcom/squareup/okhttp/internal/spdy/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

.field final synthetic val$peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 0
    .param p1, "this$1"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;->this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;->val$peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;->this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$2;->val$peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->ackSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
