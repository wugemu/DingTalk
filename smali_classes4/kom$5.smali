.class final Lkom$5;
.super Lkni;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lokio/Buffer;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lkom;


# direct methods
.method varargs constructor <init>(Lkom;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    .locals 0
    .param p1, "this$0"    # Lkom;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 891
    iput-object p1, p0, Lkom$5;->f:Lkom;

    iput p4, p0, Lkom$5;->a:I

    iput-object p5, p0, Lkom$5;->c:Lokio/Buffer;

    iput p6, p0, Lkom$5;->d:I

    iput-boolean p7, p0, Lkom$5;->e:Z

    invoke-direct {p0, p2, p3}, Lkni;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 894
    :try_start_0
    iget-object v0, p0, Lkom$5;->f:Lkom;

    iget-object v0, v0, Lkom;->h:Lkor;

    iget-object v1, p0, Lkom$5;->c:Lokio/Buffer;

    iget v2, p0, Lkom$5;->d:I

    invoke-interface {v0, v1, v2}, Lkor;->a(Lokio/BufferedSource;I)Z

    .line 895
    iget-object v0, p0, Lkom$5;->f:Lkom;

    iget-object v0, v0, Lkom;->p:Lkop;

    iget v1, p0, Lkom$5;->a:I

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lkop;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 897
    iget-object v1, p0, Lkom$5;->f:Lkom;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :try_start_1
    iget-object v0, p0, Lkom$5;->f:Lkom;

    iget-object v0, v0, Lkom;->r:Ljava/util/Set;

    iget v2, p0, Lkom$5;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 899
    monitor-exit v1

    .line 903
    :goto_0
    return-void

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
