.class public Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;
.super Landroid/app/Activity;
.source "BokuiTransferActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 59
    :try_start_0
    const-string/jumbo v2, "intent_key_transfer_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "transfer_type_notification"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "/ding/home.html"

    .line 1225
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 61
    new-instance v4, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;Landroid/content/Intent;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;->finish()V

    .line 93
    return-void

    .line 72
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "transfer_type_shortcut"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "/ding/home.html"

    .line 2225
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 73
    new-instance v4, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;Landroid/content/Intent;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 88
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 96
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->isOncreateDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;->a(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;->a(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
