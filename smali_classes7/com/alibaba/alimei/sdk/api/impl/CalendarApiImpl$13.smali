.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->updateAttendeeStatus(JIZLxv;)V
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

.field final synthetic val$attendeeId:J

.field final synthetic val$isSystem:Z

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;ZJI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->val$isSystem:Z

    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->val$attendeeId:J

    iput p6, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->val$status:I

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
    .line 546
    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->val$isSystem:Z

    if-eqz v4, :cond_0

    .line 547
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSysCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;

    move-result-object v3

    .line 548
    .local v3, "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->val$attendeeId:J

    iget v6, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->val$status:I

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;->updateAttendeeStatus(JI)V

    .line 556
    .end local v3    # "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    :goto_0
    new-instance v2, Lyc;

    const-string/jumbo v4, "basic_UpdateAddCalendar"

    iget-object v5, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v2, v4, v5, v6}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 558
    .local v2, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    .line 559
    .local v1, "eventCenter":Lya;
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 562
    return-void

    .line 550
    .end local v1    # "eventCenter":Lya;
    .end local v2    # "eventMessage":Lyc;
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 551
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->val$attendeeId:J

    iget v6, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->val$status:I

    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->updateAttendeeStatus(JI)V

    .line 553
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$13;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->access$300(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;)V

    goto :goto_0
.end method
