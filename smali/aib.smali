.class public final Laib;
.super Lyq;
.source "UpdateCalendarStatusTask.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "mailId"    # Ljava/lang/String;
    .param p3, "calendarServerId"    # Ljava/lang/String;
    .param p4, "oldStatus"    # I
    .param p5, "status"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Lyq;-><init>()V

    .line 30
    iput-object p1, p0, Laib;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Laib;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Laib;->c:Ljava/lang/String;

    .line 33
    iput p5, p0, Laib;->e:I

    .line 34
    iput p4, p0, Laib;->d:I

    .line 35
    return-void
.end method

.method static synthetic a(Laib;Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 7
    .param p0, "x0"    # Laib;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .prologue
    .line 20
    .line 1103
    new-instance v0, Lyc;

    const-string/jumbo v1, "basic_UpdateCalendarEvent"

    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1104
    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1105
    iget v1, p0, Laib;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyc;->g:Ljava/lang/Object;

    .line 1106
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 1107
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 1108
    if-eqz v0, :cond_0

    .line 1109
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Laib;->a:Ljava/lang/String;

    iget v5, p0, Laib;->d:I

    iget-object v6, p0, Laib;->b:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->changMailCalenderStatus(JLjava/lang/String;ILjava/lang/String;)V

    .line 1112
    :cond_0
    const-string/jumbo v0, "CalendarStatusTask"

    const-string/jumbo v1, "Update calendar status ServiceException: "

    invoke-static {v0, v1, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    return-void
.end method

.method static synthetic a(Laib;Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 7
    .param p0, "x0"    # Laib;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .prologue
    .line 20
    .line 1088
    new-instance v0, Lyc;

    const-string/jumbo v1, "basic_UpdateCalendarEvent"

    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1089
    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1090
    iget v1, p0, Laib;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lyc;->g:Ljava/lang/Object;

    .line 1091
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 1092
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultUserAccount()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 1093
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Laib;->a:Ljava/lang/String;

    iget v5, p0, Laib;->d:I

    iget-object v6, p0, Laib;->b:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->changMailCalenderStatus(JLjava/lang/String;ILjava/lang/String;)V

    .line 1095
    const-string/jumbo v0, "CalendarStatusTask"

    const-string/jumbo v1, "Update calendar status ServiceException: "

    invoke-static {v0, v1, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    return-void
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "CalendarStatusTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 39
    iget-object v2, p0, Laib;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getCalendarService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;

    move-result-object v1

    .line 40
    .local v1, "service":Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;
    new-instance v0, Laib$1;

    invoke-direct {v0, p0}, Laib$1;-><init>(Laib;)V

    .line 74
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;>;"
    iget-object v2, p0, Laib;->b:Ljava/lang/String;

    iget-object v3, p0, Laib;->c:Ljava/lang/String;

    iget v4, p0, Laib;->e:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcCalendarService;->uploadCalendarStatus(Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 75
    const/4 v2, 0x1

    return v2
.end method
