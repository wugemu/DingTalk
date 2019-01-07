.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$27;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->removeCalendarAccount(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$27;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 7
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 894
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 895
    .local v1, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/16 v3, 0x41

    const-string/jumbo v6, "0"

    invoke-interface {v1, v4, v5, v3, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->updateSyncKey(JILjava/lang/String;)I

    .line 896
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/16 v3, 0x46

    const-string/jumbo v6, "0"

    invoke-interface {v1, v4, v5, v3, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->updateSyncKey(JILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v1    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :goto_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 901
    .local v0, "calendarDatasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v3, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->deleteCalendarAccount(Ljava/lang/String;Z)I

    .line 902
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 903
    return-void

    .line 897
    .end local v0    # "calendarDatasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    :catch_0
    move-exception v2

    .line 898
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "CalendarApiImpl"

    invoke-static {v3, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
