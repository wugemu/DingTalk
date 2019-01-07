.class public final Lxd;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->getInstance()Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    move-result-object v1

    .line 126
    .local v1, "detector":Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;
    new-instance v3, Linfo/monitorenter/cpdetector/io/ParsingDetector;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Linfo/monitorenter/cpdetector/io/ParsingDetector;-><init>(Z)V

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 127
    new-instance v3, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;

    invoke-direct {v3}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;-><init>()V

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 135
    invoke-static {}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->getInstance()Linfo/monitorenter/cpdetector/io/JChardetFacade;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 137
    invoke-static {}, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 139
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnicodeDetector;->getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 142
    const/4 v0, 0x0

    .line 145
    .local v0, "charset":Ljava/nio/charset/Charset;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    .line 152
    :goto_1
    return-object v3

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 78
    invoke-static {}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->getInstance()Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    move-result-object v1

    .line 83
    .local v1, "detector":Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;
    new-instance v3, Linfo/monitorenter/cpdetector/io/ParsingDetector;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Linfo/monitorenter/cpdetector/io/ParsingDetector;-><init>(Z)V

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 84
    new-instance v3, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;

    invoke-direct {v3}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;-><init>()V

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 92
    invoke-static {}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->getInstance()Linfo/monitorenter/cpdetector/io/JChardetFacade;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 94
    invoke-static {}, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 96
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnicodeDetector;->getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 99
    const/4 v0, 0x0

    .line 102
    .local v0, "charset":Ljava/nio/charset/Charset;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v4, p0

    invoke-virtual {v1, v3, v4}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_0
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    .line 109
    :goto_1
    return-object v3

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method
