.class final Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$3;
.super Ljava/lang/Object;
.source "CMailBaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 291
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a:Ljava/lang/String;

    invoke-static {v1}, Lpn;->a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    move-result-object v0

    .line 292
    .local v0, "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->f()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->clearHistory(ILxv;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    const-string/jumbo v1, "CMailBaseSearchFragment"

    const-string/jumbo v2, "clear search history fail for searchApi is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
