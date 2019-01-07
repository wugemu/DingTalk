.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$40;
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
    .line 414
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$40;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 3
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 418
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$40;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p1, Lyc;->a:Ljava/lang/String;

    .line 424
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "basic_SendMail"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$40;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lyc;)V

    .line 426
    iget v1, p1, Lyc;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p1, Lyc;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$40;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$40;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r()V

    goto :goto_0
.end method
