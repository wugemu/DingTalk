.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lacl$a;


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
    .line 369
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$34;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r()V

    goto :goto_0
.end method
