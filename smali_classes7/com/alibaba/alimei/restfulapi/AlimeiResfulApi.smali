.class public Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;
.super Ljava/lang/Object;
.source "AlimeiResfulApi.java"


# static fields
.field private static factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

.field private static sAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

.field private static sClientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

.field private static sConfiguration:Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

.field private static sContext:Landroid/content/Context;

.field private static sDefaultInitMailCount:I

.field private static sFullFlowTracker:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;

.field private static sIRpcTracker:Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

.field private static sLogConfig:Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;

.field private static sOkHttpFactory:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

.field private static sRobot:Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;

.field private static sSvcCltClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sDefaultInitMailCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInitialize()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    if-nez v0, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Please initialize first!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    return-void
.end method

.method public static final getAccountService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 309
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 310
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/RpcAccountServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcAccountService;

    return-object v0
.end method

.method public static final getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final getAttachmentService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 234
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 235
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/AttachmentServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;

    return-object v0
.end method

.method public static final getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 164
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    return-object v0
.end method

.method public static final getCalendarService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 277
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 278
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/CalendarServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    return-object v0
.end method

.method public static final getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sConfiguration:Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    return-object v0
.end method

.method public static final getContactService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcContactService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 266
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 267
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    return-object v0
.end method

.method public static final getDentryService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 360
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 361
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcDentryServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    return-object v0
.end method

.method public static final getFavoriteService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 371
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 372
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcFavoriteServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/service/RpcFavoriteService;

    return-object v0
.end method

.method public static final getFileService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcFileService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 326
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 327
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcFileServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/service/RpcFileService;

    return-object v0
.end method

.method public static getFullFlowTracker()Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sFullFlowTracker:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;

    return-object v0
.end method

.method public static final getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sClientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;->getInstance()Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sClientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    .line 174
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sClientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    return-object v0
.end method

.method public static final getInjectServiceClient()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sSvcCltClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public static final getInternalService(Z)Lcom/alibaba/alimei/restfulapi/service/RpcInternalService;
    .locals 3
    .param p0, "isAsynchronous"    # Z

    .prologue
    .line 297
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 298
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/InternalServiceImpl;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcInternalService;

    return-object v0
.end method

.method public static final getLogConfig()Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sLogConfig:Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;

    return-object v0
.end method

.method public static final getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 223
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 224
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/MailServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    return-object v0
.end method

.method public static getMailSyncInitCount()I
    .locals 1

    .prologue
    .line 213
    sget v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sDefaultInitMailCount:I

    return v0
.end method

.method public static final getMigrateService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMigrateService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 393
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 394
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcMigrateService;

    return-object v0
.end method

.method public static final getNoteService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcNoteService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 337
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 338
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcNoteServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/service/RpcNoteService;

    return-object v0
.end method

.method public static final getOkHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sOkHttpFactory:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;->getInstance()Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sOkHttpFactory:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    .line 186
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sOkHttpFactory:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    return-object v0
.end method

.method public static final getPreviewService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcPreviewService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 382
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 383
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/PreviewServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcPreviewService;

    return-object v0
.end method

.method public static final getProjectService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcProjectService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 349
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 350
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcProjectServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/service/RpcProjectService;

    return-object v0
.end method

.method public static final getRobot()Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sRobot:Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;

    return-object v0
.end method

.method public static final getRpcTracker()Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sIRpcTracker:Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    return-object v0
.end method

.method public static final getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 245
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 246
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/SyncServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    return-object v0
.end method

.method public static final getTagService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcTagService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 404
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 405
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/RpcTagServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcTagService;

    return-object v0
.end method

.method public static final getTodoService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcTodoService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 315
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 316
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcTodoServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/service/RpcTodoService;

    return-object v0
.end method

.method public static final getV2SyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 256
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 257
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/v2/service/impl/RpcV2SyncServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/service/RpcV2SyncService;

    return-object v0
.end method

.method public static final getVoipService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcVoipService;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "isAsynchronous"    # Z

    .prologue
    .line 288
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->checkInitialize()V

    .line 289
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    const-class v1, Lcom/alibaba/alimei/restfulapi/service/impl/VoipServiceImpl;

    invoke-interface {v0, v1, p1, p0}, Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;->getService(Ljava/lang/Class;ZLjava/lang/String;)Lcom/alibaba/alimei/restfulapi/service/impl/BaseService;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/service/RpcVoipService;

    return-object v0
