.class final Lacv$1;
.super Ljava/lang/Object;
.source "CMailListAdapter.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacv;->b(Ljava/lang/String;)V
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacv;


# direct methods
.method constructor <init>(Lacv;)V
    .locals 0
    .param p1, "this$0"    # Lacv;

    .prologue
    .line 258
    iput-object p1, p0, Lacv$1;->a:Lacv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 272
    const-string/jumbo v0, "CMailListAdapter getAliasMails fail"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 273
    iget-object v0, p0, Lacv$1;->a:Lacv;

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacv$1;->a:Lacv;

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lacv$1;->a:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 258
    check-cast p1, Ljava/util/List;

    .line 1261
    iget-object v0, p0, Lacv$1;->a:Lacv;

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacv$1;->a:Lacv;

    invoke-static {v0}, Lacv;->a(Lacv;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    if-eqz p1, :cond_2

    .line 1265
    iget-object v0, p0, Lacv$1;->a:Lacv;

    invoke-static {v0}, Lacv;->b(Lacv;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1267
    :cond_2
    iget-object v0, p0, Lacv$1;->a:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    goto :goto_0
.end method
