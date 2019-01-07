.class final Lhfk$1$1$1;
.super Ljava/lang/Object;
.source "AppInfoInstallServiceImpl.java"

# interfaces
.implements Lhfl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfk$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhfl",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhfk$1$1;


# direct methods
.method constructor <init>(Lhfk$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lhfk$1$1;

    .prologue
    .line 154
    iput-object p1, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 178
    const-string/jumbo v0, "AppInfoInstallServiceImpl"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "update"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "queryRpc"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "download"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "onSonExceptionuccess"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    iget-object v0, v0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v0, v0, Lhfk$1;->a:Lhfi$a;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    iget-object v0, v0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v0, v0, Lhfk$1;->a:Lhfi$a;

    invoke-interface {v0, p1, p2, p3}, Lhfi$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 154
    check-cast p1, Ljava/lang/String;

    .line 1158
    iget-object v0, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    iget-object v0, v0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v0, v0, Lhfk$1;->c:Lhfk;

    iget-object v1, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    iget-object v1, v1, Lhfk$1$1;->a:Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-static {v0, v1}, Lhfk;->a(Lhfk;Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)Z

    move-result v0

    .line 1160
    const-string/jumbo v1, "AppInfoInstallServiceImpl"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "update"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "queryRpc"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "onSuccess"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "path="

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p1, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "isDBSuccess="

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 1162
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1160
    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    if-nez v0, :cond_1

    .line 1165
    iget-object v0, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    iget-object v0, v0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v0, v0, Lhfk$1;->a:Lhfi$a;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    iget-object v0, v0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v0, v0, Lhfk$1;->a:Lhfi$a;

    const-string/jumbo v1, "0000001"

    const-string/jumbo v2, "failed to save to db"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lhfi$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget-object v0, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    iget-object v0, v0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v0, v0, Lhfk$1;->a:Lhfi$a;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    iget-object v0, v0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v0, v0, Lhfk$1;->a:Lhfi$a;

    iget-object v1, p0, Lhfk$1$1$1;->a:Lhfk$1$1;

    iget-object v1, v1, Lhfk$1$1;->a:Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-interface {v0, v1}, Lhfi$a;->a(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V

    goto :goto_0
.end method
