.class final Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;
.super Ljava/lang/Object;
.source "DoorGuardImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->onLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;->a:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 427
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "requestUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 429
    const-string/jumbo v3, "DoorGuardImpl"

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "requestUrl = "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    const-string/jumbo v5, " onLogin"

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;->a:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->access$000(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;Landroid/net/Uri;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    move-result-object v1

    .line 432
    .local v1, "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    if-eqz v1, :cond_0

    .line 433
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/page/devicebindui"

    new-instance v5, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4$1;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4$1;-><init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;)V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1    # "params":Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->setRequestUrl(Ljava/lang/String;)V

    .line 449
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->startAlphaServer()Z

    .line 450
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DoorGuardImpl"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "requestUrl = "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    const-string/jumbo v5, ", exp = "

    aput-object v5, v4, v8

    aput-object v0, v4, v9

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
