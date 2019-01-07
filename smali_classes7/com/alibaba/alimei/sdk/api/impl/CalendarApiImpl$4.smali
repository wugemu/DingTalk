.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->loadEventDetail(JJJZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

.field final synthetic val$endMillis:J

.field final synthetic val$eventId:J

.field final synthetic val$isSystem:Z

.field final synthetic val$startMillis:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;ZJJJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-boolean p2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$isSystem:Z

    iput-wide p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$eventId:J

    iput-wide p5, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$startMillis:J

    iput-wide p7, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$endMillis:J

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 259
    iget-boolean v2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$isSystem:Z

    if-eqz v2, :cond_0

    .line 260
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSysCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;

    move-result-object v1

    .line 261
    .local v1, "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$eventId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$startMillis:J

    iget-wide v6, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$endMillis:J

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;->loadEventDetail(JJJ)Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    move-result-object v10

    .line 266
    .end local v1    # "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    .local v10, "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    :goto_0
    new-instance v0, Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/api/ApiResult;-><init>()V

    .line 267
    .local v0, "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    iput-object v10, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 268
    return-object v0

    .line 263
    .end local v0    # "apiResult":Lcom/alibaba/alimei/framework/api/ApiResult;
    .end local v10    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v3

    .line 264
    .local v3, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$eventId:J

    iget-wide v6, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$startMillis:J

    iget-wide v8, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$4;->val$endMillis:J

    invoke-interface/range {v3 .. v9}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->loadEventDetail(JJJ)Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    move-result-object v10

    .restart local v10    # "detailModel":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    goto :goto_0
.end method
