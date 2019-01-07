.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->changeCalendarStatus(Ljava/lang/String;Ljava/lang/String;IILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$calendarSerId:Ljava/lang/String;

.field final synthetic val$mailServerId:Ljava/lang/String;

.field final synthetic val$oldStatus:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$status:I

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$mailServerId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$calendarSerId:Ljava/lang/String;

    iput p6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$oldStatus:I

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 8
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1764
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 1765
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$status:I

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$mailServerId:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->changMailCalenderStatus(JLjava/lang/String;ILjava/lang/String;)V

    .line 1768
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$2200(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$mailServerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$calendarSerId:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$oldStatus:I

    iget v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$31;->val$status:I

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->updateCalendarStatusToServer(Ljava/lang/String;Ljava/lang/String;IILxv;)V

    .line 1769
    return-void
.end method
