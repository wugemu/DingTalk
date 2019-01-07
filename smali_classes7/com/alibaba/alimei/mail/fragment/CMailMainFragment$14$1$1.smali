.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1$1;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;

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
    .line 1840
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    :goto_0
    return-void

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;)V

    goto :goto_0
.end method
