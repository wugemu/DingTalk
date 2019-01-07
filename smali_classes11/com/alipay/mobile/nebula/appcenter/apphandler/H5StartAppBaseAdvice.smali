.class public abstract Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;
.super Ljava/lang/Object;
.source "H5StartAppBaseAdvice.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5StartAppAdvice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canHandler(Ljava/lang/String;)Z
.end method

.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 61
    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 37
    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 186
    return-void
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 12
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 88
    const-string/jumbo v7, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v6

    .line 93
    :cond_1
    if-eqz p3, :cond_0

    :try_start_0
    array-length v7, p3

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    .line 94
    const-string/jumbo v4, ""

    .local v4, "sourceAppId":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 95
    .local v5, "targetAppId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 96
    .local v3, "param":Landroid/os/Bundle;
    const/4 v7, 0x0

    aget-object v7, p3, v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 97
    const/4 v7, 0x0

    aget-object v4, p3, v7

    .end local v4    # "sourceAppId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 100
    .restart local v4    # "sourceAppId":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    aget-object v7, p3, v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 101
    const/4 v7, 0x1

    aget-object v5, p3, v7

    .end local v5    # "targetAppId":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 103
    .restart local v5    # "targetAppId":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x2

    aget-object v7, p3, v7

    instance-of v7, v7, Landroid/os/Bundle;

    if-eqz v7, :cond_4

    .line 104
    const/4 v7, 0x2

    aget-object v3, p3, v7

    .end local v3    # "param":Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;

    .line 106
    .restart local v3    # "param":Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x0

    .line 107
    .local v2, "hasCheck":Z
    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->hasCheckParam(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 108
    const/4 v2, 0x1

    .line 111
    :cond_5
    if-nez v2, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 112
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;->canHandler(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 113
    const-string/jumbo v7, "Advice.startApp"

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "appId"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    const-string/jumbo v7, "H5StartAppAdvice"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sourceAppId "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " targetAppId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " param:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;-><init>()V

    .line 120
    .local v1, "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v7, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 121
    iput-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sourceAppId:Ljava/lang/String;

    .line 122
    iput-object v5, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 123
    const-string/jumbo v7, "URGENT_DISPLAY"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;

    invoke-direct {v8, p0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 139
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    goto/16 :goto_0

    .line 141
    .end local v1    # "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    :cond_6
    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    const-string/jumbo v7, "H5StartAppAdvice"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sourceAppId "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " targetAppId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " param:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;-><init>()V

    .line 147
    .restart local v1    # "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    if-nez v3, :cond_7

    .line 148
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "param":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 151
    .restart local v3    # "param":Landroid/os/Bundle;
    :cond_7
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v7, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 152
    iput-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sourceAppId:Ljava/lang/String;

    .line 153
    iput-object v5, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 154
    const-string/jumbo v7, "URGENT_DISPLAY"

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v7

    new-instance v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$2;

    invoke-direct {v8, p0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$2;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 155
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 167
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto/16 :goto_0

    .line 172
    .end local v1    # "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .end local v2    # "hasCheck":Z
    .end local v3    # "param":Landroid/os/Bundle;
    .end local v4    # "sourceAppId":Ljava/lang/String;
    .end local v5    # "targetAppId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "H5StartAppAdvice"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    return-void
.end method
