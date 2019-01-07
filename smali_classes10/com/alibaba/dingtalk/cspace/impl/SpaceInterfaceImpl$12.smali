.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/app/Activity;JLcma;)V
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
        "Lgog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Lcma;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Landroid/app/Activity;JLcma;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 2383
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->d:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->a:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->b:J

    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 2383
    check-cast p1, Lgog;

    .line 3386
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3390
    if-nez p1, :cond_1

    .line 3391
    const-string/jumbo v0, "500"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    :cond_0
    :goto_0
    return-void

    .line 3395
    :cond_1
    iget-wide v0, p1, Lgog;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 3396
    iget-wide v0, p1, Lgog;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgog;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3400
    :cond_2
    iget-object v0, p1, Lgog;->c:Ljava/lang/String;

    .line 4109
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3400
    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p1, Lgog;->d:Ljava/lang/String;

    .line 5109
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3400
    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 3401
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->b:J

    iget-object v4, p1, Lgog;->c:Ljava/lang/String;

    iget-object v5, p1, Lgog;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->c:Lcma;

    invoke-static/range {v1 .. v6}, Lfzu;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 3403
    :cond_3
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->a:Landroid/app/Activity;

    iget-object v2, p1, Lgog;->e:Ljava/lang/String;

    const-string/jumbo v3, ""

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 3404
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->c:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2415
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceInterfaceImpl"

    const-string/jumbo v2, "getTeamAlbumInfo"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2422
    :goto_0
    return-void

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2411
    return-void
.end method
