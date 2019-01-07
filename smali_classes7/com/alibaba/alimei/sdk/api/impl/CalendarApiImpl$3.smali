.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->queryAllLocalEvents(IIZZLjava/util/List;Ljava/util/List;Lxv;)V
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

.field final synthetic val$includeSelf:Z

.field final synthetic val$includeSystem:Z

.field final synthetic val$nums:I

.field final synthetic val$serverIds:Ljava/util/List;

.field final synthetic val$sharedList:Ljava/util/List;

.field final synthetic val$startJulianDay:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;IIZLjava/util/List;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$startJulianDay:I

    iput p4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$nums:I

    iput-boolean p5, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$includeSelf:Z

    iput-object p6, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$sharedList:Ljava/util/List;

    iput-object p7, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$serverIds:Ljava/util/List;

    iput-boolean p8, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$includeSystem:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 11
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 227
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 229
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->access$200(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$startJulianDay:I

    iget v3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$nums:I

    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$includeSelf:Z

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$sharedList:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$serverIds:Ljava/util/List;

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->queryAllLocalEvents(Ljava/lang/String;IIZLjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 230
    .local v7, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    if-eqz v7, :cond_0

    .line 231
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 233
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$includeSystem:Z

    if-eqz v1, :cond_1

    .line 234
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSysCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;

    move-result-object v10

    .line 235
    .local v10, "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    iget v1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$startJulianDay:I

    iget v2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$3;->val$nums:I

    invoke-interface {v10, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;->querySystemEvents(II)Ljava/util/List;

    move-result-object v9

    .line 236
    .local v9, "sysData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    if-eqz v9, :cond_1

    .line 237
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 240
    .end local v9    # "sysData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/EventInstanceModel;>;"
    .end local v10    # "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    :cond_1
    iput-object v8, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 241
    return-void
.end method
