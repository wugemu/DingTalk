.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;
.super Ljava/lang/Object;
.source "MarkMailTagActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
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
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 301
    const-string/jumbo v0, "MarkMailTagActivity"

    const/4 v1, 0x0

    const-string/jumbo v2, "queryMailDetail fail"

    invoke-static {v0, v1, v2, p1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 270
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 1273
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    const-string/jumbo v0, "MarkMailTagActivity"

    const-string/jumbo v1, "activity has been destroy, so return"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    if-nez p1, :cond_2

    .line 1279
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1280
    const-string/jumbo v1, "can not find mailDetail model with serverId: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1281
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->b(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1282
    const-string/jumbo v1, ", accountName: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1283
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->c(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1284
    const-string/jumbo v1, "MarkMailTagActivity"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->finish()V

    goto :goto_0

    .line 1289
    :cond_2
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->tags:Ljava/util/List;

    .line 1290
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->d(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1291
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1292
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->d(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1294
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->e(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;->e(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->forceReload()V

    goto :goto_0
.end method
