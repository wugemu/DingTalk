.class public final Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
.super Ljava/lang/Object;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImapConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;
    }
.end annotation


# static fields
.field private static l:I


# instance fields
.field protected a:Ljava/net/Socket;

.field protected b:Lwb;

.field protected c:Ljava/io/OutputStream;

.field protected d:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

.field protected e:I

.field protected f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lwl;

.field protected h:Z

.field i:Ljava/lang/String;

.field j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

.field private k:I

.field private m:Lwx;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2998
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->l:I

    return-void
.end method

.method public constructor <init>(Lwx;)V
    .locals 4
    .param p1, "settings"    # Lwx;

    .prologue
    const/4 v1, 0x0

    .line 3006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2982
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->f:Ljava/util/Set;

    .line 2984
    iput-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->g:Lwl;

    .line 2993
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->h:Z

    .line 3007
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    .line 3008
    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->NOT_CONNECTED:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 3009
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    if-eqz v2, :cond_0

    .line 3010
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    invoke-interface {v2}, Lwx;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->n:Ljava/lang/String;

    .line 3012
    :cond_0
    sget v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->l:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->l:I

    iput v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->k:I

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3015
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "conn_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    invoke-interface {v2}, Lwx;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3017
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    iget v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3019
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 3021
    invoke-interface {p1}, Lwx;->a()Ljava/lang/String;

    move-result-object v2

    .line 4045
    if-eqz v2, :cond_1

    .line 4046
    const-string/jumbo v3, "qq.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4047
    new-instance v1, Lws;

    invoke-direct {v1}, Lws;-><init>()V

    .line 3021
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->g:Lwl;

    .line 3022
    return-void

    .line 4048
    :cond_2
    const-string/jumbo v3, "163.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4049
    new-instance v1, Lwq;

    invoke-direct {v1}, Lwq;-><init>()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3041
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 3043
    .local v8, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    const/4 v2, 0x0

    .line 3044
    .local v2, "capabilityList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    invoke-virtual {v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v12

    if-lez v12, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "OK"

    invoke-static {v12, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3046
    invoke-virtual {v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 3048
    .local v10, "thisPart":Ljava/lang/Object;
    instance-of v13, v10, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    if-eqz v13, :cond_1

    move-object v9, v10

    .line 3050
    check-cast v9, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    .line 3051
    .local v9, "thisList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v13

    const-string/jumbo v14, "CAPABILITY"

    invoke-static {v13, v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3053
    move-object v2, v9

    .line 3064
    .end local v9    # "thisList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v10    # "thisPart":Ljava/lang/Object;
    :cond_2
    :goto_0
    if-eqz v2, :cond_0

    .line 3066
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v12

    if-lez v12, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "CAPABILITY"

    invoke-static {v12, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3068
    sget-boolean v12, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 3070
    sget-object v12, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Saving "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " capabilities for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 6037
    iget-object v13, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 3070
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3072
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3074
    .local v1, "capability":Ljava/lang/Object;
    instance-of v13, v1, Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 3080
    iget-object v13, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->f:Ljava/util/Set;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "capability":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3059
    :cond_5
    iget-object v12, v8, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v12, :cond_2

    .line 3061
    move-object v2, v8

    goto :goto_0

    .line 3089
    .end local v2    # "capabilityList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v8    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :cond_6
    const/4 v6, 0x0

    .line 3090
    .local v6, "providerChecked":Z
    const/4 v3, 0x0

    .line 3091
    .local v3, "detectPOP3Server":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 3092
    .restart local v8    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    invoke-virtual {v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3093
    .local v5, "object":Ljava/lang/Object;
    instance-of v13, v5, Ljava/lang/String;

    if-eqz v13, :cond_8

    move-object v7, v5

    .line 3094
    check-cast v7, Ljava/lang/String;

    .line 3095
    .local v7, "resp":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 7013
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 7014
    :cond_9
    const/4 v4, 0x0

    .line 3097
    .local v4, "imapServer":Lwl;
    :goto_3
    if-eqz v4, :cond_15

    invoke-interface {v4}, Lwl;->a()I

    move-result v13

    if-eqz v13, :cond_15

    .line 3098
    iput-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->g:Lwl;

    .line 3099
    const/4 v6, 0x1

    goto :goto_2

    .line 7017
    .end local v4    # "imapServer":Lwl;
    :cond_a
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 7019
    const-string/jumbo v14, "qqmail"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 7020
    new-instance v4, Lws;

    invoke-direct {v4}, Lws;-><init>()V

    goto :goto_3

    .line 7021
    :cond_b
    const-string/jumbo v14, "gmail"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 7022
    new-instance v4, Lwj;

    invoke-direct {v4}, Lwj;-><init>()V

    goto :goto_3

    .line 7023
    :cond_c
    const-string/jumbo v14, "aliyun"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 7024
    new-instance v4, Lwi;

    invoke-direct {v4}, Lwi;-><init>()V

    goto :goto_3

    .line 7025
    :cond_d
    const-string/jumbo v14, "coremail"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 7026
    new-instance v4, Lwq;

    invoke-direct {v4}, Lwq;-><init>()V

    goto :goto_3

    .line 7027
    :cond_e
    const-string/jumbo v14, "outlook"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 7028
    new-instance v4, Lwr;

    invoke-direct {v4}, Lwr;-><init>()V

    goto :goto_3

    .line 7029
    :cond_f
    const-string/jumbo v14, "outlook"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 7030
    new-instance v4, Lwk;

    invoke-direct {v4}, Lwk;-><init>()V

    goto :goto_3

    .line 7031
    :cond_10
    const-string/jumbo v14, "richinfo"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 7032
    new-instance v4, Lwm;

    invoke-direct {v4}, Lwm;-><init>()V

    goto/16 :goto_3

    .line 7033
    :cond_11
    const-string/jumbo v14, "263"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 7034
    new-instance v4, Lwn;

    invoke-direct {v4}, Lwn;-><init>()V

    goto/16 :goto_3

    .line 7035
    :cond_12
    const-string/jumbo v14, "aimc"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 7036
    new-instance v4, Lwo;

    invoke-direct {v4}, Lwo;-><init>()V

    goto/16 :goto_3

    .line 7037
    :cond_13
    const-string/jumbo v14, "sina"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 7038
    new-instance v4, Lwp;

    invoke-direct {v4}, Lwp;-><init>()V

    goto/16 :goto_3

    .line 7040
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 3100
    .restart local v4    # "imapServer":Lwl;
    :cond_15
    const-string/jumbo v13, "pop3"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3101
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 3105
    .end local v4    # "imapServer":Lwl;
    .end local v5    # "object":Ljava/lang/Object;
    .end local v7    # "resp":Ljava/lang/String;
    :cond_16
    if-eqz v6, :cond_7

    .line 3110
    .end local v8    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :cond_17
    if-eqz v3, :cond_18

    .line 3111
    new-instance v11, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v12, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORED_PROTOCOL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v13, "this is a pop3 server"

    invoke-direct {v11, v12, v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v11

    .line 3114
    :cond_18
    iget-object v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->g:Lwl;

    if-eqz v11, :cond_1a

    iget-object v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->g:Lwl;

    invoke-interface {v11}, Lwl;->a()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1a

    .line 3138
    :cond_19
    :goto_4
    return-object p1

    .line 3120
    :cond_1a
    iget-object v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->f:Ljava/util/Set;

    if-eqz v11, :cond_1c

    .line 3121
    iget-object v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->f:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3122
    .local v0, "cap":Ljava/lang/String;
    const-string/jumbo v12, "ID"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 3123
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->h:Z

    .line 3129
    .end local v0    # "cap":Ljava/lang/String;
    :cond_1c
    sget-boolean v11, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v11, :cond_1d

    .line 3130
    sget-object v11, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "support ID : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v13, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->h:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    :cond_1d
    iget-boolean v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->h:Z

    if-eqz v11, :cond_19

    .line 7143
    :try_start_0
    sget-object v11, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->REPORT_ID:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    iput-object v11, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 7145
    const-string/jumbo v11, "ID (\"name\" \"dingtalk\" \"version\" \"1.0.0\" \"os\" \"android\" \"vendor\" \"alibaba limited\")"

    .line 7904
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 7149
    :catch_0
    move-exception v11

    goto :goto_4

    .line 7150
    :catch_1
    move-exception v11

    .line 7151
    sget-object v12, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v12, v11}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2
    .param p1, "capability"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3730
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->f:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3631
    :try_start_0
    const-string/jumbo v23, "AUTHENTICATE CRAM-MD5"

    const/16 v24, 0x0

    .line 21837
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 3632
    .local v21, "tag":Ljava/lang/String;
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 3633
    .local v7, "buf":[B
    const/4 v5, 0x0

    .line 3634
    .local v5, "b64NonceLen":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v23, 0x400

    move/from16 v0, v23

    if-ge v9, v0, :cond_0

    .line 3636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lwb;->read()I

    move-result v23

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v9

    .line 3637
    aget-byte v23, v7, v9

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 3639
    move v5, v9

    .line 3643
    :cond_0
    if-nez v5, :cond_2

    .line 3645
    new-instance v23, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->n:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v25, Lcom/alibaba/alimei/framework/SDKError;->NEOGOTIATING_CRAM_MD5_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v26, "Error negotiating CRAM-MD5: nonce too long."

    invoke-direct/range {v23 .. v26}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3701
    .end local v5    # "b64NonceLen":I
    .end local v7    # "buf":[B
    .end local v9    # "i":I
    .end local v21    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 3703
    .local v10, "ioe":Ljava/io/IOException;
    new-instance v23, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->n:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v25, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v26, "CRAM-MD5 Auth Failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 3634
    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v5    # "b64NonceLen":I
    .restart local v7    # "buf":[B
    .restart local v9    # "i":I
    .restart local v21    # "tag":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3647
    :cond_2
    add-int/lit8 v23, v5, -0x2

    :try_start_1
    move/from16 v0, v23

    new-array v6, v0, [B

    .line 3648
    .local v6, "b64NonceTrim":[B
    const/16 v23, 0x1

    const/16 v24, 0x0

    add-int/lit8 v25, v5, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v7, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3649
    invoke-static {v6}, Lkpq;->b([B)[B

    move-result-object v13

    .line 3650
    .local v13, "nonce":[B
    sget-boolean v23, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v23, :cond_3

    .line 3652
    sget-object v23, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Got nonce: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v24, Ljava/lang/String;

    const-string/jumbo v25, "US-ASCII"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3653
    sget-object v23, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Plaintext nonce: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v24, Ljava/lang/String;

    const-string/jumbo v25, "US-ASCII"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v13, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    :cond_3
    const/16 v23, 0x40

    move/from16 v0, v23

    new-array v11, v0, [B

    .line 3657
    .local v11, "ipad":[B
    const/16 v23, 0x40

    move/from16 v0, v23

    new-array v15, v0, [B

    .line 3658
    .local v15, "opad":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lwx;->f()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "US-ASCII"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    .line 3659
    .local v20, "secretBytes":[B
    const-string/jumbo v23, "MD5"

    invoke-static/range {v23 .. v23}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 3660
    .local v12, "md":Ljava/security/MessageDigest;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x40

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    .line 3662
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v20

    .line 3664
    :cond_4
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3665
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3666
    const/4 v9, 0x0

    :goto_1
    const/16 v23, 0x40

    move/from16 v0, v23

    if-ge v9, v0, :cond_5

    aget-byte v23, v11, v9

    xor-int/lit8 v23, v23, 0x36

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3667
    :cond_5
    const/4 v9, 0x0

    :goto_2
    const/16 v23, 0x40

    move/from16 v0, v23

    if-ge v9, v0, :cond_6

    aget-byte v23, v15, v9

    xor-int/lit8 v23, v23, 0x5c

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3668
    :cond_6
    invoke-virtual {v12, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 3669
    invoke-virtual {v12, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 3670
    .local v8, "firstPass":[B
    invoke-virtual {v12, v15}, Ljava/security/MessageDigest;->update([B)V

    .line 3671
    invoke-virtual {v12, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v19

    .line 3672
    .local v19, "result":[B
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lwx;->e()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    new-instance v24, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lkps;->a([B)[C

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3673
    .local v16, "plainCRAM":Ljava/lang/String;
    const-string/jumbo v23, "US-ASCII"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lkpq;->a([B)[B

    move-result-object v4

    .line 3674
    .local v4, "b64CRAM":[B
    sget-boolean v23, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v23, :cond_7

    .line 3676
    sget-object v23, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Username == "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lwx;->e()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3677
    sget-object v23, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "plainCRAM: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3678
    sget-object v23, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "b64CRAM: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v24, Ljava/lang/String;

    const-string/jumbo v25, "US-ASCII"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3681
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 3682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    invoke-virtual/range {v23 .. v24}, Ljava/io/OutputStream;->write([B)V

    .line 3683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V

    .line 3684
    const/16 v17, 0x0

    .line 3685
    .local v17, "respLen":I
    const/4 v9, 0x0

    :goto_3
    const/16 v23, 0x400

    move/from16 v0, v23

    if-ge v9, v0, :cond_8

    .line 3687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lwb;->read()I

    move-result v23

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v9

    .line 3688
    aget-byte v23, v7, v9

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 3690
    move/from16 v17, v9

    .line 3694
    :cond_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " OK"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3695
    .local v22, "toMatch":Ljava/lang/String;
    new-instance v18, Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 3696
    .local v18, "respStr":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 3698
    new-instance v23, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->n:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v25, Lcom/alibaba/alimei/framework/SDKError;->CRAM_MD5_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "CRAM-MD5 error: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v23 .. v26}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v23
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3705
    .end local v4    # "b64CRAM":[B
    .end local v5    # "b64NonceLen":I
    .end local v6    # "b64NonceTrim":[B
    .end local v7    # "buf":[B
    .end local v8    # "firstPass":[B
    .end local v9    # "i":I
    .end local v11    # "ipad":[B
    .end local v12    # "md":Ljava/security/MessageDigest;
    .end local v13    # "nonce":[B
    .end local v15    # "opad":[B
    .end local v16    # "plainCRAM":Ljava/lang/String;
    .end local v17    # "respLen":I
    .end local v18    # "respStr":Ljava/lang/String;
    .end local v19    # "result":[B
    .end local v20    # "secretBytes":[B
    .end local v21    # "tag":Ljava/lang/String;
    .end local v22    # "toMatch":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 3707
    .local v14, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v23, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->n:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v25, Lcom/alibaba/alimei/framework/SDKError;->NO_SUCH_ALGORITHM_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v26, "MD5 Not Available."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 3685
    .end local v14    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "b64CRAM":[B
    .restart local v5    # "b64NonceLen":I
    .restart local v6    # "b64NonceTrim":[B
    .restart local v7    # "buf":[B
    .restart local v8    # "firstPass":[B
    .restart local v9    # "i":I
    .restart local v11    # "ipad":[B
    .restart local v12    # "md":Ljava/security/MessageDigest;
    .restart local v13    # "nonce":[B
    .restart local v15    # "opad":[B
    .restart local v16    # "plainCRAM":Ljava/lang/String;
    .restart local v17    # "respLen":I
    .restart local v19    # "result":[B
    .restart local v20    # "secretBytes":[B
    .restart local v21    # "tag":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 3708
    .restart local v18    # "respStr":Ljava/lang/String;
    .restart local v22    # "toMatch":Ljava/lang/String;
    :cond_a
    return-void

    .line 3682
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .locals 6
    .param p1, "callback"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3795
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/Account;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/Account;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .locals 8
    .param p1, "callback"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .param p2, "shouldBackup"    # Z
    .param p3, "folderName"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3810
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/Account;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v7

    .line 3811
    .local v7, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3812
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22037
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 3812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<<<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3815
    :cond_0
    monitor-exit p0

    return-object v7

    .line 3817
    .end local v7    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :catch_0
    move-exception v6

    .line 3819
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 3820
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3810
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3845
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b()V

    .line 3848
    sget-boolean v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3849
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "connection  : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3853
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v6, "a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3855
    .local v4, "tag":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3856
    .local v0, "commandToSend":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 3857
    iget-object v5, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V

    .line 3858
    iget-object v5, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V

    .line 3859
    iget-object v5, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 3864
    if-eqz p2, :cond_1

    .line 3865
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 23037
    iget-object v8, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 3865
    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, ">>> "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "[Command Hidden, Enable Sensitive Debug Logging To Show]"

    aput-object v8, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    :goto_0
    return-object v4

    .line 3869
    :cond_1
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 24037
    iget-object v8, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 3869
    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, ">>> "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 3874
    .end local v0    # "commandToSend":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3876
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v5, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    new-array v6, v12, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ", sendCommand IOException. Command:"

    aput-object v7, v6, v10

    aput-object p1, v6, v11

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    sget-boolean v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 3878
    sget-object v5, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " sendCommand : IOException : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 3882
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3883
    throw v2

    .line 3885
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 3887
    .local v1, "ie":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;
    sget-object v5, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    new-array v6, v12, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ", sendCommand ImapException. Command:"

    aput-object v7, v6, v10

    aput-object p1, v6, v11

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3888
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 3889
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->printStackTrace()V

    .line 3890
    throw v1

    .line 3892
    .end local v1    # "ie":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;
    :catch_2
    move-exception v3

    .line 3894
    .local v3, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    sget-object v5, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    new-array v6, v12, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ", sendCommand MessagingException. Command:"

    aput-object v7, v6, v10

    aput-object p1, v6, v11

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 3896
    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 3897
    throw v3
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3904
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lwl;
    .locals 1

    .prologue
    .line 3027
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->g:Lwl;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Z)Ljava/util/List;
    .locals 13
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v12, 0x1f4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3910
    .line 24917
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 24918
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24922
    :cond_0
    if-eqz p2, :cond_1

    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "LOGIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AUTHENTICATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 24924
    :cond_2
    const-string/jumbo v0, "*sensitive*"

    move-object v1, v0

    .line 25837
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 24935
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24939
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a()Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v4

    .line 24941
    if-eqz v4, :cond_5

    .line 24942
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24943
    sget-boolean v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v12, :cond_9

    .line 24944
    :cond_4
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/String;

    .line 26037
    iget-object v7, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 24944
    aput-object v7, v6, v8

    const-string/jumbo v7, "<<< "

    aput-object v7, v6, v9

    aput-object v0, v6, v10

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 24950
    :cond_5
    :goto_1
    iget-object v0, v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 24952
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 24953
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "After sending tag "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", got tag response from previous command "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28037
    iget-object v5, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 24953
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24955
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 24956
    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24958
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 24959
    iget-object v6, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v6, :cond_8

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v6

    if-lt v6, v10, :cond_8

    .line 24960
    invoke-virtual {v0, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "EXISTS"

    invoke-static {v6, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v6, "EXPUNGE"

    invoke-static {v0, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 24962
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 24946
    :cond_9
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/String;

    .line 27037
    iget-object v7, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 24946
    aput-object v7, v6, v8

    const-string/jumbo v7, "<<< "

    aput-object v7, v6, v9

    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 24965
    :cond_a
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    .line 24974
    :goto_3
    iget-object v0, v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 24975
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "OK"

    invoke-static {v0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 24977
    :cond_b
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "Command: "

    aput-object v2, v0, v8

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "; response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-string/jumbo v1, ", alert:"

    aput-object v1, v0, v11

    const/4 v1, 0x4

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getAlertText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24978
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 24979
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->IMAP_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v1, v2, v0, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    throw v1

    .line 24972
    :cond_c
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3910
    :cond_d
    return-object v3

    :cond_e
    move-object v1, p1

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3159
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c()Z

    move-result v16

    .line 3161
    .local v16, "isOpen":Z
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_0

    .line 3162
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "----> is open : "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3163
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "---->"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3164
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "++++> mSocket "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3165
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "++++> mIn "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3166
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "++++> mOut "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3170
    :cond_0
    if-eqz v16, :cond_2

    .line 3540
    :cond_1
    :goto_0
    return-void

    .line 3175
    :cond_2
    const/4 v5, 0x0

    .line 3177
    .local v5, "authSuccess":Z
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->e:I

    .line 3180
    :try_start_0
    const-string/jumbo v34, "networkaddress.cache.ttl"

    const-string/jumbo v35, "0"

    invoke-static/range {v34 .. v35}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3192
    :cond_3
    :goto_1
    :try_start_1
    const-string/jumbo v34, "networkaddress.cache.negative.ttl"

    const-string/jumbo v35, "0"

    invoke-static/range {v34 .. v35}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3203
    :cond_4
    :goto_2
    :try_start_2
    new-instance v27, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->a()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lwx;->b()I

    move-result v35

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 3205
    .local v27, "socketAddress":Ljava/net/SocketAddress;
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "Connection "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    .line 10037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 3205
    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string/jumbo v37, " connecting to "

    aput-object v37, v35, v36

    const/16 v36, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lwx;->a()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string/jumbo v37, " @ IP addr "

    aput-object v37, v35, v36

    const/16 v36, 0x5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v35 .. v35}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->c()I

    move-result v34

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    .line 3208
    invoke-interface/range {v34 .. v34}, Lwx;->c()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_c

    .line 3210
    :cond_5
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->SSL_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 3212
    const-string/jumbo v34, "TLS"

    invoke-static/range {v34 .. v34}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v28

    .line 3213
    .local v28, "sslContext":Ljavax/net/ssl/SSLContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->c()I

    move-result v34

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    const/16 v26, 0x1

    .line 3214
    .local v26, "secure":Z
    :goto_3
    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v37, v0

    .line 3216
    invoke-interface/range {v37 .. v37}, Lwx;->a()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v26

    invoke-static {v0, v1}, Lwg;->a(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Ljava/security/SecureRandom;

    invoke-direct/range {v36 .. v36}, Ljava/security/SecureRandom;-><init>()V

    .line 3214
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3218
    invoke-virtual/range {v28 .. v28}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    .line 3219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    const/16 v35, 0x7530

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 3220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 3231
    .end local v26    # "secure":Z
    .end local v28    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->isConnected()Z

    move-result v34

    if-nez v34, :cond_6

    .line 3232
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_6

    .line 3233
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v35, " mSocket is not connected "

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10713
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    .line 10714
    if-eqz v34, :cond_7

    .line 10716
    const v35, 0xea60

    invoke-virtual/range {v34 .. v35}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 3239
    :cond_7
    new-instance v34, Lwb;

    new-instance v35, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v36

    const/16 v37, 0x400

    invoke-direct/range {v35 .. v37}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v34 .. v35}, Lwb;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    .line 3241
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;-><init>(Lwb;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    .line 3242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    .line 3244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->f:Ljava/util/Set;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->clear()V

    .line 3246
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->CHECK_CAPABILITY1:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a()Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v21

    .line 3249
    .local v21, "nullResponse":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 11037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 3249
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "<<<"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    .line 3252
    .local v22, "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3253
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/util/List;)Ljava/util/List;

    .line 3255
    const-string/jumbo v34, "CAPABILITY"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_d

    .line 3257
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->GET_CAPABILITY:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 3258
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_8

    .line 3259
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "Did not get capabilities in banner, requesting CAPABILITY for "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 3259
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    :cond_8
    const-string/jumbo v34, "CAPABILITY"

    .line 12904
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v34

    .line 3261
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v25

    .line 3262
    .local v25, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_d

    .line 3264
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v35, "Invalid CAPABILITY response received"

    invoke-static/range {v34 .. v35}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->INVALID_CAPABILITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v36, "Invalid CAPABILITY response received"

    invoke-direct/range {v34 .. v36}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v34
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3480
    .end local v21    # "nullResponse":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .end local v22    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v25    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v27    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v11

    .line 3482
    .local v11, "e":Ljavax/net/ssl/SSLException;
    :try_start_3
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual {v11}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, ", SSLException."

    aput-object v37, v35, v36

    invoke-static/range {v35 .. v35}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    invoke-virtual {v11}, Ljavax/net/ssl/SSLException;->printStackTrace()V

    .line 3485
    invoke-virtual {v11}, Ljavax/net/ssl/SSLException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 3486
    .local v7, "casue":Ljava/lang/Throwable;
    instance-of v0, v7, Ljava/security/cert/CertificateException;

    move/from16 v34, v0

    if-eqz v34, :cond_38

    .line 3487
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;

    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->CERTIFICATE_VALIDATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v34
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3526
    .end local v7    # "casue":Ljava/lang/Throwable;
    .end local v11    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v34

    if-nez v5, :cond_9

    .line 3528
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string/jumbo v37, "Failed to login, closing connection for "

    aput-object v37, v35, v36

    const/16 v36, 0x1

    .line 21037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 3528
    aput-object v37, v35, v36

    invoke-static/range {v35 .. v35}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3529
    .local v12, "errorMsg":Ljava/lang/String;
    sget-object v35, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-static {v0, v12}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 3533
    .end local v12    # "errorMsg":Ljava/lang/String;
    :cond_9
    sget-boolean v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v35, :cond_a

    .line 3534
    sget-object v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "      ++++> mSocket "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3535
    sget-object v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "      ++++> mIn "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3536
    sget-object v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "      ++++> mOut "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    throw v34

    .line 3182
    :catch_1
    move-exception v11

    .line 3184
    .local v11, "e":Ljava/lang/Exception;
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_3

    .line 3185
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "Could not set DNS ttl to 0 for "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 3185
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3194
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 3196
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_4

    .line 3197
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "Could not set DNS negative ttl to 0 for "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 3197
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 3213
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v27    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v28    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_b
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 3224
    .end local v28    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_c
    :try_start_4
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 3226
    new-instance v34, Ljava/net/Socket;

    invoke-direct/range {v34 .. v34}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    .line 3227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    const/16 v35, 0x7530

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 3494
    .end local v27    # "socketAddress":Ljava/net/SocketAddress;
    :catch_3
    move-exception v14

    .line 3496
    .local v14, "gse":Ljava/security/GeneralSecurityException;
    const/16 v34, 0x2

    :try_start_5
    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual {v14}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    const-string/jumbo v36, ", Unable to open connection to IMAP server due to security error."

    aput-object v36, v34, v35

    invoke-static/range {v34 .. v34}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3497
    .restart local v12    # "errorMsg":Ljava/lang/String;
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-static {v0, v12}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    invoke-virtual {v14}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 3500
    instance-of v0, v14, Ljava/security/cert/CertificateException;

    move/from16 v34, v0

    if-eqz v34, :cond_3a

    .line 3501
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->CERTIFICATE_VALIDATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v12, v14}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v34
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3269
    .end local v12    # "errorMsg":Ljava/lang/String;
    .end local v14    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v21    # "nullResponse":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .restart local v22    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v27    # "socketAddress":Ljava/net/SocketAddress;
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->c()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    .line 3270
    invoke-interface/range {v34 .. v34}, Lwx;->c()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_f

    .line 3273
    :cond_e
    const-string/jumbo v34, "STARTTLS"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 3276
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->STARTTLS:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 3277
    const-string/jumbo v34, "STARTTLS"

    .line 13904
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    .line 3279
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->STARTTLS_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 3281
    const-string/jumbo v34, "TLS"

    invoke-static/range {v34 .. v34}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v28

    .line 3282
    .restart local v28    # "sslContext":Ljavax/net/ssl/SSLContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->c()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_15

    const/16 v26, 0x1

    .line 3283
    .restart local v26    # "secure":Z
    :goto_5
    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v37, v0

    .line 3285
    invoke-interface/range {v37 .. v37}, Lwx;->a()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v26

    invoke-static {v0, v1}, Lwg;->a(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v37

    aput-object v37, v35, v36

    new-instance v36, Ljava/security/SecureRandom;

    invoke-direct/range {v36 .. v36}, Ljava/security/SecureRandom;-><init>()V

    .line 3283
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3287
    invoke-virtual/range {v28 .. v28}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lwx;->a()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lwx;->b()I

    move-result v37

    const/16 v38, 0x1

    invoke-virtual/range {v34 .. v38}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    .line 3289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    const v35, 0xea60

    invoke-virtual/range {v34 .. v35}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 3290
    new-instance v34, Lwb;

    new-instance v35, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v36, v0

    .line 3291
    invoke-virtual/range {v36 .. v36}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v36

    const/16 v37, 0x400

    invoke-direct/range {v35 .. v37}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v34 .. v35}, Lwb;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    .line 3292
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;-><init>(Lwb;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    .line 3293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    .line 3302
    .end local v26    # "secure":Z
    .end local v28    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_f
    new-instance v34, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    move-object/from16 v35, v0

    const/16 v36, 0x400

    invoke-direct/range {v34 .. v36}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3307
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->a()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v35, "yahoo.com"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 3309
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_10

    .line 3310
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 3312
    :cond_10
    const-string/jumbo v34, "ID (\"GUID\" \"1\")"

    .line 14904
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    .line 3314
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->d()Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    move-result-object v34

    sget-object v35, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->CRAM_MD5:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_17

    .line 3316
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->f()V

    .line 3320
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_12

    .line 3321
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "Updating capabilities after CRAM-MD5 authentication for "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 3321
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    :cond_12
    const-string/jumbo v34, "CAPABILITY"

    .line 15904
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v34

    .line 3323
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v25

    .line 3324
    .restart local v25    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_18

    .line 3326
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v35, "Invalid CAPABILITY response received"

    invoke-static/range {v34 .. v35}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->INVALID_CAPABILITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v36, "Invalid CAPABILITY response received"

    invoke-direct/range {v34 .. v36}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v34
    :try_end_7
    .catch Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3337
    .end local v25    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_4
    move-exception v15

    .line 3339
    .local v15, "ie":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;
    :try_start_8
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual {v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->getMessage()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, ", IMAPException AuthenticationFailedException."

    aput-object v37, v35, v36

    invoke-static/range {v35 .. v35}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    sget-boolean v34, Lzb;->b:Z

    if-eqz v34, :cond_13

    .line 3341
    invoke-virtual {v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->printStackTrace()V

    .line 3344
    :cond_13
    invoke-virtual {v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_32

    invoke-virtual {v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v12

    .line 3346
    .restart local v12    # "errorMsg":Ljava/lang/String;
    :goto_6
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->n:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual {v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v12, v15}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v34
    :try_end_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3506
    .end local v12    # "errorMsg":Ljava/lang/String;
    .end local v15    # "ie":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;
    .end local v21    # "nullResponse":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .end local v22    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v27    # "socketAddress":Ljava/net/SocketAddress;
    :catch_5
    move-exception v8

    .line 3508
    .local v8, "ce":Ljava/net/ConnectException;
    :try_start_9
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual {v8}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, " ConnectException."

    aput-object v37, v35, v36

    invoke-static/range {v35 .. v35}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    invoke-virtual {v8}, Ljava/net/ConnectException;->printStackTrace()V

    .line 3510
    invoke-virtual {v8}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 3511
    .local v9, "ceMess":Ljava/lang/String;
    const-string/jumbo v34, "-"

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 3512
    .local v29, "tokens":[Ljava/lang/String;
    if-eqz v29, :cond_3b

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_3b

    const/16 v34, 0x1

    aget-object v34, v29, v34

    if-eqz v34, :cond_3b

    .line 3514
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_14

    .line 3515
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "Stripping host/port from ConnectionException for "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 3515
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3517
    :cond_14
    new-instance v34, Ljava/net/ConnectException;

    const/16 v35, 0x1

    aget-object v35, v29, v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v34
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3282
    .end local v8    # "ce":Ljava/net/ConnectException;
    .end local v9    # "ceMess":Ljava/lang/String;
    .end local v29    # "tokens":[Ljava/lang/String;
    .restart local v21    # "nullResponse":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .restart local v22    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v27    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v28    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_15
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 3295
    .end local v28    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_16
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->c()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_f

    .line 3297
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v35, "TLS not supported but required"

    invoke-static/range {v34 .. v35}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->TLS_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v36, "TLS not supported but required"

    invoke-direct/range {v34 .. v36}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v34
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3331
    :cond_17
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->d()Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;

    move-result-object v34

    sget-object v35, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;->PLAIN:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$AuthType;
    :try_end_b
    .catch Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_18

    .line 16545
    :try_start_c
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->AUTHENTICATE:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    .line 16548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->h()Z

    move-result v34

    if-eqz v34, :cond_24

    .line 16549
    const-string/jumbo v34, "user=%s\u0001auth=Bearer %s\u0001\u0001"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lwx;->e()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lwx;->i()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    .line 16550
    invoke-static/range {v34 .. v34}, Lvv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 16551
    const-string/jumbo v35, "AUTHENTICATE XOAUTH2 %s"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v34, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    .line 16556
    :goto_7
    sget-object v35, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v36, "start plain login"

    invoke-static/range {v35 .. v36}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16558
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/util/List;)Ljava/util/List;

    .line 16560
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v35, "plain login success"

    invoke-static/range {v34 .. v35}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16561
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->AUTH_COMPLETE:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;
    :try_end_c
    .catch Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3335
    :cond_18
    const/4 v5, 0x1

    .line 3357
    :try_start_d
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_19

    .line 3359
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "COMPRESS=DEFLATE = "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v35, "COMPRESS=DEFLATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;)Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3361
    :cond_19
    const-string/jumbo v34, "COMPRESS=DEFLATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1d

    .line 3363
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    const-string/jumbo v35, "connectivity"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 3364
    .local v10, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v31, 0x1

    .line 3366
    .local v31, "useCompression":Z
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v20

    .line 3367
    .local v20, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v20, :cond_1b

    .line 3369
    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    .line 3370
    .local v30, "type":I
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_1a

    .line 3371
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "On network type "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3372
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lwx;->a(I)Z

    move-result v31

    .line 3375
    .end local v30    # "type":I
    :cond_1b
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_1c

    .line 3376
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "useCompression "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 3377
    :cond_1c
    if-eqz v31, :cond_1d

    .line 3381
    :try_start_e
    const-string/jumbo v34, "COMPRESS DEFLATE"

    .line 16904
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    .line 3382
    new-instance v32, Liyj;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Liyj;-><init>(Ljava/io/InputStream;Z)V

    .line 3383
    .local v32, "zInputStream":Liyj;
    const/16 v34, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Liyj;->a(I)V

    .line 3384
    new-instance v34, Lwb;

    new-instance v35, Ljava/io/BufferedInputStream;

    const/16 v36, 0x400

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct/range {v34 .. v35}, Lwb;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    .line 3385
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;-><init>(Lwb;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    .line 3386
    new-instance v33, Liyk;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v34

    const/16 v35, 0x1

    const/16 v36, 0x1

    invoke-direct/range {v33 .. v36}, Liyk;-><init>(Ljava/io/OutputStream;IZ)V

    .line 3387
    .local v33, "zOutputStream":Liyk;
    new-instance v34, Ljava/io/BufferedOutputStream;

    const/16 v35, 0x400

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    .line 3388
    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Liyk;->a(I)V

    .line 3389
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_1d

    .line 3391
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "Compression enabled for "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 3391
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3403
    .end local v10    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v20    # "netInfo":Landroid/net/NetworkInfo;
    .end local v31    # "useCompression":Z
    .end local v32    # "zInputStream":Liyj;
    .end local v33    # "zOutputStream":Liyk;
    :cond_1d
    :goto_8
    :try_start_f
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_1e

    .line 3404
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "NAMESPACE = "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v35, "NAMESPACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;)Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", mPathPrefix = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v35, v0

    .line 3405
    invoke-interface/range {v35 .. v35}, Lwx;->g()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3407
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->g()Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_35

    .line 3409
    const-string/jumbo v34, "NAMESPACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_33

    .line 3411
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_1f

    .line 3412
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 3413
    :cond_1f
    const-string/jumbo v34, "NAMESPACE"

    .line 17904
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v19

    .line 3415
    .local v19, "namespaceResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_20
    :goto_9
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_35

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 3417
    .local v24, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    const/16 v35, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v35

    const-string/jumbo v36, "NAMESPACE"

    invoke-static/range {v35 .. v36}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_20

    .line 3419
    sget-boolean v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v35, :cond_21

    .line 3420
    sget-object v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "Got NAMESPACE response "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " on "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 18037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 3420
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3422
    :cond_21
    const/16 v35, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v23

    .line 3423
    .local v23, "personalNamespaces":Ljava/lang/Object;
    if-eqz v23, :cond_20

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move/from16 v35, v0

    if-eqz v35, :cond_20

    .line 3425
    sget-boolean v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v35, :cond_22

    .line 3426
    sget-object v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "Got personal namespaces: "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3427
    :cond_22
    move-object/from16 v0, v23

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-object v6, v0

    .line 3428
    .local v6, "bracketed":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 3429
    .local v13, "firstNamespace":Ljava/lang/Object;
    if-eqz v13, :cond_20

    instance-of v0, v13, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move/from16 v35, v0

    if-eqz v35, :cond_20

    .line 3431
    sget-boolean v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v35, :cond_23

    .line 3432
    sget-object v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "Got first personal namespaces: "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3433
    :cond_23
    move-object v0, v13

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-object v6, v0

    .line 3434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lwx;->a(Ljava/lang/String;)V

    .line 3435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lwx;->b(Ljava/lang/String;)V

    .line 3436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-interface/range {v35 .. v36}, Lwx;->c(Ljava/lang/String;)V

    .line 3437
    sget-boolean v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v35, :cond_20

    .line 3438
    sget-object v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "Got path \'"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lwx;->g()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\' and separator \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lwx;->j()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_9

    .line 16553
    .end local v6    # "bracketed":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v13    # "firstNamespace":Ljava/lang/Object;
    .end local v19    # "namespaceResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v23    # "personalNamespaces":Ljava/lang/Object;
    .end local v24    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :cond_24
    :try_start_10
    const-string/jumbo v34, "LOGIN %s %s"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lwx;->e()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lwx;->f()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_10
    .catch Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v34

    goto/16 :goto_7

    .line 16563
    :catch_6
    move-exception v34

    .line 16584
    :try_start_11
    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->getReponseString()Ljava/lang/String;

    move-result-object v37

    .line 16585
    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v36

    .line 16587
    if-eqz v36, :cond_25

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v35

    if-nez v35, :cond_26

    :cond_25
    move-object/from16 v36, v37

    .line 16591
    :cond_26
    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_AUTHENTICATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 16593
    if-eqz v37, :cond_2b

    .line 16595
    const-string/jumbo v38, "["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    .line 16596
    if-ltz v38, :cond_27

    .line 16597
    const-string/jumbo v39, "]"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 16598
    if-ltz v39, :cond_27

    move/from16 v0, v39

    move/from16 v1, v38

    if-le v0, v1, :cond_27

    .line 16599
    add-int/lit8 v38, v38, 0x1

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 16600
    const-string/jumbo v38, ","

    const-string/jumbo v39, ""

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 16604
    :cond_27
    if-eqz v37, :cond_2b

    .line 16605
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v38

    .line 16606
    const-string/jumbo v39, "authorized code"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_28

    const-string/jumbo v39, "service.mail.qq.com"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_2d

    .line 16607
    :cond_28
    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->QQMAIL_AUTHORIZED_CODE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 16618
    :cond_29
    :goto_a
    if-eqz v36, :cond_2a

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v38

    if-nez v38, :cond_2b

    :cond_2a
    move-object/from16 v36, v37

    .line 16624
    :cond_2b
    new-instance v37, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16566
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "login error: "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16568
    throw v37
    :try_end_11
    .catch Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 3349
    :catch_7
    move-exception v17

    .line 3351
    .local v17, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :try_start_12
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, ", MessagingException AuthenticationFailedException."

    aput-object v37, v35, v36

    invoke-static/range {v35 .. v35}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    sget-boolean v34, Lzb;->b:Z

    if-eqz v34, :cond_2c

    .line 3353
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 3355
    :cond_2c
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->n:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v36

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v34
    :try_end_12
    .catch Ljavax/net/ssl/SSLException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 16608
    .end local v17    # "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :cond_2d
    :try_start_13
    const-string/jumbo v39, "domainnotexist"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_2e

    .line 16609
    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->LOGIN_DOMAIN_NOT_EXIST_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    goto/16 :goto_a

    .line 16610
    :cond_2e
    const-string/jumbo v39, "plaintext"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_2f

    const-string/jumbo v39, "disallowed"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_2f

    .line 16611
    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->PLAIN_AUTHENTICATION_DISALLOWED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    goto/16 :goto_a

    .line 16612
    :cond_2f
    const-string/jumbo v39, "password"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_30

    const-string/jumbo v39, "pass"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_31

    .line 16613
    :cond_30
    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->USERNAME_OR_PASSWORD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    goto/16 :goto_a

    .line 16614
    :cond_31
    const-string/jumbo v39, "user"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_29

    const-string/jumbo v39, "suspended"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_29

    .line 16615
    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->USER_SUSPENDED_ERROR:Lcom/alibaba/alimei/framework/SDKError;
    :try_end_13
    .catch Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_a

    .line 3344
    .restart local v15    # "ie":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;
    :cond_32
    :try_start_14
    invoke-virtual {v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;->getReponseString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    .line 3394
    .end local v15    # "ie":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapException;
    .restart local v10    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v20    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v31    # "useCompression":Z
    :catch_8
    move-exception v11

    .line 3397
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string/jumbo v37, ", Unable to negotiate compression."

    aput-object v37, v35, v36

    invoke-static/range {v35 .. v35}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3446
    .end local v10    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v20    # "netInfo":Landroid/net/NetworkInfo;
    .end local v31    # "useCompression":Z
    :cond_33
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_34

    .line 3447
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 3448
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    const-string/jumbo v35, ""

    invoke-interface/range {v34 .. v35}, Lwx;->a(Ljava/lang/String;)V

    .line 3451
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lwx;->j()Ljava/lang/String;
    :try_end_14
    .catch Ljavax/net/ssl/SSLException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v34

    if-nez v34, :cond_37

    .line 3455
    :try_start_15
    const-string/jumbo v34, "LIST \"\" \"\""

    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    .line 3456
    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    .line 18904
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v18

    .line 3457
    .local v18, "nameResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_36
    :goto_b
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_37

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 3459
    .restart local v24    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    const/16 v35, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v35

    const-string/jumbo v36, "LIST"

    invoke-static/range {v35 .. v36}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_36

    .line 3461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Lwx;->b(Ljava/lang/String;)V

    .line 3462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-interface/range {v35 .. v36}, Lwx;->c(Ljava/lang/String;)V

    .line 3463
    sget-boolean v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v35, :cond_36

    .line 3464
    sget-object v35, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "Got path delimeter \'"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->m:Lwx;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Lwx;->j()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "\' for "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 19037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 3464
    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_b

    .line 3468
    .end local v18    # "nameResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v24    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :catch_9
    move-exception v11

    .line 3470
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v34, 0x2

    :try_start_16
    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    const-string/jumbo v36, ", Unable to get path delimeter using LIST."

    aput-object v36, v34, v35

    invoke-static/range {v34 .. v34}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3471
    .restart local v12    # "errorMsg":Ljava/lang/String;
    sget-object v34, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-static {v0, v12}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_37

    .line 3473
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-static {v0, v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catch Ljavax/net/ssl/SSLException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 3533
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "errorMsg":Ljava/lang/String;
    :cond_37
    sget-boolean v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v34, :cond_1

    .line 3534
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "      ++++> mSocket "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3535
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "      ++++> mIn "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3536
    sget-object v34, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "      ++++> mOut "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3488
    .end local v21    # "nullResponse":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .end local v22    # "nullResponses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v27    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v7    # "casue":Ljava/lang/Throwable;
    .local v11, "e":Ljavax/net/ssl/SSLException;
    :cond_38
    :try_start_17
    instance-of v0, v11, Ljavax/net/ssl/SSLHandshakeException;

    move/from16 v34, v0

    if-eqz v34, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->j:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v34, v0

    sget-object v35, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;->SSL_CONNECTING:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection$Status;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_39

    .line 3489
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->SSL_CONNECTION_NOT_AVAILABLE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v34

    .line 3491
    :cond_39
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->SSL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v11}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v34

    .line 3503
    .end local v7    # "casue":Ljava/lang/Throwable;
    .end local v11    # "e":Ljavax/net/ssl/SSLException;
    .restart local v12    # "errorMsg":Ljava/lang/String;
    .restart local v14    # "gse":Ljava/security/GeneralSecurityException;
    :cond_3a
    new-instance v34, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v35, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_SECURITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v12, v14}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v34

    .line 3521
    .end local v12    # "errorMsg":Ljava/lang/String;
    .end local v14    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v8    # "ce":Ljava/net/ConnectException;
    .restart local v9    # "ceMess":Ljava/lang/String;
    .restart local v29    # "tokens":[Ljava/lang/String;
    :cond_3b
    throw v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 3735
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    .line 3736
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 3741
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3742
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "close "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3746
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    if-eqz v1, :cond_1

    .line 3747
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    invoke-virtual {v1}, Lwb;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3759
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 3760
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3772
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    if-eqz v1, :cond_3

    .line 3773
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3783
    :cond_3
    :goto_2
    iput-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b:Lwb;

    .line 3784
    iput-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    .line 3785
    iput-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a:Ljava/net/Socket;

    .line 3786
    return-void

    .line 3750
    :catch_0
    move-exception v0

    .line 3752
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 3753
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3754
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v2, "\u5173\u95ed mIn \u62a5\u9519"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3763
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3765
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 3766
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3767
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v2, "\u5173\u95ed mOut \u62a5\u9519"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3776
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 3778
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 3779
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3780
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v2, "\u5173\u95ed mSocket \u62a5\u9519"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public final declared-synchronized e()Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3790
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3032
    .line 5037
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 3032
    return-object v0
.end method
