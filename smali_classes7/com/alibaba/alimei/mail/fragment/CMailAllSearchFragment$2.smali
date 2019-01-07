.class final Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$2;
.super Ljava/lang/Object;
.source "CMailAllSearchFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 316
    const-string/jumbo v0, "CMailAllSearchFragment"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 317
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 283
    check-cast p1, Ljava/util/Map;

    .line 1286
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1292
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1293
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1294
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1297
    :goto_0
    if-eqz v2, :cond_2

    .line 1298
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v2

    .line 1302
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1306
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1307
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->f(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1310
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1311
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
