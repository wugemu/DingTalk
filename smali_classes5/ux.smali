.class public final Lux;
.super Ljava/lang/Object;
.source "DomainNameChecker.java"


# static fields
.field private static a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    :try_start_0
    const-string/jumbo v0, "^[a-f0-9\\.:]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lux;->a:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 92
    :cond_0
    const/4 v2, 0x0

    .line 123
    :cond_1
    :goto_0
    return v2

    .line 99
    :cond_2
    :try_start_0
    sget-object v3, Lux;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 100
    .local v2, "rval":Z
    if-eqz v2, :cond_1

    .line 102
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 106
    .end local v2    # "rval":Z
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "errorMessage":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 111
    const-string/jumbo v1, "unknown host exception"

    .line 114
    :cond_3
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 116
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DomainNameChecker.isIpAddress(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "rval":Z
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "thisDomain"    # Ljava/lang/String;
    .param p1, "thatDomain"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 276
    sget-boolean v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 278
    sget-object v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "DomainNameChecker.matchDns(): this domain: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " that domain: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_1
    move v1, v7

    .line 330
    :cond_2
    :goto_0
    return v1

    .line 289
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 293
    .local v1, "rval":Z
    if-nez v1, :cond_2

    .line 295
    const-string/jumbo v8, "\\."

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "thisDomainTokens":[Ljava/lang/String;
    const-string/jumbo v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "thatDomainTokens":[Ljava/lang/String;
    array-length v5, v4

    .line 299
    .local v5, "thisDomainTokensNum":I
    array-length v3, v2

    .line 302
    .local v3, "thatDomainTokensNum":I
    if-lt v5, v3, :cond_2

    .line 304
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 306
    aget-object v8, v4, v0

    aget-object v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 307
    if-nez v1, :cond_7

    .line 311
    if-nez v0, :cond_4

    if-ne v5, v3, :cond_4

    move v1, v6

    .line 312
    :goto_2
    if-eqz v1, :cond_2

    .line 314
    aget-object v8, v2, v7

    const-string/jumbo v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 315
    if-nez v1, :cond_2

    .line 319
    aget-object v8, v4, v7

    aget-object v9, v2, v7

    .line 1344
    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    .line 1346
    const/16 v10, 0x2a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 1347
    if-ltz v10, :cond_6

    .line 1349
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v11, v12, :cond_6

    .line 1351
    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1352
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1354
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1355
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v6

    .line 319
    :goto_3
    goto :goto_0

    :cond_4
    move v1, v7

    .line 311
    goto :goto_2

    :cond_5
    move v1, v7

    .line 1355
    goto :goto_3

    :cond_6
    move v1, v7

    .line 1360
    goto :goto_3

    .line 304
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "thisDomain"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p1}, Lux;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-static {p0, p1}, Lux;->c(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {p0, p1}, Lux;->b(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 11
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "thisDomain"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 138
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 140
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "DomainNameChecker.matchIpAddress(): this domain: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v5

    .line 146
    .local v5, "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v5, :cond_3

    .line 148
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 150
    .local v4, "subjectAltName":Ljava/lang/Object;
    check-cast v4, Ljava/util/List;

    .end local v4    # "subjectAltName":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 151
    .local v2, "altNameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v2, :cond_1

    const/4 v6, 0x2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-gt v6, v10, :cond_1

    .line 153
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 154
    .local v3, "altNameType":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 156
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v10, 0x7

    if-ne v6, v10, :cond_1

    .line 158
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 159
    .local v1, "altName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 161
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 163
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "alternative IP: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 180
    .end local v1    # "altName":Ljava/lang/String;
    .end local v2    # "altNameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "altNameType":Ljava/lang/Integer;
    .end local v5    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    return v6

    :catch_0
    move-exception v6

    :cond_3
    move v6, v8

    goto :goto_0
.end method

.method private static c(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 15
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "thisDomain"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v6, 0x0

    .line 198
    .local v6, "hasDns":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v10

    .line 199
    .local v10, "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v10, :cond_2

    .line 201
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 202
    .local v8, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 204
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object v0, v13

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 205
    .local v2, "altNameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v2, :cond_0

    const/4 v13, 0x2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-gt v13, v14, :cond_0

    .line 207
    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object v0, v13

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 208
    .local v3, "altNameType":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 212
    const/4 v6, 0x1

    .line 213
    const/4 v13, 0x1

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 214
    .local v1, "altName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 216
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lux;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_0

    .line 218
    const/4 v13, 0x1

    .line 264
    .end local v1    # "altName":Ljava/lang/String;
    .end local v2    # "altNameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "altNameType":Ljava/lang/Integer;
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v10    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    return v13

    .line 227
    :catch_0
    move-exception v4

    .line 234
    .local v4, "e":Ljava/security/cert/CertificateParsingException;
    sget-boolean v13, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v13, :cond_2

    .line 236
    invoke-virtual {v4}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "errorMessage":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 239
    const-string/jumbo v5, "failed to parse certificate"

    .line 242
    :cond_1
    sget-object v13, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "DomainNameChecker.matchDns(): "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .end local v4    # "e":Ljava/security/cert/CertificateParsingException;
    .end local v5    # "errorMessage":Ljava/lang/String;
    :cond_2
    if-nez v6, :cond_4

    .line 249
    new-instance v12, Lkyb;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lkyb;-><init>(Ljava/lang/String;)V

    .line 251
    .local v12, "xName":Lkyb;
    sget-object v13, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "not has dns, X509Name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lkyb;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v12}, Lkyb;->f()Ljava/util/Vector;

    move-result-object v11

    .line 254
    .local v11, "val":Ljava/util/Vector;, "Ljava/util/Vector<*>;"
    invoke-virtual {v12}, Lkyb;->e()Ljava/util/Vector;

    move-result-object v9

    .line 255
    .local v9, "oid":Ljava/util/Vector;, "Ljava/util/Vector<*>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v13

    if-ge v7, v13, :cond_4

    .line 257
    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lkyb;->e:Lkvn;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 259
    invoke-virtual {v11, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lux;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto :goto_0

    .line 255
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 264
    .end local v7    # "i":I
    .end local v9    # "oid":Ljava/util/Vector;, "Ljava/util/Vector<*>;"
    .end local v11    # "val":Ljava/util/Vector;, "Ljava/util/Vector<*>;"
    .end local v12    # "xName":Lkyb;
    :cond_4
    const/4 v13, 0x0

    goto :goto_0
.end method
