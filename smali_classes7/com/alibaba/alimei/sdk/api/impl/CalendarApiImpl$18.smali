.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$18;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->obtainMailReminderTime(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

.field final synthetic val$model:Lcom/alibaba/alimei/sdk/model/EventDetailModel;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$18;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$18;->val$model:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 3
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 675
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 676
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$18;->val$model:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->obtainMailReminderTime(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    move-result-object v1

    .line 677
    .local v1, "event":Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 678
    return-void
.end method
