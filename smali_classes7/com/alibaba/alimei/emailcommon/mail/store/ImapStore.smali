.class public Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
.super Lvt;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$b;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$a;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$h;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;

.field private static g:I

.field private static h:I

.field private static i:I

.field private static final j:[Lcom/alibaba/alimei/emailcommon/mail/Flag;

.field private static final k:[Lcom/alibaba/alimei/emailcommon/mail/Message;

.field private static final l:[Ljava/lang/String;

.field private static final x:Ljava/text/SimpleDateFormat;


# instance fields
.field protected c:I

.field public d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

.field private volatile s:Ljava/lang/String;

.field private volatile t:Ljava/lang/String;

.field private volatile u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;

.field private y:Ljava/nio/charset/Charset;

.field private z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    const-class v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    .line 122
    const v0, 0x493e0

    sput v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->g:I

    .line 123
    const/16 v0, 0x1388

    sput v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->h:I

    .line 125
    const/16 v0, 0x64

    sput v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->i:I

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->j:[Lcom/alibaba/alimei/emailcommon/mail/Flag;

    .line 140
    new-array v0, v3, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->k:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 142
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->l:[Ljava/lang/String;

    .line 271
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd-MMM-yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->x:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/emailcommon/Account;I)V
    .locals 12
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "imapStoreType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 314
    invoke-direct {p0, p1}, Lvt;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 151
    iput-object v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->t:Ljava/lang/String;

    .line 152
    iput-object v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->u:Ljava/lang/String;

    .line 276
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d:Ljava/util/LinkedList;

    .line 281
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->e:Ljava/util/LinkedList;

    .line 286
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->f:Ljava/util/LinkedList;

    .line 301
    iput-object v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 315
    iput p2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->c:I

    .line 320
    :try_start_0
    new-instance v3, Ljava/net/URI;

    iget-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v6}, Lcom/alibaba/alimei/emailcommon/Account;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .local v3, "uri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "scheme":Ljava/lang/String;
    const-string/jumbo v6, "imap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 332
    iput v9, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->q:I

    .line 333
    iput v7, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->n:I

    .line 361
    :goto_0
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->m:Ljava/lang/String;

    .line 363
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 365
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v6

    iput v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->n:I

    .line 368
    :cond_0
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 372
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "userInfoParts":[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v10, :cond_8

    .line 375
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->PLAIN:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->r:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    .line 376
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->o:Ljava/lang/String;

    .line 377
    const/4 v6, 0x1

    aget-object v6, v5, v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    .end local v5    # "userInfoParts":[Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 399
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->s:Ljava/lang/String;

    .line 400
    iget-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->s:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->s:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 402
    iput-object v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->s:Ljava/lang/String;

    .line 406
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 408
    new-instance v6, Livp;

    invoke-direct {v6}, Livp;-><init>()V

    const-string/jumbo v7, "X-RFC-3501"

    invoke-virtual {v6, v7}, Livp;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->y:Ljava/nio/charset/Charset;

    .line 409
    return-void

    .line 322
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v4

    .line 324
    .local v4, "use":Ljava/net/URISyntaxException;
    new-array v6, v10, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ", Invalid ImapStore URI."

    aput-object v7, v6, v8

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "errorMsg":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v6, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->INVALID_IMAP_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v6, v7, v1, v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 335
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v4    # "use":Ljava/net/URISyntaxException;
    .restart local v2    # "scheme":Ljava/lang/String;
    .restart local v3    # "uri":Ljava/net/URI;
    :cond_3
    const-string/jumbo v6, "imap+tls"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 337
    iput v8, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->q:I

    .line 338
    iput v7, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->n:I

    goto/16 :goto_0

    .line 340
    :cond_4
    const-string/jumbo v6, "imap+tls+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 342
    iput v10, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->q:I

    .line 343
    iput v7, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->n:I

    goto/16 :goto_0

    .line 345
    :cond_5
    const-string/jumbo v6, "imap+ssl+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 347
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->q:I

    .line 348
    const/16 v6, 0x3e1

    iput v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->n:I

    goto/16 :goto_0

    .line 350
    :cond_6
    const-string/jumbo v6, "imap+ssl"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 352
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->q:I

    .line 353
    const/16 v6, 0x3e1

    iput v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->n:I

    goto/16 :goto_0

    .line 357
    :cond_7
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v7, "Unsupported protocol"

    invoke-static {v6, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORED_PROTOCOL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v8, "Unsupported protocol"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v6

    .line 381
    .restart local v5    # "userInfoParts":[Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    :try_start_2
    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->r:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    .line 382
    const/4 v6, 0x1

    aget-object v6, v5, v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->o:Ljava/lang/String;

    .line 383
    const/4 v6, 0x2

    aget-object v6, v5, v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->p:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 386
    .end local v5    # "userInfoParts":[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 388
    .local v0, "enc":Ljava/io/UnsupportedEncodingException;
    new-array v6, v10, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ", Couldn\'t urldecode username or password."

    aput-object v7, v6, v8

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    .restart local v1    # "errorMsg":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v6, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 392
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 452
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 7165
    iget-object v1, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 452
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 8165
    iget-object v1, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 452
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;Ljava/util/List;)V

    .line 454
    .local v0, "folder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 459
    :goto_0
    return-object v0

    .line 456
    .end local v0    # "folder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .restart local v0    # "folder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    goto :goto_0
.end method

.method private static a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .locals 4
    .param p0, "connection"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    .param p1, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 618
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "error_unable_to_connect"

    aput-object v3, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "errorMsg":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-boolean v1, Lzb;->b:Z

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 624
    :cond_0
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_2

    .line 9024
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 626
    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->SSL_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    if-ne v1, v2, :cond_1

    .line 627
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SSL_CONNECTION_NOT_AVAILABLE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v1, v2, v0, p1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 634
    :goto_0
    return-object v1

    .line 629
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->TIMED_OUT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v1, v2, v0, p1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 631
    :cond_2
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_3

    .line 632
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->HOST_NOT_RESOLVE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v1, v2, v0, p1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 634
    :cond_3
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v1, v2, v0, p1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Z)Ljava/util/List;
    .locals 17
    .param p1, "connection"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    .param p2, "LSUB"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 552
    if-eqz p2, :cond_5

    const-string/jumbo v3, "LSUB"

    .line 554
    .local v3, "commandResponse":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 556
    .local v6, "folders":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " \"\" %s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->h()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "*"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 557
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 8904
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v11

    .line 560
    .local v11, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 562
    .local v10, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 564
    const/4 v9, 0x1

    .line 565
    .local v9, "includeFolder":Z
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "folder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->u:Ljava/lang/String;

    if-nez v13, :cond_1

    .line 569
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->u:Ljava/lang/String;

    .line 570
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->t:Ljava/lang/String;

    .line 573
    :cond_1
    sget-object v13, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->INBOX:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 582
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v13, v14, :cond_2

    .line 584
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 586
    :cond_2
    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 588
    const/4 v9, 0x0

    .line 593
    :cond_3
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getList(I)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v2

    .line 594
    .local v2, "attributes":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v7, "formatAttributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v4

    .local v4, "count":I
    :goto_2
    if-ge v8, v4, :cond_6

    .line 597
    invoke-virtual {v2, v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "attribute":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    const-string/jumbo v13, "\\NoSelect"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 603
    const/4 v9, 0x0

    .line 595
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 552
    .end local v1    # "attribute":Ljava/lang/String;
    .end local v2    # "attributes":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v3    # "commandResponse":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v5    # "folder":Ljava/lang/String;
    .end local v6    # "folders":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .end local v7    # "formatAttributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v9    # "includeFolder":Z
    .end local v10    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .end local v11    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_5
    const-string/jumbo v3, "LIST"

    goto/16 :goto_0

    .line 606
    .restart local v2    # "attributes":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v3    # "commandResponse":Ljava/lang/String;
    .restart local v4    # "count":I
    .restart local v5    # "folder":Ljava/lang/String;
    .restart local v6    # "folders":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .restart local v7    # "formatAttributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "i":I
    .restart local v9    # "includeFolder":Z
    .restart local v10    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .restart local v11    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_6
    if-eqz v9, :cond_0

    .line 608
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 612
    .end local v2    # "attributes":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v4    # "count":I
    .end local v5    # "folder":Ljava/lang/String;
    .end local v7    # "formatAttributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v9    # "includeFolder":Z
    .end local v10    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :cond_7
    const-string/jumbo v12, "INBOX"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 613
    return-object v6
.end method

.method static synthetic b(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->n:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->q:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->t:Ljava/lang/String;

    return-object p1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\\"

    const-string/jumbo v2, "\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->r:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 873
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->y:Ljava/nio/charset/Charset;

    invoke-virtual {v4, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 874
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v0, v4, [B

    .line 875
    .local v0, "b":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 876
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "US-ASCII"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 878
    .end local v0    # "b":[B
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 880
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, ", Unable to encode folder name "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "errorMsg":Ljava/lang/String;
    sget-object v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v4, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static synthetic e(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->o:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 898
    :try_start_0
    const-string/jumbo v4, "US-ASCII"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 899
    .local v1, "encoded":[B
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->y:Ljava/nio/charset/Charset;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 900
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 902
    .end local v0    # "cb":Ljava/nio/CharBuffer;
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v3

    .line 904
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, ", Unable to decode folder name "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "errorMsg":Ljava/lang/String;
    sget-object v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v4, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static synthetic f(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->k:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->i:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Lcom/alibaba/alimei/emailcommon/Account;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a:Lcom/alibaba/alimei/emailcommon/Account;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 464
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->t:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->s:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 468
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "tmpPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->u:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->u:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "tmpDelim":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    iput-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->t:Ljava/lang/String;

    .line 488
    .end local v0    # "tmpDelim":Ljava/lang/String;
    .end local v1    # "tmpPrefix":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->t:Ljava/lang/String;

    return-object v2

    .line 469
    .restart local v1    # "tmpPrefix":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 474
    .restart local v0    # "tmpDelim":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->t:Ljava/lang/String;

    goto :goto_1

    .line 480
    :cond_3
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->t:Ljava/lang/String;

    goto :goto_1

    .line 485
    .end local v0    # "tmpDelim":Ljava/lang/String;
    .end local v1    # "tmpPrefix":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->t:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic h(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->s:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->c:I

    packed-switch v0, :pswitch_data_0

    .line 702
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d:Ljava/util/LinkedList;

    :goto_0
    return-object v0

    .line 696
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d:Ljava/util/LinkedList;

    goto :goto_0

    .line 698
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->e:Ljava/util/LinkedList;

    goto :goto_0

    .line 700
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->f:Ljava/util/LinkedList;

    goto :goto_0

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic i(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->v:Z

    return v0
.end method

.method private j()Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->i()Ljava/util/LinkedList;

    move-result-object v1

    .line 714
    .local v1, "imapConnections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;>;"
    monitor-enter v1

    .line 717
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    if-eqz v0, :cond_0

    .line 721
    :try_start_1
    const-string/jumbo v2, "NOOP"

    .line 9904
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :cond_0
    if-nez v0, :cond_1

    .line 731
    :try_start_2
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    .end local v0    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$h;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$h;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)V

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;-><init>(Lwx;)V

    .line 733
    .restart local v0    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b()V

    .line 738
    :cond_1
    monitor-exit v1

    return-object v0

    .line 726
    :catch_0
    move-exception v2

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 727
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    goto :goto_0

    .line 739
    .end local v0    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method static synthetic j(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->j()Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->i()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 428
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 5165
    iget-object v1, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 428
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 6165
    iget-object v1, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 428
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    invoke-direct {v0, p0, p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)V

    .line 430
    .local v0, "folder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 435
    :goto_0
    return-object v0

    .line 432
    .end local v0    # "folder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->z:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .restart local v0    # "folder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    goto :goto_0
.end method

.method public final a(Z)Ljava/util/List;
    .locals 13
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 497
    .local v1, "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->j()Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-result-object v1

    .line 499
    const/4 v10, 0x0

    invoke-direct {p0, v1, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Z)Ljava/util/List;

    move-result-object v0

    .line 500
    .local v0, "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    iget-object v10, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/Account;->m()Z

    move-result v10

    if-nez v10, :cond_0

    .line 520
    .end local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    :goto_0
    return-object v0

    .line 506
    .restart local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    :cond_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 507
    .local v6, "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 508
    .local v8, "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x1

    invoke-direct {p0, v1, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Z)Ljava/util/List;

    move-result-object v9

    .line 509
    .local v9, "subscribedFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 511
    .local v7, "subscribedFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    invoke-virtual {v7}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 523
    .end local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .end local v6    # "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .end local v7    # "subscribedFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v8    # "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "subscribedFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    :catch_0
    move-exception v4

    .line 525
    .local v4, "ioe":Ljava/io/IOException;
    const/4 v10, 0x2

    :try_start_1
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, ", Unable to get folder list."

    aput-object v12, v10, v11

    invoke-static {v10}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "errorMsg":Ljava/lang/String;
    sget-object v10, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v10, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 528
    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 531
    :cond_1
    new-instance v10, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v11, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v10, v11, v2, v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    throw v10

    .line 513
    .restart local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .restart local v6    # "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .restart local v8    # "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "subscribedFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    :cond_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 515
    .local v3, "folder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 517
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 533
    .end local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .end local v3    # "folder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v6    # "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .end local v8    # "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "subscribedFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    :catch_1
    move-exception v5

    .line 535
    .local v5, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    const/4 v10, 0x2

    :try_start_3
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, ", Unable to get folder list."

    aput-object v12, v10, v11

    invoke-static {v10}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .restart local v2    # "errorMsg":Ljava/lang/String;
    sget-object v10, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v10, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    if-eqz v1, :cond_4

    .line 538
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 540
    :cond_4
    new-instance v10, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v11

    invoke-direct {v10, v11, v2, v5}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v5    # "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .restart local v0    # "allFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .restart local v6    # "resultFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    .restart local v8    # "subscribedFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "subscribedFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    :cond_5
    move-object v0, v6

    .line 520
    goto/16 :goto_0
.end method

.method public final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 681
    .local v0, "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :try_start_0
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$h;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$h;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)V

    invoke-direct {v1, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;-><init>(Lwx;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v0    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    .local v1, "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b()V

    .line 683
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 690
    return-void

    .line 685
    .end local v1    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    .restart local v0    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :catch_0
    move-exception v3

    .line 687
    .local v3, "ioe":Ljava/io/IOException;
    :goto_0
    invoke-static {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 689
    .local v2, "exception":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    throw v2

    .line 685
    .end local v0    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    .end local v2    # "exception":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v1    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    .restart local v0    # "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;)V
    .locals 5
    .param p1, "connection"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->i()Ljava/util/LinkedList;

    move-result-object v1

    .line 745
    .local v1, "imapConnections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    :try_start_0
    const-string/jumbo v3, "logout"

    .line 10904
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 754
    monitor-enter v1

    .line 756
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 758
    monitor-exit v1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 758
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 749
    :catch_0
    move-exception v2

    .line 750
    .local v2, "ioException":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 754
    monitor-enter v1

    .line 756
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 758
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 751
    .end local v2    # "ioException":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 752
    .local v0, "exception":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :try_start_4
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 754
    monitor-enter v1

    .line 756
    :try_start_5
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 758
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 754
    .end local v0    # "exception":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :catchall_3
    move-exception v3

    monitor-enter v1

    .line 756
    :try_start_6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 758
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v3

    :catchall_4
    move-exception v3

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v3
.end method

.method public final b(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 4489
    iget-boolean v0, p1, Lcom/alibaba/alimei/emailcommon/Account;->b:Z

    .line 414
    iput-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->v:Z

    .line 4497
    iget-object v0, p1, Lcom/alibaba/alimei/emailcommon/Account;->c:Ljava/lang/String;

    .line 415
    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->w:Ljava/lang/String;

    .line 417
    iget-boolean v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->v:Z

    if-eqz v0, :cond_0

    .line 418
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->p:Ljava/lang/String;

    .line 421
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Lwl;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->i()Ljava/util/LinkedList;

    move-result-object v2

    .line 641
    .local v2, "imapConnections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;>;"
    const/4 v1, 0x0

    .line 642
    .local v1, "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    monitor-enter v2

    .line 644
    :try_start_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    .line 645
    .local v0, "aConnection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    if-eqz v0, :cond_0

    .line 646
    move-object v1, v0

    .line 650
    .end local v0    # "aConnection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    if-eqz v1, :cond_2

    .line 653
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a()Lwl;

    move-result-object v3

    .line 655
    :goto_0
    return-object v3

    .line 650
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 655
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final e()Lwl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 663
    .local v0, "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->j()Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b()V

    .line 665
    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->g:Lwl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 667
    :catch_0
    move-exception v2

    .line 669
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {v0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v1

    .line 671
    .local v1, "exception":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    throw v1
.end method
