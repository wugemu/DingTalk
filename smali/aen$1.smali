.class final Laen$1;
.super Ljava/lang/Object;
.source "SearchBundle.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/account/AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laen;->a()Lcom/alibaba/alimei/framework/account/AccountListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laen;


# direct methods
.method constructor <init>(Laen;)V
    .locals 0
    .param p1, "this$0"    # Laen;

    .prologue
    .line 25
    iput-object p1, p0, Laen$1;->a:Laen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccountLogin(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 29
    return-void
.end method

.method public final onAccountLogout(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 34
    return-void
.end method

.method public final onAccountRemoved(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 4
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 38
    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lpn;->b()Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;

    move-result-object v0

    .line 43
    .local v0, "historyDatasource":Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;->clearHistory(J)V

    goto :goto_0
.end method
