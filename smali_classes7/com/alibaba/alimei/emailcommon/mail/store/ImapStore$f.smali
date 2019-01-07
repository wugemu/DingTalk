.class public final Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
.super Lvh;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic s:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "folder"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .prologue
    .line 3988
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->s:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-direct {p0}, Lvh;-><init>()V

    .line 3989
    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->o:Ljava/lang/String;

    .line 3990
    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 3991
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 3995
    iput p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->m:I

    .line 3996
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .locals 4
    .param p1, "flag"    # Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4013
    invoke-super {p0, p1, p2}, Lvh;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 4014
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 4015
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
    .line 4001
    invoke-super {p0, p1}, Lvh;->a(Ljava/io/InputStream;)V

    .line 4002
    return-void
.end method

.method public final b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 4006
    invoke-super {p0, p1, p2}, Lvh;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 4007
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4020
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->p()Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V

    .line 4021
    return-void
.end method
