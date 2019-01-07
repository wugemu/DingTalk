.class public final Lafg;
.super Ljava/lang/Object;
.source "MailTraceUtils.java"


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lafg;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Ljava/lang/String;
    .locals 2
    .param p0, "exception"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 383
    .line 4369
    if-nez p0, :cond_0

    .line 4370
    const-string/jumbo v0, "UNKNOWN ERROR!"

    :goto_0
    return-object v0

    .line 4373
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 4374
    const-string/jumbo v1, "[AlimeiSdkException:"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4375
    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4376
    const-string/jumbo v1, "stacktrace:"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4377
    invoke-static {p0}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4378
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4379
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 130
    const-string/jumbo v0, "mHasInitMailDB == fasle"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, p0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-static {p1}, Lafg;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-static {p0, v1, v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tag:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", desc:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "listener"    # Lcma;

    .prologue
    .line 75
    if-nez p2, :cond_0

    const-string/jumbo v0, ", listener is null"

    .line 76
    .local v0, "lis":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tag:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", desc:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    .line 77
    return-void

    .line 75
    .end local v0    # "lis":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ", listener is not null"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "mailProvider"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 224
    sget-object v3, Lafg;->a:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 225
    sget-object v3, Lafg;->a:Ljava/util/HashSet;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->TIMED_OUT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v3, Lafg;->a:Ljava/util/HashSet;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->USERNAME_OR_PASSWORD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v3, Lafg;->a:Ljava/util/HashSet;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->USER_SUSPENDED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v3, Lafg;->a:Ljava/util/HashSet;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->CERTIFICATE_VALIDATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v3, Lafg;->a:Ljava/util/HashSet;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->PLAIN_AUTHENTICATION_DISALLOWED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v3, Lafg;->a:Ljava/util/HashSet;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->QQMAIL_AUTHORIZED_CODE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v3, Lafg;->a:Ljava/util/HashSet;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->LOGIN_DOMAIN_NOT_EXIST_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    if-nez p2, :cond_2

    .line 257
    .end local p1    # "mailProvider":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 238
    .restart local p1    # "mailProvider":Ljava/lang/String;
    :cond_2
    invoke-static {p0, p2}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 240
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    .line 241
    .local v1, "error":Lcom/alibaba/alimei/framework/SDKError;
    if-eqz v1, :cond_1

    .line 245
    sget-object v3, Lafg;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v2, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "code"

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v3, "message"

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v3, "server"

    if-eqz p1, :cond_3

    .end local p1    # "mailProvider":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "IMAP method:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "desc":Ljava/lang/String;
    const/16 v3, 0xdac

    invoke-static {v3, v2, v0}, Lajg;->a(ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v0    # "desc":Ljava/lang/String;
    .restart local p1    # "mailProvider":Ljava/lang/String;
    :cond_3
    const-string/jumbo p1, ""

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "moniterPoint"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 291
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    .line 1346
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 1347
    const-string/jumbo v2, "[Method:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1348
    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1351
    const-string/jumbo v2, " ErrorCode:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1352
    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1355
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1356
    const-string/jumbo v2, " ErrorMsg:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1357
    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1360
    :cond_1
    if-eqz p3, :cond_2

    .line 1361
    const-string/jumbo v2, " Exception:"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1362
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1364
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1365
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "ctrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "ctrlClicked:"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, ", args:"

    aput-object v2, v1, v0

    const/4 v2, 0x3

    .line 1387
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1388
    :cond_0
    const-string/jumbo v0, "NULL"

    .line 101
    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 102
    return-void

    .line 1391
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1392
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1393
    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1394
    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1395
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1396
    const-string/jumbo v0, ";"

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 1399
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 2
    .param p0, "def"    # Z

    .prologue
    .line 201
    const-string/jumbo v0, "cmail_loginStatus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 3246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 151
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    new-instance v1, Lafg$1;

    invoke-direct {v1}, Lafg$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->queryAllAccounts(Lxv;)V

    .line 169
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "ctrName"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lafg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    const-string/jumbo p1, "null"

    .line 112
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "method:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", email:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string/jumbo v0, "null"

    .line 117
    .local v0, "encodeEmail":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-static {p1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tag:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", desc:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, " email:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "moniterPoint"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 302
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0, p1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const-string/jumbo v0, "mail_logout_server_logout"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "moniterPoint"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 313
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 5
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "pref_key_mail_never_bind"

    aput-object v3, v2, v1

    const-string/jumbo v1, "_"

    aput-object v1, v2, v4

    const/4 v1, 0x2

    aput-object p0, v2, v1

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "firstBindKey":Ljava/lang/String;
    invoke-static {v0, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0, p1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    const-string/jumbo v0, "JustForStatisticActivity"

    const-string/jumbo v1, "mail_unexpected_click"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    const/16 v0, 0x64b

    const-string/jumbo v1, "\u7a0b\u5e8f\u65ad\u8a00\u5f02\u5e38"

    invoke-static {v0, p1, v1}, Lajg;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3146
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 140
    :goto_0
    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string/jumbo v1, "cmail_loginStatus"

    invoke-static {v1, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 177
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_key_mail_never_bind"

    aput-object v2, v1, v3

    const-string/jumbo v2, "_"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "firstBindKey":Ljava/lang/String;
    invoke-static {v0, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 179
    invoke-static {p0, p1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string/jumbo v0, "cmail_loginStatus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 197
    invoke-static {p0, p1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-static {}, Lafh;->b()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "bindEmail":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string/jumbo v1, "cmail_loginStatus"

    invoke-static {v1, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    .line 215
    const-string/jumbo v1, "mail_bindmail_already_logout"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ", email:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 216
    invoke-static {p1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    const-string/jumbo v1, "JustForStatisticActivity"

    const-string/jumbo v2, "mail_bindmail_already_logout"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lafe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    const/16 v1, 0x649

    const-string/jumbo v2, "\u5f02\u5e38\u767b\u51fa"

    invoke-static {v1, p0, v2}, Lajg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
