.class Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/InnerRunnable;
.source "MailUidApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->queryUidByEmail(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/InnerRunnable",
        "<",
        "Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$1;->this$0:Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$1;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/InnerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 3
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    invoke-static {}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->access$000()Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;

    move-result-object v0

    .line 34
    .local v0, "mailUidDatasource":Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$1;->val$email:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;->queryUidByEmail(Ljava/lang/String;)Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;

    move-result-object v1

    .line 35
    .local v1, "mailUidModel":Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 36
    return-void
.end method
