.class public final Linfo/monitorenter/cpdetector/io/ASCIIDetector;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "ASCIIDetector.java"


# static fields
.field private static instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    .line 102
    return-void
.end method

.method public static getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Linfo/monitorenter/cpdetector/io/ASCIIDetector;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/io/ASCIIDetector;-><init>()V

    sput-object v0, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    .line 108
    :cond_0
    sget-object v0, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    return-object v0
.end method


# virtual methods
.method public final detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 116
    invoke-static {}, Lkfg;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 118
    .local v1, "ret":Ljava/nio/charset/Charset;
    instance-of v2, p1, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_1

    .line 119
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 123
    .local v0, "localin":Ljava/io/InputStream;
    :goto_0
    invoke-static {v0}, Lkfn;->a(Ljava/io/InputStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const-string/jumbo v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 126
    :cond_0
    return-object v1

    .line 121
    .end local v0    # "localin":Ljava/io/InputStream;
    :cond_1
    move-object v0, p1

    .restart local v0    # "localin":Ljava/io/InputStream;
    goto :goto_0
.end method
