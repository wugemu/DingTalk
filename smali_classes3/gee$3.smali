.class final Lgee$3;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgee;


# direct methods
.method constructor <init>(Lgee;)V
    .locals 0
    .param p1, "this$0"    # Lgee;

    .prologue
    .line 422
    iput-object p1, p0, Lgee$3;->a:Lgee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 2
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 425
    if-nez p1, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p1, Lyc;->a:Ljava/lang/String;

    const-string/jumbo v1, "cspace_dentry_download"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    if-eqz p1, :cond_0

    iget v0, p1, Lyc;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lyc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 1438
    const-string/jumbo v0, "handleDentryDownloadEvent"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgee$3$1;

    invoke-direct {v1, p0, p1}, Lgee$3$1;-><init>(Lgee$3;Lyc;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
