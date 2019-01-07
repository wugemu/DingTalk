.class abstract Lqb;
.super Ljava/lang/Object;
.source "BinaryAttachmentBody.java"

# interfaces
.implements Lvp;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 26
    invoke-virtual {p0}, Lqb;->f_()Ljava/io/InputStream;

    move-result-object v1

    .line 28
    .local v1, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 29
    .local v0, "closeStream":Z
    :try_start_0
    iget-object v3, p0, Lqb;->a:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    new-instance v2, Lvw;

    invoke-direct {v2, p1}, Lvw;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .end local p1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    const/4 v0, 0x1

    move-object p1, v2

    .line 38
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v1, p1}, Lkpv;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 46
    return-void

    .line 32
    :cond_2
    :try_start_3
    iget-object v3, p0, Lqb;->a:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    new-instance v2, Lkqd;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lkqd;-><init>(Ljava/io/OutputStream;Z)V

    .line 34
    .end local p1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    const/4 v0, 0x1

    move-object p1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :catchall_1
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
.end method

.method public a_(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lqb;->a:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lqb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract f_()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method
