.class final Lacg$78;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Z

.field final synthetic h:Lcma;

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLcma;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5052
    iput-object p1, p0, Lacg$78;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$78;->b:Ljava/lang/String;

    iput-object p3, p0, Lacg$78;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lacg$78;->d:Z

    iput-object p5, p0, Lacg$78;->e:Ljava/lang/String;

    iput-object p6, p0, Lacg$78;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lacg$78;->g:Z

    iput-object p8, p0, Lacg$78;->h:Lcma;

    iput-object p9, p0, Lacg$78;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 5075
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c()Ljava/lang/String;

    move-result-object v0

    .line 5076
    .local v0, "serverConfig":Ljava/lang/String;
    const-string/jumbo v1, "recheckMailInfo"

    invoke-static {v1, v0, p1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 5078
    iget-object v1, p0, Lacg$78;->h:Lcma;

    if-eqz v1, :cond_0

    .line 5079
    iget-object v1, p0, Lacg$78;->h:Lcma;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5081
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 5052
    check-cast p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 6055
    if-eqz p1, :cond_0

    .line 6059
    iget-object v0, p0, Lacg$78;->a:Ljava/lang/String;

    iget-object v1, p0, Lacg$78;->a:Ljava/lang/String;

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 6061
    iget-object v0, p0, Lacg$78;->b:Ljava/lang/String;

    iget-object v1, p0, Lacg$78;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lacg$78;->d:Z

    iget-object v3, p0, Lacg$78;->e:Ljava/lang/String;

    iget-object v4, p0, Lacg$78;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lacg$78;->g:Z

    invoke-static/range {v0 .. v5}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Lccx;

    move-result-object v1

    .line 6063
    iget-object v2, p0, Lacg$78;->h:Lcma;

    const-wide/16 v4, 0x0

    move v3, v7

    invoke-static/range {v1 .. v6}, Lacg;->a(Lccx;Lcma;ZJLjava/lang/String;)V

    .line 6066
    iget-object v4, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lacg$78;->i:Ljava/lang/String;

    move v2, v7

    move-object v3, v8

    move-object v6, v1

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lacg;->a(ZLcom/alibaba/alimei/framework/model/WebTokenModel;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    .line 6068
    iget-object v0, p0, Lacg$78;->h:Lcma;

    if-eqz v0, :cond_0

    .line 6069
    iget-object v0, p0, Lacg$78;->h:Lcma;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 5052
    :cond_0
    return-void
.end method
