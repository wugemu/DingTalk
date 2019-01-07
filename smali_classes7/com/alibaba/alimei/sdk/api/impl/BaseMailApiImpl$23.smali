.class Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$23;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "BaseMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->changeMailReminder(ZLxv;[Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

.field final synthetic val$isReminder:Z

.field final synthetic val$mailServerIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$23;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$23;->val$isReminder:Z

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$23;->val$mailServerIds:[Ljava/lang/String;

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
    .line 580
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 581
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$23;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->access$400(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$23;->val$isReminder:Z

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$23;->val$mailServerIds:[Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->changeMailReminder(JLjava/lang/String;Z[Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 583
    return-void
.end method
