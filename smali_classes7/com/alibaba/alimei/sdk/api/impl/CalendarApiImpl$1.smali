.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->queryAccount(JZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

.field final synthetic val$calId:J

.field final synthetic val$isSystem:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;->val$isSystem:Z

    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;->val$calId:J

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 6
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 97
    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;->val$isSystem:Z

    if-eqz v4, :cond_0

    .line 98
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSysCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;

    move-result-object v3

    .line 99
    .local v3, "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;->val$calId:J

    invoke-interface {v3, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;->querySystemCalendar(J)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    move-result-object v0

    .line 105
    .end local v3    # "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    .local v0, "calModel":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    :goto_0
    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 106
    return-void

    .line 101
    .end local v0    # "calModel":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v2

    .line 102
    .local v2, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;->val$calId:J

    invoke-interface {v2, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->queryAccount(J)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v1

    .line 103
    .local v1, "calendar":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-static {v4, v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->access$000(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    move-result-object v0

    .restart local v0    # "calModel":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    goto :goto_0
.end method
