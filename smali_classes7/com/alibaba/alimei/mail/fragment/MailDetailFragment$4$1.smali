.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;->a:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;->a:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    .line 1289
    :goto_0
    return-void

    .line 1287
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4$1;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;ZZ)V

    goto :goto_0
.end method
