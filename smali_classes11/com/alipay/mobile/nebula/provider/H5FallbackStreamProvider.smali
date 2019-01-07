.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
.super Ljava/lang/Object;
.source "H5FallbackStreamProvider.java"


# virtual methods
.method public abstract getFallbackInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJZ)Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BJZ)",
            "Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
