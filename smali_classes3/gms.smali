.class public final Lgms;
.super Lgly;
.source "SpaceMenuFileHistoryHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 26
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "cspace_mobile_file_history"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 28
    invoke-static {p1, p2, v6}, Lgms;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 33
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const-string/jumbo v2, "https://space.dingtalk.com/history.html?bizId=%s&objectId=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 34
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 33
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v2

    .line 1215
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v3, v4, :cond_1

    .line 1218
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v3

    sget v4, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    if-eq v3, v4, :cond_1

    .line 1221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1224
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1225
    .end local v1    # "url":Ljava/lang/String;
    const-string/jumbo v3, "https://space.dingtalk.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "https://space.dingtalk.com"

    iget-object v4, v2, Lgqc;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lgqc;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1226
    const-string/jumbo v3, "https://space.dingtalk.com"

    iget-object v2, v2, Lgqc;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .restart local v1    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_file_history_title:I

    .line 37
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v2, p1, v1, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1228
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "https://preview.dingtalk.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "https://preview.dingtalk.com"

    iget-object v4, v2, Lgqc;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lgqc;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1229
    const-string/jumbo v3, "https://preview.dingtalk.com"

    iget-object v2, v2, Lgqc;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
