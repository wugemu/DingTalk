.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$10;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->deleteEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;ILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

.field final synthetic val$deleteWhich:I

.field final synthetic val$model:Lcom/alibaba/alimei/sdk/model/EventDetailModel;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$10;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$10;->val$model:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iput p4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$10;->val$deleteWhich:I

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
    .line 435
    new-instance v2, Lyc;

    const-string/jumbo v3, "basic_UpdateAddCalendar"

    iget-object v4, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 437
    .local v2, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    .line 438
    .local v1, "eventCenter":Lya;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 439
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$10;->val$model:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$10;->val$deleteWhich:I

    invoke-interface {v0, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->deleteEvent(Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V

    .line 440
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 443
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$10;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->access$300(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)V

    .line 444
    return-void
.end method
