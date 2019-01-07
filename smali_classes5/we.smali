.class public final Lwe;
.super Lvt;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwe$d;,
        Lwe$a;,
        Lwe$c;,
        Lwe$b;
    }
.end annotation


# static fields
.field private static final b:[Lcom/alibaba/alimei/emailcommon/mail/Flag;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lwe$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lwe;->b:[Lcom/alibaba/alimei/emailcommon/mail/Flag;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 10
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3e3

    const/4 v8, 0x0

    const/16 v6, 0x6e

    const/4 v7, 0x1

    .line 100
    invoke-direct {p0, p1}, Lvt;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 63
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lwe;->h:Ljava/util/HashMap;

    .line 105
    :try_start_0
    new-instance v2, Ljava/net/URI;

    iget-object v5, p0, Lwe;->a:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/Account;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "pop3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    iput v8, p0, Lwe;->g:I

    .line 116
    iput v6, p0, Lwe;->d:I

    .line 143
    :goto_0
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lwe;->c:Ljava/lang/String;

    .line 145
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 147
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    iput v5, p0, Lwe;->d:I

    .line 150
    :cond_0
    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 154
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "userInfoParts":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lwe;->e:Ljava/lang/String;

    .line 156
    array-length v5, v4

    if-le v5, v7, :cond_1

    .line 158
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lwe;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .end local v4    # "userInfoParts":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 107
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 109
    .local v3, "use":Ljava/net/URISyntaxException;
    new-instance v5, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->INVALID_POP3_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v7, "Invalid Pop3Store URI"

    invoke-direct {v5, v6, v7, v3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 118
    .end local v3    # "use":Ljava/net/URISyntaxException;
    .restart local v1    # "scheme":Ljava/lang/String;
    .restart local v2    # "uri":Ljava/net/URI;
    :cond_2
    const-string/jumbo v5, "pop3+tls"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    iput v7, p0, Lwe;->g:I

    .line 121
    iput v6, p0, Lwe;->d:I

    goto :goto_0

    .line 123
    :cond_3
    const-string/jumbo v5, "pop3+tls+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    const/4 v5, 0x2

    iput v5, p0, Lwe;->g:I

    .line 126
    iput v6, p0, Lwe;->d:I

    goto :goto_0

    .line 128
    :cond_4
    const-string/jumbo v5, "pop3+ssl+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    const/4 v5, 0x3

    iput v5, p0, Lwe;->g:I

    .line 131
    iput v9, p0, Lwe;->d:I

    goto :goto_0

    .line 133
    :cond_5
    const-string/jumbo v5, "pop3+ssl"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 135
    const/4 v5, 0x4

    iput v5, p0, Lwe;->g:I

    .line 136
    iput v9, p0, Lwe;->d:I

    goto/16 :goto_0

    .line 140
    :cond_6
    new-instance v5, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORED_PROTOCOL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v7, "Unsupported protocol"

    invoke-direct {v5, v6, v7}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v5

    .line 161
    :catch_1
    move-exception v0

    .line 164
    .local v0, "enc":Ljava/io/UnsupportedEncodingException;
    sget-boolean v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 165
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Couldn\'t urldecode username or password."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Lwe;)Lcom/alibaba/alimei/emailcommon/Account;
    .locals 1
    .param p0, "x0"    # Lwe;

    .prologue
    .line 48
    iget-object v0, p0, Lwe;->a:Lcom/alibaba/alimei/emailcommon/Account;

    return-object v0
.end method

.method static synthetic a(Lwe;Lwe$a;)Lwe$a;
    .locals 0
    .param p0, "x0"    # Lwe;
    .param p1, "x1"    # Lwe$a;

    .prologue
    .line 48
    iput-object p1, p0, Lwe;->i:Lwe$a;

    return-object p1
.end method

.method static synthetic b(Lwe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lwe;

    .prologue
    .line 48
    iget-object v0, p0, Lwe;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lwe;)I
    .locals 1
    .param p0, "x0"    # Lwe;

    .prologue
    .line 48
    iget v0, p0, Lwe;->d:I

    return v0
.end method

.method static synthetic d(Lwe;)I
    .locals 1
    .param p0, "x0"    # Lwe;

    .prologue
    .line 48
    iget v0, p0, Lwe;->g:I

    return v0
.end method

.method static synthetic e(Lwe;)Lwe$a;
    .locals 1
    .param p0, "x0"    # Lwe;

    .prologue
    .line 48
    iget-object v0, p0, Lwe;->i:Lwe$a;

    return-object v0
.end method

.method static synthetic f(Lwe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lwe;

    .prologue
    .line 48
    iget-object v0, p0, Lwe;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lwe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lwe;

    .prologue
    .line 48
    iget-object v0, p0, Lwe;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 174
    iget-object v1, p0, Lwe;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 175
    .local v0, "folder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lwe$b;

    .end local v0    # "folder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    invoke-direct {v0, p0, p1}, Lwe$b;-><init>(Lwe;Ljava/lang/String;)V

    .line 178
    .restart local v0    # "folder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    iget-object v1, p0, Lwe;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    return-object v0
.end method

.method public final a(Z)Ljava/util/List;
    .locals 2
    .param p1, "forceListAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 197
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 198
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    const-string/jumbo v1, "INBOX"

    invoke-virtual {p0, v1}, Lwe;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-object v0
.end method

.method public final a()V
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
    const/4 v2, 0x0

    .line 205
    new-instance v0, Lwe$b;

    const-string/jumbo v1, "INBOX"

    invoke-direct {v0, p0, v1}, Lwe$b;-><init>(Lwe;Ljava/lang/String;)V

    .line 206
    .local v0, "folder":Lwe$b;
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v0, v1}, Lwe$b;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 207
    iget-object v1, p0, Lwe;->i:Lwe$a;

    iget-boolean v1, v1, Lwe$a;->d:Z

    if-nez v1, :cond_0

    .line 218
    const-string/jumbo v1, "UIDL"

    .line 2091
    invoke-virtual {v0, v1, v2}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 2376
    :cond_0
    :try_start_0
    const-string/jumbo v1, "QUIT"

    .line 3091
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2386
    :goto_0
    invoke-virtual {v0}, Lwe$b;->i()V

    .line 222
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
