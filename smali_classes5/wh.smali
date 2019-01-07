.class public final Lwh;
.super Lvt;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwh$a;,
        Lwh$g;,
        Lwh$c;,
        Lwh$b;,
        Lwh$d;,
        Lwh$f;,
        Lwh$h;,
        Lwh$e;
    }
.end annotation


# static fields
.field private static final d:[Lcom/alibaba/alimei/emailcommon/mail/Flag;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Lcom/alibaba/alimei/emailcommon/mail/Message;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private g:S

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/net/URI;

.field private p:Z

.field private q:Lwh$g;

.field private r:Lorg/apache/http/protocol/HttpContext;

.field private s:Lorg/apache/http/client/CookieStore;

.field private t:S

.field private u:Ljava/lang/String;

.field private v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lwh$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/Flag;->ANSWERED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lwh;->d:[Lcom/alibaba/alimei/emailcommon/mail/Flag;

    .line 97
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lwh;->e:[Ljava/lang/String;

    .line 99
    new-array v0, v3, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    sput-object v0, Lwh;->f:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 12
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lvt;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 116
    const/4 v9, 0x0

    iput-object v9, p0, Lwh;->q:Lwh$g;

    .line 117
    const/4 v9, 0x0

    iput-object v9, p0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    .line 119
    const/4 v9, 0x0

    iput-object v9, p0, Lwh;->s:Lorg/apache/http/client/CookieStore;

    .line 120
    const/4 v9, 0x0

    iput-short v9, p0, Lwh;->t:S

    .line 123
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lwh;->v:Ljava/util/HashMap;

    .line 138
    :try_start_0
    new-instance v9, Ljava/net/URI;

    iget-object v10, p0, Lwh;->a:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/Account;->a()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lwh;->o:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v9, p0, Lwh;->o:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "scheme":Ljava/lang/String;
    const-string/jumbo v9, "webdav"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 148
    const/4 v9, 0x0

    iput-short v9, p0, Lwh;->g:S

    .line 171
    :goto_0
    iget-object v9, p0, Lwh;->o:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lwh;->k:Ljava/lang/String;

    .line 172
    iget-object v9, p0, Lwh;->k:Ljava/lang/String;

    const-string/jumbo v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 174
    iget-object v9, p0, Lwh;->k:Ljava/lang/String;

    const-string/jumbo v10, "://"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "hostParts":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 177
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iput-object v9, p0, Lwh;->k:Ljava/lang/String;

    .line 181
    .end local v2    # "hostParts":[Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lwh;->o:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 185
    :try_start_1
    iget-object v9, p0, Lwh;->o:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "userInfoParts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string/jumbo v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lwh;->h:Ljava/lang/String;

    .line 187
    iget-object v9, p0, Lwh;->h:Ljava/lang/String;

    const-string/jumbo v10, "\\\\"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, "userParts":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_8

    .line 191
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, p0, Lwh;->i:Ljava/lang/String;

    .line 197
    :goto_1
    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 199
    const/4 v9, 0x1

    aget-object v9, v7, v9

    const-string/jumbo v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lwh;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    .end local v7    # "userInfoParts":[Ljava/lang/String;
    .end local v8    # "userParts":[Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v9, p0, Lwh;->o:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "pathParts":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v0, v4

    .local v0, "count":I
    :goto_3
    if-ge v3, v0, :cond_b

    .line 215
    if-nez v3, :cond_9

    .line 217
    const/4 v9, 0x0

    aget-object v9, v4, v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    aget-object v9, v4, v9

    .line 218
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 220
    const/4 v9, 0x0

    aget-object v9, v4, v9

    iput-object v9, p0, Lwh;->l:Ljava/lang/String;

    .line 213
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 140
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "pathParts":[Ljava/lang/String;
    .end local v5    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 142
    .local v6, "use":Ljava/net/URISyntaxException;
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->INVALID_WEBDAV_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v11, "Invalid WebDavStore URI"

    invoke-direct {v9, v10, v11, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 150
    .end local v6    # "use":Ljava/net/URISyntaxException;
    .restart local v5    # "scheme":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "webdav+ssl"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 152
    const/4 v9, 0x3

    iput-short v9, p0, Lwh;->g:S

    goto/16 :goto_0

    .line 154
    :cond_4
    const-string/jumbo v9, "webdav+ssl+"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 156
    const/4 v9, 0x4

    iput-short v9, p0, Lwh;->g:S

    goto/16 :goto_0

    .line 158
    :cond_5
    const-string/jumbo v9, "webdav+tls"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 160
    const/4 v9, 0x1

    iput-short v9, p0, Lwh;->g:S

    goto/16 :goto_0

    .line 162
    :cond_6
    const-string/jumbo v9, "webdav+tls+"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 164
    const/4 v9, 0x2

    iput-short v9, p0, Lwh;->g:S

    goto/16 :goto_0

    .line 168
    :cond_7
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORED_PROTOCOL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v11, "Unsupported protocol"

    invoke-direct {v9, v10, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v9

    .line 195
    .restart local v7    # "userInfoParts":[Ljava/lang/String;
    .restart local v8    # "userParts":[Ljava/lang/String;
    :cond_8
    :try_start_2
    iget-object v9, p0, Lwh;->h:Ljava/lang/String;

    iput-object v9, p0, Lwh;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 202
    .end local v7    # "userInfoParts":[Ljava/lang/String;
    .end local v8    # "userParts":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 205
    .local v1, "enc":Ljava/io/UnsupportedEncodingException;
    sget-boolean v9, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 206
    sget-object v9, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Couldn\'t urldecode username or password."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 223
    .end local v1    # "enc":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "pathParts":[Ljava/lang/String;
    :cond_9
    const/4 v9, 0x1

    if-ne v3, v9, :cond_a

    .line 225
    const/4 v9, 0x1

    aget-object v9, v4, v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    aget-object v9, v4, v9

    .line 226
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 228
    const/4 v9, 0x1

    aget-object v9, v4, v9

    iput-object v9, p0, Lwh;->m:Ljava/lang/String;

    goto/16 :goto_4

    .line 231
    :cond_a
    const/4 v9, 0x2

    if-ne v3, v9, :cond_2

    .line 233
    const/4 v9, 0x2

    aget-object v9, v4, v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    aget-object v9, v4, v9

    .line 234
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 236
    const/4 v9, 0x2

    aget-object v9, v4, v9

    iput-object v9, p0, Lwh;->n:Ljava/lang/String;

    goto/16 :goto_4

    .line 241
    :cond_b
    iget-object v9, p0, Lwh;->l:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lwh;->l:Ljava/lang/String;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 243
    :cond_c
    const-string/jumbo v9, "/Exchange"

    iput-object v9, p0, Lwh;->l:Ljava/lang/String;

    .line 250
    :cond_d
    :goto_5
    iget-object v9, p0, Lwh;->n:Ljava/lang/String;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lwh;->n:Ljava/lang/String;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 252
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lwh;->i:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lwh;->n:Ljava/lang/String;

    .line 259
    :cond_f
    :goto_6
    iget-object v9, p0, Lwh;->m:Ljava/lang/String;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lwh;->m:Ljava/lang/String;

    const-string/jumbo v10, ""

    .line 260
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lwh;->m:Ljava/lang/String;

    const-string/jumbo v10, "/"

    .line 261
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 263
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lwh;->m:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lwh;->m:Ljava/lang/String;

    .line 268
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lwh;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lwh;->l:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lwh;->n:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lwh;->b:Ljava/lang/String;

    .line 270
    iget-short v9, p0, Lwh;->g:S

    const/4 v10, 0x4

    if-ne v9, v10, :cond_13

    const/4 v9, 0x1

    :goto_7
    iput-boolean v9, p0, Lwh;->p:Z

    .line 271
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Basic "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lwh;->h:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lwh;->j:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lva;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lwh;->c:Ljava/lang/String;

    .line 272
    return-void

    .line 245
    :cond_11
    iget-object v9, p0, Lwh;->l:Ljava/lang/String;

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lwh;->l:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lwh;->l:Ljava/lang/String;

    goto/16 :goto_5

    .line 254
    :cond_12
    iget-object v9, p0, Lwh;->n:Ljava/lang/String;

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 256
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lwh;->n:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lwh;->n:Ljava/lang/String;

    goto/16 :goto_6

    .line 270
    :cond_13
    const/4 v9, 0x0

    goto :goto_7
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "messageBody"    # Lorg/apache/http/entity/StringEntity;
    .param p5, "tryAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/entity/StringEntity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 951
    .local p4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 953
    .local v13, "istream":Ljava/io/InputStream;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 955
    :cond_0
    const/4 v2, 0x0

    .line 1041
    :goto_0
    return-object v2

    .line 958
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lwh;->d()Lwh$g;

    move-result-object v10

    .line 963
    .local v10, "httpclient":Lwh$g;
    :try_start_0
    new-instance v11, Lwh$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lwh$c;-><init>(Lwh;Ljava/lang/String;)V

    .line 967
    .local v11, "httpmethod":Lwh$c;
    if-eqz p3, :cond_2

    .line 969
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lwh$c;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 972
    :cond_2
    if-eqz p4, :cond_4

    .line 974
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 976
    .local v9, "headerName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v9, v2}, Lwh$c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1026
    .end local v9    # "headerName":Ljava/lang/String;
    .end local v11    # "httpmethod":Lwh$c;
    :catch_0
    move-exception v16

    .line 1028
    .local v16, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1029
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UnsupportedEncodingException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\nTrace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_3
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORT_ENCODING_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v4, "UnsupportedEncodingException"

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 980
    .end local v16    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v11    # "httpmethod":Lwh$c;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-short v2, v0, Lwh;->t:S

    if-nez v2, :cond_7

    .line 982
    if-eqz p5, :cond_5

    invoke-direct/range {p0 .. p0}, Lwh;->g()Z

    move-result v2

    if-nez v2, :cond_8

    .line 984
    :cond_5
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_AUTHENTICATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v4, "Unable to authenticate in sendRequest()."

    invoke-direct {v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    .end local v11    # "httpmethod":Lwh$c;
    :catch_1
    move-exception v12

    .line 1035
    .local v12, "ioe":Ljava/io/IOException;
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1036
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\nTrace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v12}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_6
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v4, "IOException"

    invoke-direct {v2, v3, v4, v12}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 987
    .end local v12    # "ioe":Ljava/io/IOException;
    .restart local v11    # "httpmethod":Lwh$c;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-short v2, v0, Lwh;->t:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 989
    const-string/jumbo v2, "Authorization"

    move-object/from16 v0, p0

    iget-object v3, v0, Lwh;->c:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Lwh$c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lwh$c;->a(Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v10, v11, v2}, Lwh$g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 994
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 996
    .local v15, "statusCode":I
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 998
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    const/16 v2, 0x191

    if-ne v15, v2, :cond_9

    .line 1000
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->USERNAME_OR_PASSWORD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v4, "Invalid username or password for Basic authentication."

    invoke-direct {v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v2

    .line 1002
    :cond_9
    const/16 v2, 0x1b8

    if-ne v15, v2, :cond_d

    .line 1004
    if-eqz p5, :cond_c

    move-object/from16 v0, p0

    iget-short v2, v0, Lwh;->t:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 1007
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lwh;->a(Lwh$a;)V

    .line 1008
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lwh;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;

    .line 1021
    :cond_a
    if-eqz v8, :cond_b

    .line 1023
    invoke-static {v8}, Lwh$g;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v13

    :cond_b
    move-object v2, v13

    .line 1041
    goto/16 :goto_0

    .line 1012
    :cond_c
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_AUTHENTICATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v4, "Authentication failure in sendRequest()."

    invoke-direct {v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v2

    .line 1015
    :cond_d
    const/16 v2, 0xc8

    if-lt v15, v2, :cond_e

    const/16 v2, 0x12c

    if-lt v15, v2, :cond_a

    .line 1017
    :cond_e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error with code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " during request processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1018
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 11
    .param p0, "istream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 862
    const/4 v2, 0x0

    .line 864
    .local v2, "formAction":Ljava/lang/String;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x1000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 868
    .local v5, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "tempText":Ljava/lang/String;
    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    .line 871
    const-string/jumbo v7, " action="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 873
    const-string/jumbo v7, " action="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "actionParts":[Ljava/lang/String;
    array-length v7, v0

    if-le v7, v9, :cond_0

    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_0

    .line 876
    aget-object v7, v0, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 877
    .local v3, "openQuote":C
    aget-object v7, v0, v9

    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 878
    .local v1, "closePos":I
    if-le v1, v9, :cond_0

    .line 880
    aget-object v7, v0, v9

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 882
    const/16 v7, 0x3f

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 883
    .local v4, "quesPos":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 885
    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 892
    .end local v0    # "actionParts":[Ljava/lang/String;
    .end local v1    # "closePos":I
    .end local v3    # "openQuote":C
    .end local v4    # "quesPos":I
    :cond_1
    return-object v2
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1147
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1149
    .local v1, "ps":Ljava/io/PrintStream;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1150
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 1152
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic a(Lwh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lwh;

    .prologue
    .line 81
    iget-object v0, p0, Lwh;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lwh;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lwh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    .line 5422
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 5423
    const-string/jumbo v1, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5424
    const-string/jumbo v1, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5425
    const-string/jumbo v1, "SELECT \"DAV:visiblecount\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5426
    const-string/jumbo v1, " FROM \"\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5427
    const-string/jumbo v1, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND \"urn:schemas:httpmail:read\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 5428
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5429
    const-string/jumbo v1, " GROUP BY \"DAV:ishidden\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5430
    const-string/jumbo v1, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5431
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method static synthetic a(Lwh;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lwh;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    invoke-static {p1}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lwh;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lwh;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 81
    .line 5481
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x258

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 5482
    const-string/jumbo v0, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5483
    const-string/jumbo v0, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5484
    const-string/jumbo v0, "SELECT \"urn:schemas:httpmail:read\", \"DAV:uid\"\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5485
    const-string/jumbo v0, " FROM \"\"\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5486
    const-string/jumbo v0, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5487
    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 5489
    if-eqz v0, :cond_0

    .line 5491
    const-string/jumbo v3, "  OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5494
    :cond_0
    const-string/jumbo v3, " \"DAV:uid\"=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5497
    :cond_1
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5498
    const-string/jumbo v0, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5499
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method static synthetic a(Lwh;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "x0"    # Lwh;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 81
    .line 4556
    if-eqz p2, :cond_0

    const-string/jumbo v0, "move"

    .line 4557
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v1, 0x258

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4558
    const-string/jumbo v1, "<?xml version=\'1.0\' ?>\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4559
    const-string/jumbo v1, "<a:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v3, " xmlns:a=\'DAV:\' xmlns:b=\'urn:schemas:httpmail:\'>\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4560
    const-string/jumbo v1, "<a:target>\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4561
    array-length v3, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 4563
    const-string/jumbo v5, " <a:href>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "</a:href>\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4561
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4556
    :cond_0
    const-string/jumbo v0, "copy"

    goto :goto_0

    .line 4565
    :cond_1
    const-string/jumbo v1, "</a:target>\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4567
    const-string/jumbo v1, "</a:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4568
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lwh$b;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "messageBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lwh$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1057
    .local p4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lwh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lwh$b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lwh$b;
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "messageBody"    # Ljava/lang/String;
    .param p5, "needsParsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lwh$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1064
    .local p4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lwh$b;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lwh$b;-><init>(Lwh;)V

    .line 1065
    .local v7, "dataset":Lwh$b;
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1067
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processRequest url = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', method = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', messageBody = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move-object v8, v7

    .line 1138
    .end local v7    # "dataset":Lwh$b;
    .local v8, "dataset":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 1077
    .end local v8    # "dataset":Ljava/lang/Object;
    .restart local v7    # "dataset":Lwh$b;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lwh;->d()Lwh$g;

    .line 1081
    const/4 v4, 0x0

    .line 1082
    .local v4, "messageEntity":Lorg/apache/http/entity/StringEntity;
    if-eqz p3, :cond_3

    .line 1084
    :try_start_0
    new-instance v11, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1085
    .end local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .local v11, "messageEntity":Lorg/apache/http/entity/StringEntity;
    :try_start_1
    const-string/jumbo v1, "text/xml"

    invoke-virtual {v11, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v11

    .line 1087
    .end local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    :cond_3
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lwh;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Ljava/util/HashMap;Z)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v10

    .line 1088
    .local v10, "istream":Ljava/io/InputStream;
    if-eqz v10, :cond_4

    if-eqz p5, :cond_4

    .line 1093
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v16

    .line 1094
    .local v16, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v15

    .line 1095
    .local v15, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v15}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v18

    .line 1096
    .local v18, "xr":Lorg/xml/sax/XMLReader;
    new-instance v12, Lwh$f;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lwh$f;-><init>(Lwh;)V

    .line 1098
    .local v12, "myHandler":Lwh$f;
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1100
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 4231
    iget-object v7, v12, Lwh$f;->a:Lwh$b;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1120
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .end local v12    # "myHandler":Lwh$f;
    .end local v15    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v16    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v18    # "xr":Lorg/xml/sax/XMLReader;
    :cond_4
    move-object v8, v7

    .line 1138
    .restart local v8    # "dataset":Ljava/lang/Object;
    goto :goto_0

    .line 1104
    .end local v8    # "dataset":Ljava/lang/Object;
    :catch_0
    move-exception v14

    .line 1106
    .local v14, "se":Lorg/xml/sax/SAXException;
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1107
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SAXException in processRequest() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nTrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_5
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_SAX_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v3, "SAXException in processRequest() "

    invoke-direct {v1, v2, v3, v14}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1123
    .end local v10    # "istream":Ljava/io/InputStream;
    .end local v14    # "se":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v17

    .line 1125
    .local v17, "uee":Ljava/io/UnsupportedEncodingException;
    :goto_1
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1126
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UnsupportedEncodingException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nTrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_6
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORT_ENCODING_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v3, "UnsupportedEncodingException in processRequest() "

    move-object/from16 v0, v17

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1111
    .end local v17    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v10    # "istream":Ljava/io/InputStream;
    :catch_2
    move-exception v13

    .line 1113
    .local v13, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 1114
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ParserConfigurationException in processRequest() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nTrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1115
    invoke-static {v13}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1114
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_7
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_PARSE_CONFIG_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v3, "ParserConfigurationException in processRequest() "

    invoke-direct {v1, v2, v3, v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1130
    .end local v10    # "istream":Ljava/io/InputStream;
    .end local v13    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v9

    .line 1132
    .local v9, "ioe":Ljava/io/IOException;
    :goto_2
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 1133
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nTrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_8
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v3, "IOException in processRequest() "

    invoke-direct {v1, v2, v3, v9}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1130
    .end local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    :catch_4
    move-exception v9

    move-object v4, v11

    .end local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    goto :goto_2

    .line 1123
    .end local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    :catch_5
    move-exception v17

    move-object v4, v11

    .end local v11    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v4    # "messageEntity":Lorg/apache/http/entity/StringEntity;
    goto/16 :goto_1
.end method

.method static synthetic a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lwh$b;
    .locals 1
    .param p0, "x0"    # Lwh;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lwh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lwh$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lwh$b;
    .locals 6
    .param p0, "x0"    # Lwh;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/HashMap;
    .param p5, "x5"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lwh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lwh$b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lwh$a;)V
    .locals 24
    .param p1, "info"    # Lwh$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->s:Lorg/apache/http/client/CookieStore;

    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lwh;->d()Lwh$g;

    move-result-object v15

    .line 738
    .local v15, "httpClient":Lwh$g;
    if-eqz p1, :cond_3

    .line 740
    move-object/from16 v0, p1

    iget-object v0, v0, Lwh$a;->c:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 751
    .local v18, "loginUrl":Ljava/lang/String;
    :goto_0
    new-instance v20, Lwh$c;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lwh$c;-><init>(Lwh;Ljava/lang/String;)V

    .line 752
    .local v20, "request":Lwh$c;
    const-string/jumbo v4, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lwh$c;->a(Ljava/lang/String;)V

    .line 755
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v19, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "destination"

    move-object/from16 v0, p0

    iget-object v6, v0, Lwh;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "username"

    move-object/from16 v0, p0

    iget-object v6, v0, Lwh;->h:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "password"

    move-object/from16 v0, p0

    iget-object v6, v0, Lwh;->j:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "flags"

    const-string/jumbo v6, "0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "SubmitCreds"

    const-string/jumbo v6, "Log+On"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "forcedownlevel"

    const-string/jumbo v6, "0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v5, "trusted"

    const-string/jumbo v6, "0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 765
    .local v14, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lwh$c;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v4}, Lwh$g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 768
    .local v22, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    .line 770
    .local v23, "statusCode":I
    const/16 v4, 0xc8

    move/from16 v0, v23

    if-lt v0, v4, :cond_0

    const/16 v4, 0x12c

    move/from16 v0, v23

    if-ge v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->s:Lorg/apache/http/client/CookieStore;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->s:Lorg/apache/http/client/CookieStore;

    .line 771
    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 778
    :cond_0
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lwh$g;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lwh;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 779
    .local v12, "formAction":Ljava/lang/String;
    if-nez v12, :cond_9

    .line 782
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Lwh$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Lwh$a;->d:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 784
    move-object/from16 v0, p1

    iget-object v0, v0, Lwh$a;->d:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 786
    new-instance v20, Lwh$c;

    .end local v20    # "request":Lwh$c;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lwh$c;-><init>(Lwh;Ljava/lang/String;)V

    .line 787
    .restart local v20    # "request":Lwh$c;
    const-string/jumbo v4, "GET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lwh$c;->a(Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v4}, Lwh$g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 790
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lwh$g;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lwh;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v20

    .line 793
    .end local v20    # "request":Lwh$c;
    .local v21, "request":Lwh$c;
    :goto_1
    if-eqz v12, :cond_8

    .line 797
    :try_start_0
    new-instance v13, Ljava/net/URI;

    invoke-direct {v13, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 798
    .local v13, "formActionUri":Ljava/net/URI;
    new-instance v17, Ljava/net/URI;

    invoke-direct/range {v17 .. v18}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 800
    .local v17, "loginUri":Ljava/net/URI;
    invoke-virtual {v13}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 803
    move-object/from16 v18, v12

    .line 828
    :goto_2
    new-instance v20, Lwh$c;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lwh$c;-><init>(Lwh;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v21    # "request":Lwh$c;
    .restart local v20    # "request":Lwh$c;
    :try_start_1
    const-string/jumbo v4, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lwh$c;->a(Ljava/lang/String;)V

    .line 830
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lwh$c;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v4}, Lwh$g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 847
    .end local v12    # "formAction":Ljava/lang/String;
    .end local v13    # "formActionUri":Ljava/net/URI;
    .end local v17    # "loginUri":Ljava/net/URI;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->s:Lorg/apache/http/client/CookieStore;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->s:Lorg/apache/http/client/CookieStore;

    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 849
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput-short v4, v0, Lwh;->t:S

    .line 850
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lwh;->u:Ljava/lang/String;

    .line 852
    :cond_2
    return-void

    .line 742
    .end local v14    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v18    # "loginUrl":Ljava/lang/String;
    .end local v19    # "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v20    # "request":Lwh$c;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    .end local v23    # "statusCode":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->u:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lwh;->u:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lwh;->u:Ljava/lang/String;

    move-object/from16 v18, v0

    .restart local v18    # "loginUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 748
    .end local v18    # "loginUrl":Ljava/lang/String;
    :cond_4
    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->WEBDA_LOGIN_URL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v6, "No valid login URL available for form-based authentication."

    invoke-direct {v4, v5, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v4

    .line 808
    .restart local v12    # "formAction":Ljava/lang/String;
    .restart local v13    # "formActionUri":Ljava/net/URI;
    .restart local v14    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v17    # "loginUri":Ljava/net/URI;
    .restart local v18    # "loginUrl":Ljava/lang/String;
    .restart local v19    # "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v21    # "request":Lwh$c;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    .restart local v23    # "statusCode":I
    :cond_5
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 809
    .local v8, "urlPath":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v8, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 810
    .local v16, "lastPathPos":I
    if-ltz v16, :cond_6

    .line 812
    const/4 v4, 0x0

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 813
    invoke-virtual {v8, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 817
    :cond_6
    new-instance v3, Ljava/net/URI;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 818
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 820
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    .local v3, "finalUri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    goto/16 :goto_2

    .line 833
    .end local v3    # "finalUri":Ljava/net/URI;
    .end local v8    # "urlPath":Ljava/lang/String;
    .end local v13    # "formActionUri":Ljava/net/URI;
    .end local v16    # "lastPathPos":I
    .end local v17    # "loginUri":Ljava/net/URI;
    :catch_0
    move-exception v11

    move-object/from16 v20, v21

    .line 835
    .end local v21    # "request":Lwh$c;
    .local v11, "e":Ljava/net/URISyntaxException;
    .restart local v20    # "request":Lwh$c;
    :goto_3
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 836
    sget-object v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "URISyntaxException caught "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\nTrace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v11}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_7
    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->INVALID_WEBDAV_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v6, "URISyntaxException caught"

    invoke-direct {v4, v5, v6, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 843
    .end local v11    # "e":Ljava/net/URISyntaxException;
    .end local v20    # "request":Lwh$c;
    .restart local v21    # "request":Lwh$c;
    :cond_8
    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->INVALID_WEBDAV_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v6, "A valid URL for Exchange authentication could not be found."

    invoke-direct {v4, v5, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v4

    .line 833
    .end local v21    # "request":Lwh$c;
    .restart local v13    # "formActionUri":Ljava/net/URI;
    .restart local v17    # "loginUri":Ljava/net/URI;
    .restart local v20    # "request":Lwh$c;
    :catch_1
    move-exception v11

    goto :goto_3

    .end local v13    # "formActionUri":Ljava/net/URI;
    .end local v17    # "loginUri":Ljava/net/URI;
    :cond_9
    move-object/from16 v21, v20

    .end local v20    # "request":Lwh$c;
    .restart local v21    # "request":Lwh$c;
    goto/16 :goto_1
.end method

.method static synthetic b(Lwh;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lwh;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 81
    .line 5504
    array-length v0, p1

    if-nez v0, :cond_0

    .line 5506
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->EMPTY_UIDS_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v2, "Attempt to get flags on 0 length array for uids"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v0

    .line 5509
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0xc8

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 5510
    const-string/jumbo v0, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5511
    const-string/jumbo v0, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5512
    const-string/jumbo v0, "SELECT \"urn:schemas:httpmail:read\", \"DAV:uid\"\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5513
    const-string/jumbo v0, " FROM \"\"\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5514
    const-string/jumbo v0, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5516
    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    .line 5518
    if-eqz v0, :cond_1

    .line 5520
    const-string/jumbo v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5522
    :cond_1
    const-string/jumbo v3, " \"DAV:uid\"=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5524
    :cond_2
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5525
    const-string/jumbo v0, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5526
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method static synthetic b(Lwh;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lwh;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 81
    .line 6531
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x258

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6532
    const-string/jumbo v0, "<?xml version=\'1.0\' ?>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6533
    const-string/jumbo v0, "<a:propertyupdate xmlns:a=\'DAV:\' xmlns:b=\'urn:schemas:httpmail:\'>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6534
    const-string/jumbo v0, "<a:target>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6535
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 6537
    const-string/jumbo v4, " <a:href>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "</a:href>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6539
    :cond_0
    const-string/jumbo v0, "</a:target>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6540
    const-string/jumbo v0, "<a:set>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6541
    const-string/jumbo v0, " <a:prop>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6542
    const-string/jumbo v0, "  <b:read>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "</b:read>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6543
    const-string/jumbo v0, " </a:prop>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6544
    const-string/jumbo v0, "</a:set>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6545
    const-string/jumbo v0, "</a:propertyupdate>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6546
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0

    .line 6542
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

.method static synthetic b(Lwh;)S
    .locals 1
    .param p0, "x0"    # Lwh;

    .prologue
    .line 81
    iget-short v0, p0, Lwh;->t:S

    return v0
.end method

.method static synthetic c(Lwh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lwh;

    .prologue
    .line 81
    iget-object v0, p0, Lwh;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lwh;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lwh;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 81
    .line 6436
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0xc8

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6437
    const-string/jumbo v0, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6438
    const-string/jumbo v0, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6439
    const-string/jumbo v0, "SELECT \"DAV:uid\", \"DAV:getcontentlength\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6440
    const-string/jumbo v0, " \"urn:schemas:mailheader:mime-version\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6441
    const-string/jumbo v0, " \"urn:schemas:mailheader:content-type\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6442
    const-string/jumbo v0, " \"urn:schemas:mailheader:subject\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6443
    const-string/jumbo v0, " \"urn:schemas:mailheader:date\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6444
    const-string/jumbo v0, " \"urn:schemas:mailheader:thread-topic\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6445
    const-string/jumbo v0, " \"urn:schemas:mailheader:thread-index\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6446
    const-string/jumbo v0, " \"urn:schemas:mailheader:from\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6447
    const-string/jumbo v0, " \"urn:schemas:mailheader:to\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6448
    const-string/jumbo v0, " \"urn:schemas:mailheader:in-reply-to\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6449
    const-string/jumbo v0, " \"urn:schemas:mailheader:cc\","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6450
    const-string/jumbo v0, " \"urn:schemas:httpmail:read\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6451
    const-string/jumbo v0, " \r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6452
    const-string/jumbo v0, " FROM \"\"\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6453
    const-string/jumbo v0, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=False AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6454
    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 6456
    if-eqz v0, :cond_0

    .line 6458
    const-string/jumbo v3, "  OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6460
    :cond_0
    const-string/jumbo v3, " \"DAV:uid\"=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6462
    :cond_1
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6463
    const-string/jumbo v0, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6464
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method static synthetic d(Lwh;)Lorg/apache/http/protocol/HttpContext;
    .locals 1
    .param p0, "x0"    # Lwh;

    .prologue
    .line 81
    iget-object v0, p0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method static synthetic e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lwh;->e:[Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 277
    iget-short v1, p0, Lwh;->g:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lwh;->g:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lwh;->g:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lwh;->g:S

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 282
    :cond_0
    const-string/jumbo v0, "https"

    .line 288
    .local v0, "root":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lwh;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lwh;->o:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    return-object v0

    .line 286
    .end local v0    # "root":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "http"

    .restart local v0    # "root":Ljava/lang/String;
    goto :goto_0
.end method

.method private g()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    .line 585
    :try_start_0
    iget-short v7, p0, Lwh;->t:S

    if-nez v7, :cond_5

    .line 587
    invoke-direct {p0}, Lwh;->h()Lwh$a;

    move-result-object v1

    .line 589
    .local v1, "info":Lwh$a;
    iget-short v7, v1, Lwh$a;->b:S

    if-ne v7, v6, :cond_4

    .line 591
    new-instance v3, Lwh$c;

    iget-object v7, p0, Lwh;->b:Ljava/lang/String;

    invoke-direct {v3, p0, v7}, Lwh$c;-><init>(Lwh;Ljava/lang/String;)V

    .line 592
    .local v3, "request":Lwh$c;
    const-string/jumbo v7, "GET"

    invoke-virtual {v3, v7}, Lwh$c;->a(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v7, "Authorization"

    iget-object v8, p0, Lwh;->c:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lwh$c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    new-instance v0, Lwh$g;

    invoke-direct {v0}, Lwh$g;-><init>()V

    .line 596
    .local v0, "httpClient":Lwh$g;
    iget-object v7, p0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v3, v7}, Lwh$g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 598
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 599
    .local v5, "statusCode":I
    const/16 v7, 0xc8

    if-lt v5, v7, :cond_1

    const/16 v7, 0x12c

    if-ge v5, v7, :cond_1

    .line 601
    const/4 v7, 0x1

    iput-short v7, p0, Lwh;->t:S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v0    # "httpClient":Lwh$g;
    .end local v1    # "info":Lwh$a;
    .end local v3    # "request":Lwh$c;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusCode":I
    :cond_0
    :goto_0
    iget-short v7, p0, Lwh;->t:S

    if-eqz v7, :cond_6

    :goto_1
    return v6

    .line 603
    .restart local v0    # "httpClient":Lwh$g;
    .restart local v1    # "info":Lwh$a;
    .restart local v3    # "request":Lwh$c;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "statusCode":I
    :cond_1
    const/16 v6, 0x191

    if-ne v5, v6, :cond_3

    .line 605
    :try_start_1
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->USERNAME_OR_PASSWORD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v8, "Invalid username or password for authentication."

    invoke-direct {v6, v7, v8}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 629
    .end local v0    # "httpClient":Lwh$g;
    .end local v1    # "info":Lwh$a;
    .end local v3    # "request":Lwh$c;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v2

    .line 631
    .local v2, "ioe":Ljava/io/IOException;
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 632
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error during authentication: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\nStack: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_2
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v8, "Error during authentication"

    invoke-direct {v6, v7, v8, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 609
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "httpClient":Lwh$g;
    .restart local v1    # "info":Lwh$a;
    .restart local v3    # "request":Lwh$c;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "statusCode":I
    :cond_3
    :try_start_2
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_AUTHENTICATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Error with code "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " during request processing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 610
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v6

    .line 613
    .end local v0    # "httpClient":Lwh$g;
    .end local v3    # "request":Lwh$c;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusCode":I
    :cond_4
    iget-short v7, v1, Lwh$a;->b:S

    if-ne v7, v8, :cond_0

    .line 615
    invoke-direct {p0, v1}, Lwh;->a(Lwh$a;)V

    goto/16 :goto_0

    .line 618
    .end local v1    # "info":Lwh$a;
    :cond_5
    iget-short v7, p0, Lwh;->t:S

    if-eq v7, v6, :cond_0

    .line 623
    iget-short v7, p0, Lwh;->t:S

    if-ne v7, v8, :cond_0

    .line 626
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lwh;->a(Lwh$a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 637
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method private h()Lwh$a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/16 v8, 0x12c

    .line 659
    new-instance v1, Lwh$a;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lwh$a;-><init>(B)V

    .line 661
    .local v1, "info":Lwh$a;
    invoke-virtual {p0}, Lwh;->d()Lwh$g;

    move-result-object v0

    .line 663
    .local v0, "httpClient":Lwh$g;
    new-instance v4, Lwh$c;

    iget-object v6, p0, Lwh;->b:Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Lwh$c;-><init>(Lwh;Ljava/lang/String;)V

    .line 664
    .local v4, "request":Lwh$c;
    const-string/jumbo v6, "GET"

    invoke-virtual {v4, v6}, Lwh$c;->a(Ljava/lang/String;)V

    .line 668
    :try_start_0
    iget-object v6, p0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v4, v6}, Lwh$g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 669
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    iput v6, v1, Lwh$a;->a:I

    .line 671
    iget v6, v1, Lwh$a;->a:I

    const/16 v7, 0x191

    if-ne v6, v7, :cond_1

    .line 675
    const/4 v6, 0x1

    iput-short v6, v1, Lwh$a;->b:S

    .line 721
    :cond_0
    :goto_0
    return-object v1

    .line 677
    :cond_1
    iget v6, v1, Lwh$a;->a:I

    const/16 v7, 0xc8

    if-lt v6, v7, :cond_2

    iget v6, v1, Lwh$a;->a:I

    if-lt v6, v8, :cond_4

    :cond_2
    iget v6, v1, Lwh$a;->a:I

    if-lt v6, v8, :cond_3

    iget v6, v1, Lwh$a;->a:I

    const/16 v7, 0x190

    if-lt v6, v7, :cond_4

    :cond_3
    iget v6, v1, Lwh$a;->a:I

    const/16 v7, 0x1b8

    if-ne v6, v7, :cond_7

    .line 687
    :cond_4
    const/4 v6, 0x2

    iput-short v6, v1, Lwh$a;->b:S

    .line 689
    iget-object v6, p0, Lwh;->m:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lwh;->m:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 692
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lwh;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lwh;->m:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lwh$a;->c:Ljava/lang/String;

    .line 701
    :goto_1
    const-string/jumbo v6, "Location"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 702
    .local v3, "location":Lorg/apache/http/Header;
    if-eqz v3, :cond_0

    .line 704
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lwh$a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 713
    .end local v3    # "location":Lorg/apache/http/Header;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 715
    .local v2, "ioe":Ljava/io/IOException;
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 716
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "IOException: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\nTrace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lwh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_5
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v8, "IOException"

    invoke-direct {v6, v7, v8, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 697
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lwh;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/exchweb/bin/auth/owaauth.dll"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lwh$a;->c:Ljava/lang/String;

    goto :goto_1

    .line 709
    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error with code "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lwh$a;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " during request processing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 710
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 368
    iget-object v1, p0, Lwh;->v:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwh$e;

    .local v0, "folder":Lwh$e;
    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lwh$e;

    .end local v0    # "folder":Lwh$e;
    invoke-direct {v0, p0, p0, p1}, Lwh$e;-><init>(Lwh;Lwh;Ljava/lang/String;)V

    .line 373
    .restart local v0    # "folder":Lwh$e;
    :cond_0
    return-object v0
.end method

.method public final a(Z)Ljava/util/List;
    .locals 18
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

    .prologue
    .line 301
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 302
    .local v4, "folderList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v8, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Lwh$b;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lwh$b;-><init>(Lwh;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lwh;->d()Lwh$g;

    .line 2410
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v16, 0xc8

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2411
    const-string/jumbo v16, "<?xml version=\'1.0\' ?>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2412
    const-string/jumbo v16, "<a:searchrequest xmlns:a=\'DAV:\'><a:sql>\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2413
    const-string/jumbo v16, "SELECT \"DAV:uid\", \"DAV:ishidden\"\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2414
    const-string/jumbo v16, " FROM SCOPE(\'hierarchical traversal of \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lwh;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string/jumbo v17, "\"\')\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2415
    const-string/jumbo v16, " WHERE \"DAV:ishidden\"=False AND \"DAV:isfolder\"=True\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2416
    const-string/jumbo v16, "</a:sql></a:searchrequest>\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2417
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, "messageBody":Ljava/lang/String;
    const-string/jumbo v15, "Brief"

    const-string/jumbo v16, "t"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    move-object/from16 v0, p0

    iget-object v15, v0, Lwh;->b:Ljava/lang/String;

    const-string/jumbo v16, "SEARCH"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v11, v8}, Lwh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lwh$b;

    move-result-object v3

    .line 316
    .local v3, "dataset":Lwh$b;
    invoke-virtual {v3}, Lwh$b;->c()[Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "folderUrls":[Ljava/lang/String;
    array-length v12, v6

    .line 319
    .local v12, "urlLength":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_4

    .line 321
    aget-object v15, v6, v9

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 322
    .local v13, "urlParts":[Ljava/lang/String;
    array-length v15, v13

    add-int/lit8 v15, v15, -0x1

    aget-object v5, v13, v15

    .line 323
    .local v5, "folderName":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 326
    .local v7, "fullPathName":Ljava/lang/String;
    sget-object v15, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->INBOX:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 328
    const-string/jumbo v5, "INBOX"

    .line 354
    :goto_1
    new-instance v14, Lwh$e;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1, v5}, Lwh$e;-><init>(Lwh;Lwh;Ljava/lang/String;)V

    .line 355
    .local v14, "wdFolder":Lwh$e;
    aget-object v15, v6, v9

    .line 3265
    if-eqz v15, :cond_0

    .line 3267
    iput-object v15, v14, Lwh$e;->c:Ljava/lang/String;

    .line 356
    :cond_0
    invoke-virtual {v4, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lwh;->v:Ljava/util/HashMap;

    invoke-virtual {v15, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 332
    .end local v14    # "wdFolder":Lwh$e;
    :cond_1
    const/4 v10, 0x5

    .local v10, "j":I
    array-length v2, v13

    .local v2, "count":I
    :goto_2
    if-ge v10, v2, :cond_3

    .line 334
    const/4 v15, 0x5

    if-eq v10, v15, :cond_2

    .line 336
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 340
    :cond_2
    aget-object v7, v13, v10

    goto :goto_3

    .line 345
    :cond_3
    :try_start_0
    const-string/jumbo v15, "UTF-8"

    invoke-static {v7, v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 350
    :catch_0
    move-exception v15

    move-object v5, v7

    goto :goto_1

    .line 360
    .end local v2    # "count":I
    .end local v5    # "folderName":Ljava/lang/String;
    .end local v7    # "fullPathName":Ljava/lang/String;
    .end local v10    # "j":I
    .end local v13    # "urlParts":[Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0}, Lwh;->g()Z

    .line 296
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Lwh$g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 912
    iget-object v4, p0, Lwh;->q:Lwh$g;

    if-nez v4, :cond_0

    .line 914
    new-instance v4, Lwh$g;

    invoke-direct {v4}, Lwh$g;-><init>()V

    iput-object v4, p0, Lwh;->q:Lwh$g;

    .line 916
    iget-object v4, p0, Lwh;->q:Lwh$g;

    invoke-virtual {v4}, Lwh$g;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string/jumbo v5, "http.protocol.handle-redirects"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 919
    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v4, p0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    .line 920
    new-instance v4, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v4}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v4, p0, Lwh;->s:Lorg/apache/http/client/CookieStore;

    .line 921
    iget-object v4, p0, Lwh;->r:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v5, "http.cookie-store"

    iget-object v6, p0, Lwh;->s:Lorg/apache/http/client/CookieStore;

    invoke-interface {v4, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 923
    iget-object v4, p0, Lwh;->q:Lwh$g;

    invoke-virtual {v4}, Lwh$g;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 926
    .local v2, "reg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :try_start_0
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v4, "https"

    new-instance v5, Lwv;

    iget-object v6, p0, Lwh;->k:Ljava/lang/String;

    iget-boolean v7, p0, Lwh;->p:Z

    invoke-direct {v5, v6, v7}, Lwv;-><init>(Ljava/lang/String;Z)V

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 927
    .local v3, "s":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 944
    .end local v2    # "reg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3    # "s":Lorg/apache/http/conn/scheme/Scheme;
    :cond_0
    iget-object v4, p0, Lwh;->q:Lwh$g;

    return-object v4

    .line 929
    .restart local v2    # "reg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v1

    .line 931
    .local v1, "nsa":Ljava/security/NoSuchAlgorithmException;
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 932
    sget-object v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "NoSuchAlgorithmException in getHttpClient: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_1
    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->NO_SUCH_ALGORITHM_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "NoSuchAlgorithmException in getHttpClient: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v4

    .line 936
    .end local v1    # "nsa":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 938
    .local v0, "kme":Ljava/security/KeyManagementException;
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 939
    sget-object v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "KeyManagementException in getHttpClient: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_2
    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_SECURITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "KeyManagementException in getHttpClient: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v4
.end method
