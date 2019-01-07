.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 280
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lrz;

    move-result-object v1

    invoke-virtual {v1}, Lrz;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lrz;

    move-result-object v1

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lrz;->a:J

    .line 2361
    const-string/jumbo v1, "mail_markallread"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;)V

    .line 305
    .local v0, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->changeAllReadStatus(ZLxv;)V

    goto :goto_0
.end method
