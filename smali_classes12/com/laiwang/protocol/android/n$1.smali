.class Lcom/laiwang/protocol/android/n$1;
.super Ljava/lang/Object;
.source "LwpRequestConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/core/Request;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/laiwang/protocol/android/n;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/n;Lcom/laiwang/protocol/core/Request;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/n;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/laiwang/protocol/android/n$1;->d:Lcom/laiwang/protocol/android/n;

    iput-object p2, p0, Lcom/laiwang/protocol/android/n$1;->a:Lcom/laiwang/protocol/core/Request;

    iput p3, p0, Lcom/laiwang/protocol/android/n$1;->b:I

    iput p4, p0, Lcom/laiwang/protocol/android/n$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/core/Response;)V
    .locals 8
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v4, p0, Lcom/laiwang/protocol/android/n$1;->a:Lcom/laiwang/protocol/core/Request;

    sget-object v5, Lcom/laiwang/protocol/attribute/Attributes;->NO_ACK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v4

    invoke-interface {v4}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 245
    .local v1, "noAck":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 246
    :cond_0
    iget-object v4, p0, Lcom/laiwang/protocol/android/n$1;->d:Lcom/laiwang/protocol/android/n;

    iget-object v4, v4, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v4, :cond_1

    .line 247
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_HEADER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v4}, Lcom/laiwang/protocol/core/Response;->intAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)I

    move-result v3

    .line 248
    .local v3, "resh":I
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_BODY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p1, v4}, Lcom/laiwang/protocol/core/Response;->intAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)I

    move-result v2

    .line 249
    .local v2, "resb":I
    new-instance v0, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;-><init>()V

    .line 250
    .local v0, "info":Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;
    iget-object v4, p0, Lcom/laiwang/protocol/android/n$1;->a:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->url:Ljava/lang/String;

    .line 251
    iget v4, p0, Lcom/laiwang/protocol/android/n$1;->b:I

    iget v5, p0, Lcom/laiwang/protocol/android/n$1;->c:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->requestDataLength:J

    .line 252
    add-int v4, v3, v2

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->responseDataLength:J

    .line 253
    iget-object v4, p0, Lcom/laiwang/protocol/android/n$1;->a:Lcom/laiwang/protocol/core/Request;

    sget-object v5, Lcom/laiwang/protocol/attribute/Attributes;->REQUEST_BIZ_NAME:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v4

    invoke-interface {v4}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->bizName:Ljava/lang/String;

    .line 254
    iget-object v4, p0, Lcom/laiwang/protocol/android/n$1;->d:Lcom/laiwang/protocol/android/n;

    iget-object v4, v4, Lcom/laiwang/protocol/android/n;->j:Lcom/laiwang/protocol/android/NetworkListener;

    invoke-interface {v4, v0}, Lcom/laiwang/protocol/android/NetworkListener;->onRequest(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V

    .line 256
    .end local v0    # "info":Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;
    .end local v2    # "resb":I
    .end local v3    # "resh":I
    :cond_1
    iget-object v4, p0, Lcom/laiwang/protocol/android/n$1;->d:Lcom/laiwang/protocol/android/n;

    invoke-virtual {v4, p1}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/bd;)V

    .line 261
    :goto_0
    const-string/jumbo v4, "[push] callback %s %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/laiwang/protocol/android/n$1;->a:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v7}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/laiwang/protocol/android/n$1;->a:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v7}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->startLine()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    return-void

    .line 259
    :cond_2
    iget-object v4, p0, Lcom/laiwang/protocol/android/n$1;->d:Lcom/laiwang/protocol/android/n;

    invoke-static {v4}, Lcom/laiwang/protocol/android/n;->a(Lcom/laiwang/protocol/android/n;)V

    goto :goto_0
.end method

.method public synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 241
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/n$1;->a(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
