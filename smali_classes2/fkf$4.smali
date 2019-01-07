.class final Lfkf$4;
.super Ljava/lang/Object;
.source "OrgContactPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkf;->a(Landroid/app/Activity;Ljava/lang/String;JZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lfkf;


# direct methods
.method constructor <init>(Lfkf;ZLandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lfkf;

    .prologue
    .line 331
    iput-object p1, p0, Lfkf$4;->c:Lfkf;

    iput-boolean p2, p0, Lfkf$4;->a:Z

    iput-object p3, p0, Lfkf$4;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 331
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1334
    if-eqz p1, :cond_1

    .line 1337
    iget-boolean v0, p0, Lfkf$4;->a:Z

    if-nez v0, :cond_0

    .line 1338
    iget-object v0, p0, Lfkf$4;->c:Lfkf;

    invoke-static {v0}, Lfkf;->f(Lfkf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1341
    :cond_0
    iget-object v0, p0, Lfkf$4;->c:Lfkf;

    invoke-static {v0, p1}, Lfkf;->a(Lfkf;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    .line 331
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 350
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x34bd

    .line 351
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 352
    invoke-static {}, Lfkf;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSingleSearch faild code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lfkf$4;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 355
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lfkf$4;->c:Lfkf;

    invoke-static {v0}, Lfkf;->g(Lfkf;)Lfir;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lfkf$4;->c:Lfkf;

    invoke-static {v0}, Lfkf;->g(Lfkf;)Lfir;

    move-result-object v0

    invoke-interface {v0}, Lfir;->b()V

    .line 360
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 346
    return-void
.end method
