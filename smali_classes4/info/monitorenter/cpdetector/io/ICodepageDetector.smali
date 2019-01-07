.class public interface abstract Linfo/monitorenter/cpdetector/io/ICodepageDetector;
.super Ljava/lang/Object;
.source "ICodepageDetector.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# virtual methods
.method public abstract detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract open(Ljava/net/URL;)Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
