.class final Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;
.super Ljava/lang/Object;
.source "CMailSessionFragment.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

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
    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Lacv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string/jumbo v0, "ptcpUnreadCountChanged"

    iget-object v1, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget v0, p1, Lyc;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
