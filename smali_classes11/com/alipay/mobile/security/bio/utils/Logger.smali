.class public abstract Lcom/alipay/mobile/security/bio/utils/Logger;
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
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Throwable;)Ljava/lang/String;
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 102
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
    .line 114
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
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
    .line 122
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 125
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
    .line 222
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 225
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
    .line 237
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
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
    .line 245
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 246
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 141
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
    .line 153
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 156
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
    .line 161
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 162
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 164
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
    .line 43
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 44
    iput p1, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The level value should between [2 , 7]"

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
    .line 60
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
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
    .line 75
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 78
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
    .line 83
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 86
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
    .line 177
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 180
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
    .line 192
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 195
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
    .line 206
    iget v0, p0, Lcom/alipay/mobile/security/bio/utils/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 207
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/bio/utils/Logger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/bio/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/String;)I
.end method
