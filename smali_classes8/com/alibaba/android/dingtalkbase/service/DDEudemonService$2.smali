.class final Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$2;
.super Ljava/lang/Object;
.source "DDEudemonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$2;->a:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 177
    const-string/jumbo v4, "LIFECYCLE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 179
    .local v1, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$2;->a:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    const-class v5, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v2, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "resume_service_command"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$2;->a:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 186
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "dingtalkbase"

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "start DDBabysitterService failed, error="

    aput-object v6, v5, v7

    .line 188
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-static {v4, v10, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$2;->a:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    const-class v5, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v3, "stopIntent":Landroid/content/Intent;
    const-string/jumbo v4, "resume_service_command"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$2;->a:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 195
    const-string/jumbo v4, "dingtalkbase"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "DDEudemonService to stop but is foreground!"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "dingtalkbase"

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "start DDBabysitterService failed, error="

    aput-object v6, v5, v7

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static {v4, v10, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
