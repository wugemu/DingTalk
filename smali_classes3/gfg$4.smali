.class final Lgfg$4;
.super Ljava/lang/Object;
.source "OnlineEditHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfg;->a(Landroid/app/Activity;Lgqz;Lcma;)V
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
        "Lgob;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lgqz;

.field final synthetic c:Lcma;

.field final synthetic d:Lgfg;


# direct methods
.method constructor <init>(Lgfg;Landroid/app/Activity;Lgqz;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgfg;

    .prologue
    .line 350
    iput-object p1, p0, Lgfg$4;->d:Lgfg;

    iput-object p2, p0, Lgfg$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lgfg$4;->b:Lgqz;

    iput-object p4, p0, Lgfg$4;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 350
    check-cast p1, Lgob;

    .line 1353
    if-nez p1, :cond_0

    .line 1354
    const-string/jumbo v0, "500"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_local_edit_get_lock_failed:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgfg$4;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    :goto_0
    return-void

    .line 1358
    :cond_0
    iget-boolean v0, p1, Lgob;->a:Z

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lgfg$4;->d:Lgfg;

    iget-object v1, p0, Lgfg$4;->a:Landroid/app/Activity;

    iget-object v2, p0, Lgfg$4;->b:Lgqz;

    iget-object v2, v2, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, p0, Lgfg$4;->c:Lcma;

    invoke-static {v0, v1, v2, p1, v3}, Lgfg;->a(Lgfg;Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcma;)V

    goto :goto_0

    .line 1363
    :cond_1
    iget-boolean v0, p1, Lgob;->e:Z

    if-eqz v0, :cond_2

    .line 1364
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->dt_cspace_local_edit_error_editing_by_others:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1368
    :cond_2
    const-string/jumbo v0, "13020006"

    iget-object v1, p1, Lgob;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1369
    iget-object v0, p0, Lgfg$4;->a:Landroid/app/Activity;

    iget-object v1, p0, Lgfg$4;->b:Lgqz;

    iget-wide v2, v1, Lgqz;->d:J

    invoke-static {v0, v2, v3}, Lfzu;->a(Landroid/app/Activity;J)V

    goto :goto_0

    .line 1371
    :cond_3
    iget-object v0, p1, Lgob;->b:Ljava/lang/String;

    iget-object v1, p1, Lgob;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lgfg$4;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 382
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lgfg$4;->c:Lcma;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lgfg$4;->c:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "spaceId:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgfg$4;->b:Lgqz;

    iget-object v3, v3, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "fileId:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgfg$4;->b:Lgqz;

    iget-object v3, v3, Lgqz;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "  errorCode: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p1, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, " errorMsg: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "errorDetail":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "OnlineEditHelper"

    const-string/jumbo v3, "OnlineEditHelper getLocalEitLock"

    const/4 v4, 0x0

    .line 392
    invoke-static {v3, p1, v0, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 378
    return-void
.end method
