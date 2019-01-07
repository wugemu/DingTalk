.class final Lhrc$2;
.super Ljava/lang/Object;
.source "EAppExceptionTipsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhrc;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lhrc$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 139
    :try_start_0
    const-string/jumbo v4, "RUNTIME_APP_ERROR_INFO_KEY"

    invoke-static {v4}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "appMalfunctionConfigs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    .end local v1    # "appMalfunctionConfigs":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local v1    # "appMalfunctionConfigs":Ljava/lang/String;
    :cond_1
    new-instance v4, Lhrc$2$1;

    invoke-direct {v4, p0}, Lhrc$2$1;-><init>(Lhrc$2;)V

    .line 144
    invoke-virtual {v4}, Lhrc$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 143
    invoke-static {v1, v4}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhil;

    .line 145
    .local v0, "appMalfunctionConfigModel":Lhil;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lhil;->b:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lhil;->b:Ljava/util/List;

    .line 147
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    iget-object v4, v0, Lhil;->b:Ljava/util/List;

    iget-object v5, p0, Lhrc$2;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lhrc;->a(Ljava/util/List;Ljava/lang/String;)Lhim;

    move-result-object v2

    .line 152
    .local v2, "appStableConfigModel":Lhim;
    if-eqz v2, :cond_0

    .line 153
    iget-object v5, v2, Lhim;->a:Ljava/lang/String;

    iget-object v6, p0, Lhrc$2;->a:Ljava/lang/String;

    .line 1228
    const-class v4, Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;

    .line 1229
    new-instance v7, Lhrc$3;

    invoke-direct {v7, v6}, Lhrc$3;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;->reportAppMalfunction(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v0    # "appMalfunctionConfigModel":Lhil;
    .end local v1    # "appMalfunctionConfigs":Ljava/lang/String;
    .end local v2    # "appStableConfigModel":Lhim;
    :catch_0
    move-exception v3

    .line 156
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "RuntimeStart"

    iget-object v5, p0, Lhrc$2;->a:Ljava/lang/String;

    const-string/jumbo v6, "EAppExceptionTipsManager reportAppMalfunction parse data exception: "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 159
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 156
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
