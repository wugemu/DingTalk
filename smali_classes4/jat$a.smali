.class final Ljat$a;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljat;


# direct methods
.method private constructor <init>(Ljat;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Ljat$a;->a:Ljat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljat;B)V
    .locals 0
    .param p1, "x0"    # Ljat;

    .prologue
    .line 392
    invoke-direct {p0, p1}, Ljat$a;-><init>(Ljat;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 395
    iget-object v1, p0, Ljat$a;->a:Ljat;

    invoke-static {v1}, Ljat;->a(Ljat;)Ljat$b;

    move-result-object v0

    .line 396
    .local v0, "configuration":Ljat$b;
    if-eqz v0, :cond_0

    .line 1348
    iget-object v1, v0, Ljat$b;->a:Ljava/lang/String;

    iget v2, v0, Ljat$b;->b:I

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 396
    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 400
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljat;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    .line 2355
    iget v2, v0, Ljat$b;->b:I

    iget-object v3, v0, Ljat$b;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    return-void
.end method
