.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$39;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$39;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 2
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$39;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p1, Lyc;->a:Ljava/lang/String;

    const-string/jumbo v1, "FolderPushStateChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lyc;->a:Ljava/lang/String;

    const-string/jumbo v1, "FolderLastSyncTimeChanged"

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    :cond_2
    iget v0, p1, Lyc;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$39;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$39;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r()V

    goto :goto_0
.end method
