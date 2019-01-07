.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$7;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->D()V
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
    .line 1264
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

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
    const/4 v1, 0x0

    .line 1267
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1270
    :cond_0
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lacs;->a(Z)V

    .line 1271
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Z)Z

    .line 1272
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->s(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    .line 1273
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V

    goto :goto_0
.end method
