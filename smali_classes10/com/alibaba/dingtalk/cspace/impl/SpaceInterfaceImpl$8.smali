.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgoe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/os/Bundle;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->h:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-boolean p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->a:Z

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->b:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->c:I

    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->f:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2081
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "saveOnlineDoc: spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", msgId: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2085
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceInterfaceImpl"

    const/4 v3, 0x0

    .line 2086
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2085
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2030
    check-cast p1, Lgoe;

    .line 3033
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->a:Z

    if-eqz v0, :cond_0

    .line 3037
    if-nez p1, :cond_1

    .line 3038
    const-string/jumbo v0, "(result is null)"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->dt_space_online_edit_save_failed_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 3062
    :cond_0
    :goto_0
    return-void

    .line 3043
    :cond_1
    iget-boolean v0, p1, Lgoe;->a:Z

    if-nez v0, :cond_2

    .line 3044
    iget-wide v0, p1, Lgoe;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgoe;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->dt_space_online_edit_save_failed_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3049
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3055
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 3056
    :cond_3
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 3057
    if-eqz v0, :cond_4

    .line 3058
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3059
    if-eqz v0, :cond_4

    .line 3060
    invoke-static {}, Lgfg;->a()Lgfg;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->f:Landroid/os/Bundle;

    const-string/jumbo v5, "intent_key_file_name"

    .line 3061
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3060
    invoke-static {v0, v1, v2, v3, v4}, Lgfg;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3066
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->cspace_save_success:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 2076
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2072
    return-void
.end method
