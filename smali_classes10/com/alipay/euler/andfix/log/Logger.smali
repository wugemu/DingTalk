.class public abstract Lcom/alipay/euler/andfix/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# instance fields
.field LOG_LEVEL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 260
    if-nez p0, :cond_0

    .line 261
    const-string/jumbo v3, ""

    .line 278
    :goto_0
    return-object v3

    .line 266
    :cond_0
    move-object v2, p0

    .line 267
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_2

    .line 268
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 269
    const-string/jumbo v3, ""

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 274
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 275
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 276
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 277
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 278
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 126
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 249
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public footprint(Ljava/lang/String;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string/jumbo v0, "footprint"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/euler/andfix/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 165
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLogLevel(I)V
    .locals 2
    .param p1, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 48
    iput p1, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "level should between [2 , 7]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 87
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract verbose(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 210
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/euler/andfix/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/String;)I
.end method
