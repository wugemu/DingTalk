.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$24;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyc;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lyc;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$24;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$24;->a:Lyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$24;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    :goto_0
    return-void

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$24;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->q(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$24;->a:Lyc;

    iget v1, v1, Lyc;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
