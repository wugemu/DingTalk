.class public final Lqf;
.super Lqe;
.source "TempFileMessageBody.java"

# interfaces
.implements Lwd;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lqe;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 24
    .line 1015
    invoke-virtual {p0}, Lqb;->f_()Ljava/io/InputStream;

    move-result-object v1

    .line 1017
    :try_start_0
    const-string/jumbo v0, "7bit"

    invoke-virtual {p0}, Lqb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    new-instance v0, Lvh;

    invoke-direct {v0, v1}, Lvh;-><init>(Ljava/io/InputStream;)V

    .line 1024
    invoke-virtual {v0}, Lvh;->g()V

    .line 1025
    invoke-virtual {v0, p1}, Lvh;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1031
    return-void

    .line 1027
    :cond_0
    :try_start_1
    invoke-static {v1, p1}, Lkpv;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1030
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    const-string/jumbo v0, "7bit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "8bit"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->BODY_ENCODING_CONVERT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v2, "Incompatible content-transfer-encoding applied to a CompositeBody"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lqf;->a:Ljava/lang/String;

    .line 45
    return-void
.end method
