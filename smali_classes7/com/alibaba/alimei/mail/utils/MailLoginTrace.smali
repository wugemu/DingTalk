.class public final Lcom/alibaba/alimei/mail/utils/MailLoginTrace;
.super Ljava/lang/Object;
.source "MailLoginTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;,
        Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/alibaba/alimei/mail/utils/MailLoginTrace;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a:Z

    .line 107
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b:Z

    .line 109
    iput v3, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->p:I

    .line 111
    sget-object v2, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->UNKNOWN:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->q:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    .line 112
    sget-object v2, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->OTHER:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 114
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->r:Z

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 119
    .local v0, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v2, "loginResult"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    const-string/jumbo v2, "loginDomain"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    const-string/jumbo v2, "loginType"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    const-string/jumbo v2, "loginFAQ"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const-string/jumbo v2, "loginServerConfig"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    const-string/jumbo v2, "loginDomainType"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    const-string/jumbo v2, "loginLastError"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 128
    .local v1, "measures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v2, "loginCount"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "CMail"

    const-string/jumbo v4, "mail.commonLogin"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->registerStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 133
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->d()V

    .line 134
    return-void
.end method

.method public static a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->e:Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->e:Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    .line 74
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->e:Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->e:Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    .line 74
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->e:Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    monitor-exit v1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->f:Ljava/lang/String;

    .line 181
    iput-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    .line 182
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b:Z

    .line 183
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a:Z

    .line 184
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->r:Z

    .line 185
    iput v1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->p:I

    .line 186
    iput-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->h:Ljava/lang/String;

    .line 187
    iput-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->i:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->q:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    .line 193
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->ALI:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    if-ne p1, v0, :cond_0

    .line 194
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->ALIMAIL:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 196
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "accountEmail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    const-string/jumbo v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 204
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "domain":Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "imap."

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->j:Ljava/lang/String;

    .line 206
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "smtp,"

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->k:Ljava/lang/String;

    .line 207
    const-string/jumbo v2, "993"

    iput-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->l:Ljava/lang/String;

    .line 208
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->n:Z

    .line 209
    const-string/jumbo v2, "465"

    iput-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->m:Ljava/lang/String;

    .line 210
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->o:Z

    .line 213
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "isCommonAccount"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 277
    const-string/jumbo v1, "MailLoginTrace"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "login failure:"

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    const-string/jumbo v4, " msg:"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    aput-object p2, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", config:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 277
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "lastError="

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->h:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "arg":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 283
    const-string/jumbo v1, "mail.accpuntLogin.imap"

    invoke-static {v1, p1, p2, v0}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    iput-boolean v6, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->r:Z

    .line 289
    iput-object p1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->h:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->i:Ljava/lang/String;

    .line 291
    iget v1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->p:I

    .line 292
    return-void

    .line 285
    :cond_0
    const-string/jumbo v1, "mail.accountLogin"

    invoke-static {v1, p1, p2, v0}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "imapServer"    # Ljava/lang/String;
    .param p2, "imapPort"    # Ljava/lang/String;
    .param p3, "imapSSL"    # Z
    .param p4, "smtpServer"    # Ljava/lang/String;
    .param p5, "smtpPort"    # Ljava/lang/String;
    .param p6, "smtpSSL"    # Z

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->j:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->l:Ljava/lang/String;

    .line 227
    iput-boolean p3, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->n:Z

    .line 228
    iput-object p4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->k:Ljava/lang/String;

    .line 229
    iput-object p5, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->m:Ljava/lang/String;

    .line 230
    iput-boolean p6, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->o:Z

    .line 231
    return-void
.end method

.method public final a(Z)V
    .locals 9
    .param p1, "isCommonAccount"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 260
    const-string/jumbo v1, "MailLoginTrace"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "login success with lastError: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->h:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "lastError="

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->h:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "arg":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 265
    const-string/jumbo v1, "mail.accpuntLogin.imap"

    invoke-static {v1, v0}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->r:Z

    .line 271
    iput-object v8, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->h:Ljava/lang/String;

    .line 272
    iput-object v8, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->i:Ljava/lang/String;

    .line 273
    iget v1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->p:I

    .line 274
    return-void

    .line 267
    :cond_0
    const-string/jumbo v1, "mail.accountLogin"

    invoke-static {v1, v0}, Lafe;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v3, "measures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    iget-object v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 145
    const-string/jumbo v4, "loginType"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->q:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    invoke-virtual {v5}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 148
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 149
    iget-object v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "domain":Ljava/lang/String;
    const-string/jumbo v4, "loginDomain"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .end local v1    # "domain":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "MailLoginTrace"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "commit login result:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->r:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->r:Z

    if-eqz v4, :cond_1

    .line 156
    const-string/jumbo v4, "loginResult"

    const-string/jumbo v5, "success"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v2    # "index":I
    :goto_0
    const-string/jumbo v5, "loginFAQ"

    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "seen"

    :goto_1
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v5, "loginServerConfig"

    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->b:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "use_config"

    :goto_2
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v4, "loginDomainType"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    invoke-virtual {v5}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v5, "loginLastError"

    iget-object v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->h:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->h:Ljava/lang/String;

    :goto_3
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v4, "loginCount"

    iget v5, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->p:I

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "CMail"

    const-string/jumbo v6, "mail.commonLogin"

    invoke-interface {v4, v5, v6, v0, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 176
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->d()V

    .line 177
    return-void

    .line 158
    .restart local v2    # "index":I
    :cond_1
    const-string/jumbo v4, "loginResult"

    const-string/jumbo v5, "leave"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    .end local v2    # "index":I
    :cond_2
    const-string/jumbo v4, "loginResult"

    const-string/jumbo v5, "noAction"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v4, "loginDomain"

    const-string/jumbo v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v4, "loginType"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->q:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    invoke-virtual {v5}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_3
    const-string/jumbo v4, "unseen"

    goto :goto_1

    .line 167
    :cond_4
    const-string/jumbo v4, "none"

    goto :goto_2

    .line 169
    :cond_5
    const-string/jumbo v4, "none"

    goto :goto_3
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const-string/jumbo v0, "MailLoginTrace"

    const-string/jumbo v1, "login change account"

    invoke-static {v0, p1, v1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    const-string/jumbo v1, "qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->QQ:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    const-string/jumbo v1, "163.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_163:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->g:Ljava/lang/String;

    const-string/jumbo v1, "126.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;->NETEASE_126:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$DomainType;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 234
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "(incoming:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->n:Z

    .line 235
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "; outgoing:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->o:Z

    .line 236
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, ")"

    aput-object v2, v0, v1

    .line 234
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
