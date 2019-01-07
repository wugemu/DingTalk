.class final Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$2;
.super Ljava/lang/Object;
.source "CMailCommunicateActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->b()V
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 310
    const-string/jumbo v0, "CMailCommunicateActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    const/4 v1, 0x0

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;Ljava/util/List;IZ)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 277
    check-cast p1, Ljava/util/Map;

    .line 1280
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1286
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1287
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1288
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1289
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1290
    if-eqz v0, :cond_0

    .line 1293
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1296
    :goto_0
    if-eqz v2, :cond_2

    .line 1297
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v2

    .line 1301
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1305
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCommunicateActivity;Ljava/util/List;IZ)V

    .line 277
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
