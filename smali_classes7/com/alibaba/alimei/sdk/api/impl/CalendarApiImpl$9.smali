.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->deleteEvent(JZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

.field final synthetic val$eventId:J

.field final synthetic val$isSystem:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;->val$isSystem:Z

    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;->val$eventId:J

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 8
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 399
    iget-boolean v5, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;->val$isSystem:Z

    if-eqz v5, :cond_0

    .line 400
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSysCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;

    move-result-object v4

    .line 401
    .local v4, "sysDatasourc":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    iget-wide v6, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;->val$eventId:J

    invoke-interface {v4, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;->deleteEvent(J)V

    .line 410
    .end local v4    # "sysDatasourc":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    :goto_0
    new-instance v2, Lyc;

    const-string/jumbo v5, "basic_UpdateAddCalendar"

    iget-object v6, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v2, v5, v6, v7}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    .local v2, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    .line 413
    .local v1, "eventCenter":Lya;
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 416
    return-void

    .line 403
    .end local v1    # "eventCenter":Lya;
    .end local v2    # "eventMessage":Lyc;
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 404
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-wide v6, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;->val$eventId:J

    invoke-interface {v0, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->deleteEvent(J)I

    move-result v3

    .line 405
    .local v3, "result":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 407
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$9;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-static {v5}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->access$300(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)V

    goto :goto_0
.end method
