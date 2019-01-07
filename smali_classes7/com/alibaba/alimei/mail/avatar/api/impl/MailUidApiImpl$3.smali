.class Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$3;
.super Lcom/alibaba/alimei/framework/api/InnerRunnable;
.source "MailUidApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->clearUidCache(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/InnerRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl$3;->this$0:Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;

    invoke-direct {p0}, Lcom/alibaba/alimei/framework/api/InnerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;)V
    .locals 2
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    invoke-static {}, Lcom/alibaba/alimei/mail/avatar/api/impl/MailUidApiImpl;->access$000()Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;

    move-result-object v0

    .line 62
    .local v0, "mailUidDatasource":Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;
    invoke-interface {v0}, Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;->clearUidCache()V

    .line 63
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 64
    return-void
.end method
