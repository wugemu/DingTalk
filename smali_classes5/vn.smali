.class public final Lvn;
.super Ljava/lang/Object;
.source "TextBody.java"

# interfaces
.implements Lvp;


# static fields
.field private static final e:[B


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lvn;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lvn;->b:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lvn;->a:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 39
    iget-object v2, p0, Lvn;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lvn;->a:Ljava/lang/String;

    iget-object v3, p0, Lvn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, "bytes":[B
    const-string/jumbo v2, "8bit"

    iget-object v3, p0, Lvn;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 53
    .end local v0    # "bytes":[B
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v0    # "bytes":[B
    :cond_1
    new-instance v1, Lkqd;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lkqd;-><init>(Ljava/io/OutputStream;Z)V

    .line 49
    .local v1, "qp":Lkqd;
    invoke-virtual {v1, v0}, Lkqd;->write([B)V

    .line 50
    invoke-virtual {v1}, Lkqd;->flush()V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lvn;->f:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public final f_()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lvn;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lvn;->a:Ljava/lang/String;

    iget-object v2, p0, Lvn;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    .local v0, "b":[B
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .end local v0    # "b":[B
    :goto_1
    return-object v1

    .line 78
    :cond_0
    sget-object v0, Lvn;->e:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "b":[B
    goto :goto_0

    .line 84
    .end local v0    # "b":[B
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method
