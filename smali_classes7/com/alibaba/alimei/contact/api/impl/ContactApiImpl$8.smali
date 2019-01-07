.class final Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$8;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "ContactApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;->saveCallLog(Lcom/alibaba/alimei/contact/db/entry/CallLog;)V
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
.field final synthetic a:Lcom/alibaba/alimei/contact/db/entry/CallLog;

.field final synthetic b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/contact/db/entry/CallLog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$8;->b:Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$8;->a:Lcom/alibaba/alimei/contact/db/entry/CallLog;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 8
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 551
    invoke-static {}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource$InstanceHolder;->getContactDatasource()Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    move-result-object v0

    .line 552
    .local v0, "datasource":Lcom/alibaba/alimei/contact/datasource/ContactDatasource;
    iget-object v3, p0, Lcom/alibaba/alimei/contact/api/impl/ContactApiImpl$8;->a:Lcom/alibaba/alimei/contact/db/entry/CallLog;

    invoke-interface {v0, v3}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;->saveCallLog(Lcom/alibaba/alimei/contact/db/entry/CallLog;)J

    move-result-wide v4

    .line 553
    .local v4, "id":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 554
    new-instance v2, Lyc;

    const-string/jumbo v3, "base_SaveCallLog"

    iget-object v6, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v2, v3, v6, v7}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 556
    .local v2, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    .line 557
    .local v1, "eventCenter":Lya;
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 559
    .end local v1    # "eventCenter":Lya;
    .end local v2    # "eventMessage":Lyc;
    :cond_0
    return-void
.end method
