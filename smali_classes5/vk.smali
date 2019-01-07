.class public final Lvk;
.super Lvh;
.source "Pop3Message.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lvh;-><init>()V

    .line 13
    iput-object p1, p0, Lvk;->o:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lvk;->m:I

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .locals 4
    .param p1, "flag"    # Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-super {p0, p1, p2}, Lvh;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 29
    iget-object v0, p0, Lvk;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 30
    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1}, Lvh;->a(Ljava/io/InputStream;)V

    .line 24
    return-void
.end method
