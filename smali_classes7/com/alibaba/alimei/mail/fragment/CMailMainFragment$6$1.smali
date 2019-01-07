.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6$1;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->onEvent(Lyc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacv;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;Lacv;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6$1;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6$1;->a:Lacv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6$1;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$6$1;->a:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    goto :goto_0
.end method
