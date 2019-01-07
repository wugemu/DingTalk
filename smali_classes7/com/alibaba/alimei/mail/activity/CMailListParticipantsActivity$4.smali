.class final Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$4;
.super Ljava/lang/Object;
.source "CMailListParticipantsActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

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
    .line 368
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    const-string/jumbo v0, "CMailListParticipantsActivity"

    const-string/jumbo v1, "getAliasMails exception"

    const-string/jumbo v2, "getAliasMails exception"

    invoke-static {v0, v1, v2, p1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 354
    check-cast p1, Ljava/util/List;

    .line 1357
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1360
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lada;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2141
    iput-object v1, v0, Lada;->l:Ljava/util/Set;

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V

    .line 354
    :cond_1
    return-void
.end method
