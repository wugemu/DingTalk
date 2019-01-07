.class Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$2;
.super Lcom/alibaba/alimei/framework/api/InnerRunnable;
.source "MailUidApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->saveUidByEmail(Ljava/lang/String;JLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/InnerRunnable",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$2;->this$0:Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$2;->val$email:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$2;->val$uid:J

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/InnerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 4
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->access$000()Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;

    move-result-object v0

    .line 48
    .local v0, "mailUidDatasource":Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$2;->val$email:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$2;->val$uid:J

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;->saveUidByEmail(Ljava/lang/String;J)V

    .line 49
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 50
    return-void
.end method
