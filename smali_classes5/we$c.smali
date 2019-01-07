.class final Lwe$c;
.super Lvh;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lwe$b;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "folder"    # Lwe$b;

    .prologue
    .line 1164
    invoke-direct {p0}, Lvh;-><init>()V

    .line 1165
    iput-object p1, p0, Lwe$c;->o:Ljava/lang/String;

    .line 1166
    iput-object p2, p0, Lwe$c;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 1167
    const/4 v0, -0x1

    iput v0, p0, Lwe$c;->m:I

    .line 1168
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1172
    iput p1, p0, Lwe$c;->m:I

    .line 1173
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

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1184
    invoke-super {p0, p1, p2}, Lvh;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 1185
    iget-object v0, p0, Lwe$c;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 1186
    return-void
.end method

.method protected final a(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1178
    invoke-super {p0, p1}, Lvh;->a(Ljava/io/InputStream;)V

    .line 1179
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1194
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lwe$c;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 1200
    return-void
.end method
