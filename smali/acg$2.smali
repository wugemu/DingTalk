.class final Lacg$2;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLccx;Lcma;ZZJLjava/lang/String;)V
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

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lccx;

.field final synthetic g:Z

.field final synthetic h:Lcma;

.field final synthetic i:Z

.field final synthetic j:J

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccx;ZLcma;ZJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lacg$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lacg$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lacg$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lacg$2;->e:Ljava/lang/String;

    iput-object p6, p0, Lacg$2;->f:Lccx;

    iput-boolean p7, p0, Lacg$2;->g:Z

    iput-object p8, p0, Lacg$2;->h:Lcma;

    iput-boolean p9, p0, Lacg$2;->i:Z

    iput-wide p10, p0, Lacg$2;->j:J

    iput-object p12, p0, Lacg$2;->k:Ljava/lang/String;

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
    .line 959
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c()Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "serverConfig":Ljava/lang/String;
    const-string/jumbo v1, "agentLogin, AlimeiSDKProxy.login"

    invoke-static {v1, v0, p1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 962
    iget-object v1, p0, Lacg$2;->h:Lcma;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 963
    iget-object v1, p0, Lacg$2;->h:Lcma;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 927
    .line 1930
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lacg$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lacg$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lacg$2;->c:Ljava/lang/String;

    iget-object v5, p0, Lacg$2;->d:Ljava/lang/String;

    iget-object v6, p0, Lacg$2;->e:Ljava/lang/String;

    iget-object v7, p0, Lacg$2;->f:Lccx;

    new-instance v8, Lacg$2$1;

    invoke-direct {v8, p0}, Lacg$2$1;-><init>(Lacg$2;)V

    invoke-static/range {v0 .. v8}, Lacg;->a(ZLcom/alibaba/alimei/framework/model/WebTokenModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    .line 927
    return-void
.end method
