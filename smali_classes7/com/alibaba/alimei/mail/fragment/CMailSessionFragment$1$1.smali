.class final Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1$1;
.super Ljava/lang/Object;
.source "CMailSessionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;->onEvent(Lyc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Lacv;

    move-result-object v0

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    .line 76
    return-void
.end method
