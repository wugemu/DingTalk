.class final Lacg$77;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;ZJLjava/lang/String;Z)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Lcma;

.field final synthetic i:J

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLcma;JLjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 4967
    iput-object p1, p0, Lacg$77;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$77;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lacg$77;->c:Z

    iput-object p4, p0, Lacg$77;->d:Ljava/lang/String;

    iput-object p5, p0, Lacg$77;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lacg$77;->f:Z

    iput-boolean p7, p0, Lacg$77;->g:Z

    iput-object p8, p0, Lacg$77;->h:Lcma;

    iput-wide p9, p0, Lacg$77;->i:J

    iput-object p11, p0, Lacg$77;->j:Ljava/lang/String;

    iput-boolean p12, p0, Lacg$77;->k:Z

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
    .line 4985
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->c()Ljava/lang/String;

    move-result-object v0

    .line 4986
    .local v0, "serverConfig":Ljava/lang/String;
    const-string/jumbo v1, "checkImapSmtpConfig"

    invoke-static {v1, v0, p1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 4989
    iget-object v1, p0, Lacg$77;->h:Lcma;

    if-eqz v1, :cond_0

    .line 4990
    iget-object v1, p0, Lacg$77;->h:Lcma;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 4991
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    .line 4990
    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4992
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4967
    .line 5971
    iget-object v0, p0, Lacg$77;->a:Ljava/lang/String;

    iget-object v1, p0, Lacg$77;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lacg$77;->c:Z

    iget-object v3, p0, Lacg$77;->d:Ljava/lang/String;

    iget-object v4, p0, Lacg$77;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lacg$77;->f:Z

    invoke-static/range {v0 .. v5}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Lccx;

    move-result-object v1

    .line 5972
    iget-boolean v0, p0, Lacg$77;->g:Z

    if-eqz v0, :cond_1

    .line 5973
    iget-object v0, p0, Lacg$77;->h:Lcma;

    iget-wide v2, p0, Lacg$77;->i:J

    iget-object v4, p0, Lacg$77;->j:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lacg;->a(Lccx;Lcma;JLjava/lang/String;)V

    .line 5978
    :goto_0
    iget-object v0, p0, Lacg$77;->h:Lcma;

    if-eqz v0, :cond_0

    .line 5979
    iget-object v0, p0, Lacg$77;->h:Lcma;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 4967
    :cond_0
    return-void

    .line 5975
    :cond_1
    iget-object v2, p0, Lacg$77;->h:Lcma;

    iget-boolean v3, p0, Lacg$77;->k:Z

    iget-wide v4, p0, Lacg$77;->i:J

    iget-object v6, p0, Lacg$77;->j:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lacg;->a(Lccx;Lcma;ZJLjava/lang/String;)V

    goto :goto_0
.end method
