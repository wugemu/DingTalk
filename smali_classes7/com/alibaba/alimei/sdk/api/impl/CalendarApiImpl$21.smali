.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->updateCalendarVisible(Ljava/util/List;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

.field final synthetic val$calendarList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;->val$calendarList:Ljava/util/List;

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
    const/4 v9, 0x1

    .line 727
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;->val$calendarList:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;->val$calendarList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;->val$calendarList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 731
    .local v4, "localList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;->val$calendarList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 732
    .local v7, "sysList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;>;"
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$21;->val$calendarList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    .line 733
    .local v0, "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    iget-boolean v10, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->isSystem:Z

    if-eqz v10, :cond_2

    .line 734
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 736
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 740
    .end local v0    # "cal":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    :cond_3
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 741
    .local v5, "ret":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 742
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v1

    .line 743
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    invoke-interface {v1, v4}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->updateCalendarVisible(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v5

    .line 746
    .end local v1    # "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 747
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSysCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;

    move-result-object v6

    .line 748
    .local v6, "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6, v7}, Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;->updateSystemCalVisible(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v9

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 751
    .end local v6    # "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    :cond_5
    iput-object v5, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 753
    new-instance v3, Lyc;

    const-string/jumbo v8, "basic_UpdateAddCalendar"

    iget-object v10, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-direct {v3, v8, v10, v9}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 755
    .local v3, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v2

    .line 756
    .local v2, "eventCenter":Lya;
    invoke-interface {v2, v3}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 748
    .end local v2    # "eventCenter":Lya;
    .end local v3    # "eventMessage":Lyc;
    .restart local v6    # "sysDatasource":Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method
