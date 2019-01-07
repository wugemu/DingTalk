.class final Lhfk$1;
.super Ljava/lang/Object;
.source "AppInfoInstallServiceImpl.java"

# interfaces
.implements Lhfl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhfk;->a(Ljava/lang/String;Lhfi$a;)V
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
        "Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhfi$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhfk;


# direct methods
.method constructor <init>(Lhfk;Lhfi$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhfk;

    .prologue
    .line 92
    iput-object p1, p0, Lhfk$1;->c:Lhfk;

    iput-object p2, p0, Lhfk$1;->a:Lhfi$a;

    iput-object p3, p0, Lhfk$1;->b:Ljava/lang/String;

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
    .line 208
    const-string/jumbo v1, "AppInfoInstallServiceImpl"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "queryRpc"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "onException"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const/4 v0, 0x3

    aput-object p2, v2, v0

    const/4 v3, 0x4

    if-eqz p3, :cond_1

    .line 210
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    .line 208
    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lhfk$1;->a:Lhfi$a;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lhfk$1;->a:Lhfi$a;

    invoke-interface {v0, p1, p2, p3}, Lhfi$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    :cond_0
    return-void

    .line 210
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    check-cast p1, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;

    .line 1095
    const-string/jumbo v0, "AppInfoInstallServiceImpl"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "update"

    aput-object v4, v3, v2

    const-string/jumbo v4, "queryRpc"

    aput-object v4, v3, v1

    const-string/jumbo v4, "onSuccess"

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    if-nez p1, :cond_1

    .line 1098
    iget-object v0, p0, Lhfk$1;->a:Lhfi$a;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lhfk$1;->a:Lhfi$a;

    const-string/jumbo v1, "0000003"

    const-string/jumbo v2, "appRes is null"

    invoke-interface {v0, v1, v2, v6}, Lhfi$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/app/install/impl/AppInfoQueryRes;->data:Ljava/util/List;

    .line 1105
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1106
    :cond_2
    iget-object v0, p0, Lhfk$1;->a:Lhfi$a;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lhfk$1;->a:Lhfi$a;

    const-string/jumbo v1, "0000003"

    const-string/jumbo v2, "appRes.list is null"

    invoke-interface {v0, v1, v2, v6}, Lhfi$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1113
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    .line 1114
    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    iget-object v5, p0, Lhfk$1;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1116
    const-string/jumbo v3, "AppInfoInstallServiceImpl"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "update"

    aput-object v5, v4, v2

    const-string/jumbo v2, "queryRpc"

    aput-object v2, v4, v1

    const-string/jumbo v2, "onSuccess"

    aput-object v2, v4, v7

    iget-object v2, p0, Lhfk$1;->b:Ljava/lang/String;

    aput-object v2, v4, v8

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    iget-object v2, p0, Lhfk$1;->c:Lhfk;

    new-instance v3, Lhfk$1$1;

    invoke-direct {v3, p0, v0}, Lhfk$1$1;-><init>(Lhfk$1;Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V

    invoke-static {v2, v3}, Lhfk;->a(Lhfk;Ljava/lang/Runnable;)V

    move v0, v1

    .line 1199
    :goto_1
    if-nez v0, :cond_0

    .line 1200
    iget-object v0, p0, Lhfk$1;->a:Lhfi$a;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lhfk$1;->a:Lhfi$a;

    const-string/jumbo v1, "0000003"

    const-string/jumbo v2, "appid not found"

    invoke-interface {v0, v1, v2, v6}, Lhfi$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
