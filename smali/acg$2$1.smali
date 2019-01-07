.class final Lacg$2$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacg$2;


# direct methods
.method constructor <init>(Lacg$2;)V
    .locals 0
    .param p1, "this$0"    # Lacg$2;

    .prologue
    .line 931
    iput-object p1, p0, Lacg$2$1;->a:Lacg$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 931
    .line 1935
    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-boolean v0, v0, Lacg$2;->g:Z

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-object v1, v0, Lacg$2;->f:Lccx;

    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-object v2, v0, Lacg$2;->h:Lcma;

    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-boolean v3, v0, Lacg$2;->i:Z

    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-wide v4, v0, Lacg$2;->j:J

    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-object v6, v0, Lacg$2;->k:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lacg;->a(Lccx;Lcma;ZJLjava/lang/String;)V

    .line 1938
    :cond_0
    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-object v0, v0, Lacg$2;->h:Lcma;

    if-eqz v0, :cond_1

    .line 1939
    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-object v0, v0, Lacg$2;->h:Lcma;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 931
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 949
    const-string/jumbo v0, "agentLogin, AlimeiSDKProxy.login, bindEmail"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-object v0, v0, Lacg$2;->h:Lcma;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lacg$2$1;->a:Lacg$2;

    iget-object v0, v0, Lacg$2;->h:Lcma;

    sget-object v1, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMAIL_BIND_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 945
    return-void
.end method
