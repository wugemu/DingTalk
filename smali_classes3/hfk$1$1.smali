.class final Lhfk$1$1;
.super Ljava/lang/Object;
.source "AppInfoInstallServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhfk$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

.field final synthetic b:Lhfk$1;


# direct methods
.method constructor <init>(Lhfk$1;Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V
    .locals 0
    .param p1, "this$1"    # Lhfk$1;

    .prologue
    .line 118
    iput-object p1, p0, Lhfk$1$1;->b:Lhfk$1;

    iput-object p2, p0, Lhfk$1$1;->a:Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "localVersion":Ljava/lang/String;
    iget-object v5, p0, Lhfk$1$1;->a:Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    iget-object v4, v5, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    .line 124
    .local v4, "remoteVersion":Ljava/lang/String;
    iget-object v5, p0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v5, v5, Lhfk$1;->c:Lhfk;

    invoke-static {v5}, Lhfk;->a(Lhfk;)Lhfd;

    move-result-object v5

    iget-object v6, p0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v6, v6, Lhfk$1;->b:Ljava/lang/String;

    invoke-interface {v5, v6}, Lhfd;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    move-result-object v0

    .line 125
    .local v0, "localAppInfo":Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->version:Ljava/lang/String;

    .line 129
    :cond_0
    invoke-static {v4, v1}, Lhon;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 131
    .local v2, "needUpdate":Z
    if-nez v2, :cond_1

    .line 133
    iget-object v5, p0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v5, v5, Lhfk$1;->c:Lhfk;

    iget-object v6, p0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v6, v6, Lhfk$1;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lhfk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "path":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 135
    const-string/jumbo v5, "AppInfoInstallServiceImpl"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "update"

    aput-object v7, v6, v8

    const-string/jumbo v7, "check local file not exist"

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const/4 v2, 0x1

    .line 141
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "AppInfoInstallServiceImpl"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "update"

    aput-object v7, v6, v8

    const-string/jumbo v7, "needUpdate="

    aput-object v7, v6, v9

    .line 142
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    const-string/jumbo v7, "local="

    aput-object v7, v6, v11

    const/4 v7, 0x4

    aput-object v1, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "remote="

    aput-object v8, v6, v7

    const/4 v7, 0x6

    aput-object v4, v6, v7

    .line 141
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const-string/jumbo v5, "hybrid_config_enable_weex_mini_app_pass_overwrite"

    invoke-static {v5, v9}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 148
    const/4 v2, 0x1

    .line 151
    :cond_2
    if-eqz v2, :cond_4

    .line 154
    iget-object v5, p0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v5, v5, Lhfk$1;->c:Lhfk;

    iget-object v6, p0, Lhfk$1$1;->a:Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    new-instance v7, Lhfk$1$1$1;

    invoke-direct {v7, p0}, Lhfk$1$1$1;-><init>(Lhfk$1$1;)V

    invoke-static {v5, v6, v7}, Lhfk;->a(Lhfk;Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;Lhfl;)V

    .line 193
    :cond_3
    :goto_0
    return-void

    .line 187
    :cond_4
    iget-object v5, p0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v5, v5, Lhfk$1;->c:Lhfk;

    iget-object v6, p0, Lhfk$1$1;->a:Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-static {v5, v6}, Lhfk;->a(Lhfk;Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)Z

    .line 189
    iget-object v5, p0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v5, v5, Lhfk$1;->a:Lhfi$a;

    if-eqz v5, :cond_3

    .line 190
    iget-object v5, p0, Lhfk$1$1;->b:Lhfk$1;

    iget-object v5, v5, Lhfk$1;->a:Lhfi$a;

    invoke-interface {v5, v0}, Lhfi$a;->a(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)V

    goto :goto_0
.end method
