.class final Lkom$d$1;
.super Lkni;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkom$d;->a(ZILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkoo;

.field final synthetic c:Lkom$d;


# direct methods
.method varargs constructor <init>(Lkom$d;Ljava/lang/String;[Ljava/lang/Object;Lkoo;)V
    .locals 0
    .param p1, "this$1"    # Lkom$d;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 669
    iput-object p1, p0, Lkom$d$1;->c:Lkom$d;

    iput-object p4, p0, Lkom$d$1;->a:Lkoo;

    invoke-direct {p0, p2, p3}, Lkni;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 672
    :try_start_0
    iget-object v1, p0, Lkom$d$1;->c:Lkom$d;

    iget-object v1, v1, Lkom$d;->c:Lkom;

    iget-object v1, v1, Lkom;->b:Lkom$b;

    iget-object v2, p0, Lkom$d$1;->a:Lkoo;

    invoke-virtual {v1, v2}, Lkom$b;->a(Lkoo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Http2Connection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lkom$d$1;->c:Lkom$d;

    iget-object v4, v4, Lkom$d;->c:Lkom;

    iget-object v4, v4, Lkom;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lkoy;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 676
    :try_start_1
    iget-object v1, p0, Lkom$d$1;->a:Lkoo;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lkoo;->a(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 680
    :catch_1
    move-exception v1

    goto :goto_0
.end method
