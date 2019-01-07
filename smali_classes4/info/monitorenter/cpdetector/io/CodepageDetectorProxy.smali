.class public final Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "CodepageDetectorProxy.java"


# static fields
.field private static instance:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;


# instance fields
.field private detectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Linfo/monitorenter/cpdetector/io/ICodepageDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->instance:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    .line 86
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    .line 93
    return-void
.end method

.method public static getInstance()Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->instance:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;-><init>()V

    sput-object v0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->instance:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    .line 108
    :cond_0
    sget-object v0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->instance:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    return-object v0
.end method


# virtual methods
.method public final add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z
    .locals 1
    .param p1, "detector"    # Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    .prologue
    .line 121
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "The given input stream ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") has to support for marking."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    :cond_0
    const/4 v3, 0x0

    .line 191
    .local v3, "ret":Ljava/nio/charset/Charset;
    iget-object v4, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, "detectorIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Linfo/monitorenter/cpdetector/io/ICodepageDetector;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    invoke-interface {v4, p1, p2}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 198
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    if-eqz v3, :cond_1

    .line 207
    invoke-static {}, Lkfg;->a()Ljava/nio/charset/Charset;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 208
    instance-of v4, v3, Lkfh;

    if-nez v4, :cond_1

    .line 217
    :cond_2
    return-object v3

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "ioex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "More than the given length had to be read and the given stream could not be reset. Undetermined state for this detection."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v1}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v2
.end method

.method public final detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "ret":Ljava/nio/charset/Charset;
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    .local v0, "detectorIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Linfo/monitorenter/cpdetector/io/ICodepageDetector;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    invoke-interface {v2, p1}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lkfg;->a()Ljava/nio/charset/Charset;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 138
    instance-of v2, v1, Lkfh;

    if-nez v2, :cond_0

    .line 147
    :cond_1
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 224
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v2, "ret":Ljava/lang/StringBuffer;
    iget-object v3, p0, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectors:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 226
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Linfo/monitorenter/cpdetector/io/ICodepageDetector;>;"
    const/4 v0, 0x1

    .line 227
    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 229
    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
