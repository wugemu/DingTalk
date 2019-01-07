.class Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$25;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CalendarApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;->isOrganizer(JLjava/lang/String;Lxv;)V
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

.field final synthetic val$calendarId:J

.field final synthetic val$organizer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$25;->this$0:Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$25;->val$calendarId:J

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$25;->val$organizer:Ljava/lang/String;

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
    .line 839
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 840
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$25;->val$calendarId:J

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl$25;->val$organizer:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->isOrganizer(JLjava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 842
    return-void
.end method
