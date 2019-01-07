.class public Lvf;
.super Lvq;
.source "MimeBodyPart.java"


# instance fields
.field protected a:Lvg;

.field protected b:Lvp;

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lvf;-><init>(Lvp;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lvp;)V
    .locals 1
    .param p1, "body"    # Lvp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lvf;-><init>(Lvp;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lvp;Ljava/lang/String;)V
    .locals 1
    .param p1, "body"    # Lvp;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lvq;-><init>()V

    .line 24
    new-instance v0, Lvg;

    invoke-direct {v0}, Lvg;-><init>()V

    iput-object v0, p0, Lvf;->a:Lvg;

    .line 40
    if-eqz p2, :cond_0

    .line 42
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lvf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lvf;->a(Lvp;)V

    .line 45
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lvf;->a:Lvg;

    invoke-virtual {v0, p1}, Lvg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lvp;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lvf;->b:Lvp;

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 167
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 168
    .local v0, "writer":Ljava/io/BufferedWriter;
    iget-object v1, p0, Lvf;->a:Lvg;

    invoke-virtual {v1, p1}, Lvg;->a(Ljava/io/OutputStream;)V

    .line 169
    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 171
    iget-object v1, p0, Lvf;->b:Lvp;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lvf;->b:Lvp;

    invoke-interface {v1, p1}, Lvp;->a(Ljava/io/OutputStream;)V

    .line 175
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lvf;->a:Lvg;

    invoke-virtual {v0, p1, p2}, Lvg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public final a(Lvp;)V
    .locals 8
    .param p1, "body"    # Lvp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    iput-object p1, p0, Lvf;->b:Lvp;

    .line 80
    instance-of v3, p1, Lvr;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 82
    check-cast v1, Lvr;

    .line 83
    .local v1, "multipart":Lvr;
    invoke-virtual {v1, p0}, Lvr;->a(Lvs;)V

    .line 84
    const-string/jumbo v3, "Content-Type"

    invoke-virtual {v1}, Lvr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lvf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v1    # "multipart":Lvr;
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    instance-of v3, p1, Lvn;

    if-eqz v3, :cond_0

    .line 88
    const-string/jumbo v3, "%s;\n charset=utf-8"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lvf;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "contentType":Ljava/lang/String;
    invoke-virtual {p0}, Lvf;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-static {v3, v4}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n name=\"%s\""

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_2
    const-string/jumbo v3, "Content-Type"

    invoke-virtual {p0, v3, v0}, Lvf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v3, "Content-Transfer-Encoding"

    const-string/jumbo v4, "quoted-printable"

    invoke-virtual {p0, v3, v4}, Lvf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lvf;->a:Lvg;

    invoke-virtual {v0, p1}, Lvg;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 101
    const-string/jumbo v1, "Content-Type"

    invoke-direct {p0, v1}, Lvf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v1, "text/plain"

    .line 108
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "\\r"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\n"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lvf;->b:Lvp;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lvf;->b:Lvp;

    invoke-interface {v0, p1}, Lvp;->a_(Ljava/lang/String;)V

    .line 182
    :cond_0
    const-string/jumbo v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lvf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lvf;->a:Lvg;

    invoke-virtual {v0, p1, p2}, Lvg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 114
    const-string/jumbo v1, "Content-Disposition"

    invoke-direct {p0, v1}, Lvf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "contentDisposition":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 121
    .end local v0    # "contentDisposition":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 127
    const-string/jumbo v3, "Content-ID"

    invoke-direct {p0, v3}, Lvf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "contentId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 130
    const/4 v0, 0x0

    .line 142
    .end local v0    # "contentId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 134
    .restart local v0    # "contentId":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 135
    .local v1, "first":I
    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 136
    .local v2, "last":I
    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    .line 138
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 149
    invoke-virtual {p0}, Lvf;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lvf;->c:I

    return v0
.end method

.method public final g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 187
    const-string/jumbo v1, "Content-Type"

    invoke-direct {p0, v1}, Lvf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lvf;->b:Lvp;

    instance-of v1, v1, Lwd;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "multipart/signed"

    invoke-static {v0, v1}, Lvj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    const-string/jumbo v1, "7bit"

    invoke-virtual {p0, v1}, Lvf;->b(Ljava/lang/String;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const-string/jumbo v1, "8bit"

    const-string/jumbo v2, "Content-Transfer-Encoding"

    .line 198
    invoke-direct {p0, v2}, Lvf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    if-eqz v0, :cond_3

    const-string/jumbo v1, "multipart/signed"

    .line 201
    invoke-static {v0, v1}, Lvj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lvj;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    :cond_2
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->USE_7BIT_TRANSPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v3, "Unable to convert 8bit body part to 7bit"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_3
    const-string/jumbo v1, "quoted-printable"

    invoke-virtual {p0, v1}, Lvf;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
