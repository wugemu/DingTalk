.class final Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$1;
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
        "Lagv;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 273
    const-string/jumbo v0, "CMailAllSearchFragment"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 274
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 227
    check-cast p1, Ljava/util/Map;

    .line 1230
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1236
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1237
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1238
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1241
    :goto_0
    if-eqz v2, :cond_3

    .line 1242
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagv;

    move-object v1, v2

    .line 1246
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, v0, Lagv;->d:Ljava/util/List;

    .line 1254
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    .line 1256
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1260
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1265
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->e(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1266
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1267
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1268
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method
