.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$24;
.super Lcom/alibaba/alimei/framework/api/ApiResultRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->cancelAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/ApiResultRunnable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$24;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

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
    .line 815
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v2

    invoke-virtual {v2}, Lagj;->b()Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;

    move-result-object v0

    .line 816
    .local v0, "calendarAlarmManager":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;
    if-eqz v0, :cond_0

    .line 817
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c(Z)V

    .line 819
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v1

    .line 820
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    invoke-interface {v1}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->cancelAlarm()V

    .line 821
    const/4 v2, 0x0

    return-object v2
.end method
