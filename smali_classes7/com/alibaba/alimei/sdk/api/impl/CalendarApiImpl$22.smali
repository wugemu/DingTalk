.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$22;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->queryToadyEvents(ZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

.field final synthetic val$filterExpired:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$22;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$22;->val$filterExpired:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 4
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 769
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 770
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$22;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->access$400(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$22;->val$filterExpired:Z

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->queryTodayEvents(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 771
    .local v1, "todayEvents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 772
    return-void
.end method