.end method

.method public static final initialize(Landroid/content/Context;Lcom/alibaba/alimei/restfulapi/ApiConfiguration;Lcom/alibaba/alimei/restfulapi/auth/AuthStore;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    .param p2, "authStore"    # Lcom/alibaba/alimei/restfulapi/auth/AuthStore;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->initialize(Landroid/content/Context;Lcom/alibaba/alimei/restfulapi/ApiConfiguration;Lcom/alibaba/alimei/restfulapi/auth/AuthStore;Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;)V

    .line 117
    return-void
.end method

.method public static final initialize(Landroid/content/Context;Lcom/alibaba/alimei/restfulapi/ApiConfiguration;Lcom/alibaba/alimei/restfulapi/auth/AuthStore;Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    .param p2, "authStore"    # Lcom/alibaba/alimei/restfulapi/auth/AuthStore;
    .param p3, "listener"    # Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u65e0\u6548\u7684\u8c03\u7528\u53c2\u6570\uff0c\u8bf7\u68c0\u67e5context, configuration, authStore\u662f\u5426\u6709\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    sput-object p1, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sConfiguration:Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    .line 133
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    if-nez v0, :cond_3

    .line 134
    :cond_2
    new-instance v0, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;

    invoke-direct {v0, p2, p3}, Lcom/alibaba/alimei/restfulapi/DefaultAuthProvider;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthStore;Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;)V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    .line 135
    new-instance v0, Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sAuthProvider:Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/impl/ServiceFactoryImpl;-><init>(Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;)V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->factory:Lcom/alibaba/alimei/restfulapi/service/ServiceFactory;

    .line 138
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sContext:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    sput-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sContext:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 141
    sput-object p0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sContext:Landroid/content/Context;

    .line 145
    :cond_4
    invoke-interface {p1}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getHttpClientFactory()Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sClientFactory:Lcom/alibaba/alimei/restfulapi/spi/http/HttpClientFactory;

    .line 146
    invoke-interface {p1}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getOKHttpFactory()Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sOkHttpFactory:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;

    .line 148
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/utils/ARFStatUtils;->register()V

    .line 149
    return-void
.end method

.method public static final setApiLoggerLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 72
    invoke-static {p0}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->setLoggerLevel(I)V

    .line 73
    return-void
.end method

.method public static final setApiVersion(I)V
    .locals 0
    .param p0, "version"    # I

    .prologue
    .line 80
    sput p0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->ApiVersion:I

    .line 81
    return-void
.end method

.method public static setFullFlowTracker(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;)V
    .locals 0
    .param p0, "tracker"    # Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;

    .prologue
    .line 432
    sput-object p0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sFullFlowTracker:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;

    .line 433
    return-void
.end method

.method public static final setInjectServiceClient(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/restfulapi/spi/ServiceClient;>;"
    sput-object p0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sSvcCltClazz:Ljava/lang/Class;

    .line 89
    return-void
.end method

.method public static final setLogConfig(Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;)V
    .locals 0
    .param p0, "config"    # Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;

    .prologue
    .line 416
    sput-object p0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sLogConfig:Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;

    .line 417
    return-void
.end method

.method public static setMailSyncInitCount(I)V
    .locals 1
    .param p0, "initCount"    # I

    .prologue
    .line 201
    if-lez p0, :cond_0

    const/16 v0, 0x96

    if-le p0, v0, :cond_1

    .line 202
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sDefaultInitMailCount:I

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_1
    sput p0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sDefaultInitMailCount:I

    goto :goto_0
.end method

.method public static final setRobot(Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;)V
    .locals 0
    .param p0, "robot"    # Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;

    .prologue
    .line 424
    sput-object p0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sRobot:Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;

    .line 425
    return-void
.end method

.method public static final setRpcTracker(Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;)V
    .locals 0
    .param p0, "tracker"    # Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    .prologue
    .line 409
    sput-object p0, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->sIRpcTracker:Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;

    .line 410
    return-void
.end method
