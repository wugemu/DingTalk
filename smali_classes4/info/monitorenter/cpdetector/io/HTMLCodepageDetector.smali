.class public Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "HTMLCodepageDetector.java"


# instance fields
.field private delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;-><init>(Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "verbose"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    .line 91
    new-instance v0, Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-direct {v0, p1}, Linfo/monitorenter/cpdetector/io/ParsingDetector;-><init>(Z)V

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    .line 92
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 100
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0, p1}, Linfo/monitorenter/cpdetector/io/ParsingDetector;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0, p1, p2}, Linfo/monitorenter/cpdetector/io/ParsingDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0, p1}, Linfo/monitorenter/cpdetector/io/ParsingDetector;->detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 123
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/HTMLCodepageDetector;->delegate:Linfo/monitorenter/cpdetector/io/ParsingDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
