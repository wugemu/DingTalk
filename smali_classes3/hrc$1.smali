.class final Lhrc$1;
.super Ljava/lang/Object;
.source "EAppExceptionTipsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhrc;->a(Landroid/content/Context;Ljava/lang/String;Liyv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Liyv;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Liyv;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lhrc$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lhrc$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lhrc$1;->c:Liyv;

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
    const/4 v11, 0x0

    .line 71
    :try_start_0
    iget-object v5, p0, Lhrc$1;->a:Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lhrc$1;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lhrc$1;->b:Ljava/lang/String;

    const-string/jumbo v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 72
    :cond_0
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    if-eqz v5, :cond_1

    .line 73
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Liyv;->onSuccess(Ljava/lang/Object;)V

    .line 1259
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    iget-object v5, p0, Lhrc$1;->b:Ljava/lang/String;

    invoke-static {v5}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "domain":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Liyv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v3    # "domain":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 111
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v5, "RuntimeStart"

    iget-object v6, p0, Lhrc$1;->b:Ljava/lang/String;

    const-string/jumbo v7, "EAppExceptionTipsManager getPageErrorTipsView exception: "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 114
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 111
    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_3
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    if-eqz v5, :cond_1

    .line 118
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    invoke-interface {v5, v11}, Liyv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    .restart local v3    # "domain":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v5, "RUNTIME_APP_ERROR_INFO_KEY"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "appMalfunctionConfigs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 88
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    if-eqz v5, :cond_1

    .line 89
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Liyv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_5
    new-instance v5, Lhrc$1$1;

    invoke-direct {v5, p0}, Lhrc$1$1;-><init>(Lhrc$1;)V

    .line 94
    invoke-virtual {v5}, Lhrc$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 93
    invoke-static {v1, v5}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhil;

    .line 95
    .local v0, "appMalfunctionConfigModel":Lhil;
    if-eqz v0, :cond_6

    iget-object v5, v0, Lhil;->b:Ljava/util/List;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lhil;->b:Ljava/util/List;

    .line 97
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 98
    :cond_6
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    if-eqz v5, :cond_1

    .line 99
    iget-object v5, p0, Lhrc$1;->c:Liyv;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Liyv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_7
    iget-object v5, v0, Lhil;->b:Ljava/util/List;

    iget-object v6, p0, Lhrc$1;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lhrc;->a(Ljava/util/List;Ljava/lang/String;)Lhim;

    move-result-object v2

    .line 105
    .local v2, "appStableConfigModel":Lhim;
    if-eqz v2, :cond_3

    .line 106
    iget-object v5, p0, Lhrc$1;->a:Landroid/content/Context;

    iget-object v6, p0, Lhrc$1;->c:Liyv;

    .line 1255
    if-eqz v2, :cond_8

    iget-object v7, v2, Lhim;->h:Ljava/lang/Integer;

    if-nez v7, :cond_9

    .line 1256
    :cond_8
    if-eqz v6, :cond_1

    .line 1257
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Liyv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1261
    :cond_9
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Lhrc$4;

    invoke-direct {v8, v2, v5, v6}, Lhrc$4;-><init>(Lhim;Landroid/content/Context;Liyv;)V

    invoke-virtual {v7, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
