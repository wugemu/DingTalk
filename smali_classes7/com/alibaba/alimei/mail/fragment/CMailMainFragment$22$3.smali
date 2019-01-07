.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22$3;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->onDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;

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
    .line 612
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$22;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Z)V

    .line 613
    return-void
.end method
