.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$23;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->scheduleAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$23;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/ApiResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/alibaba/alimei/framework/api/ApiResult;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 794
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v2

    invoke-virtual {v2}, Lagj;->b()Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    move-result-object v0

    .line 795
    .local v0, "calendarAlarmManager":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;
    if-eqz v0, :cond_0

    .line 796
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c(Z)V

    .line 798
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v1

    .line 799
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    invoke-interface {v1}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->scheduleAlarm()V

    .line 800
    const/4 v2, 0x0

    return-object v2
.end method
