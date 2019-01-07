.class public Lcom/alibaba/doraemon/impl/request/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field data:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

.field public final errorCode:I

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final isSuccess:Z

.field public final statusCode:I


# direct methods
.method public constructor <init>(IZLcom/alibaba/doraemon/image/memory/PooledByteBuffer;ILjava/util/Map;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "data"    # Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;
    .param p4, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->statusCode:I

    .line 35
    iput-boolean p2, p0, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->isSuccess:Z

    .line 36
    iput p4, p0, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->errorCode:I

    .line 37
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->data:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

    .line 38
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->headers:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public toErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->errorCode:I

    packed-switch v0, :pswitch_data_0

    .line 63
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    const-string/jumbo v0, "request get content error !"

    goto :goto_0

    .line 46
    :pswitch_1
    const-string/jumbo v0, "request io exception"

    goto :goto_0

    .line 48
    :pswitch_2
    const-string/jumbo v0, "request is cancel"

    goto :goto_0

    .line 50
    :pswitch_3
    const-string/jumbo v0, "request not modified"

    goto :goto_0

    .line 52
    :pswitch_4
    const-string/jumbo v0, "request save data error!"

    goto :goto_0

    .line 54
    :pswitch_5
    const-string/jumbo v0, "Content-Range Header is invalid"

    goto :goto_0

    .line 56
    :pswitch_6
    const-string/jumbo v0, "Authentication failed"

    goto :goto_0

    .line 58
    :pswitch_7
    const-string/jumbo v0, "response get error content type!"

    goto :goto_0

    .line 60
    :pswitch_8
    const-string/jumbo v0, "resource moved!"

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
