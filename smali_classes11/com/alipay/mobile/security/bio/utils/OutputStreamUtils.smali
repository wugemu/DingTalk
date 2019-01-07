.class public Lcom/alipay/mobile/security/bio/utils/OutputStreamUtils;
.super Ljava/lang/Object;
.source "OutputStreamUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 10
    if-eqz p0, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :cond_0
    :goto_0
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
