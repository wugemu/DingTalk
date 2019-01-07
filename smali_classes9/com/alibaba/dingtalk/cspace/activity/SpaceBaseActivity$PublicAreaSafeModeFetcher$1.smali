.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
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
        "Lgnw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;Ljava/lang/String;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->b:Lcma;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2117
    check-cast p1, Lgnw;

    .line 3120
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgpr;->d(Landroid/content/Context;)V

    .line 3122
    if-nez p1, :cond_0

    .line 3123
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    :goto_0
    return-void

    .line 3127
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->a:Ljava/lang/String;

    iget-boolean v2, p1, Lgnw;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3128
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->b:Lcma;

    iget-boolean v1, p1, Lgnw;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2137
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lgpr;->d(Landroid/content/Context;)V

    .line 2139
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "PublicAreaFolderSafeModeFetcher"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", folderId: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2143
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceBaseActivity"

    const/4 v3, 0x0

    .line 2144
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2143
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher$1;->b:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2133
    return-void
.end method
