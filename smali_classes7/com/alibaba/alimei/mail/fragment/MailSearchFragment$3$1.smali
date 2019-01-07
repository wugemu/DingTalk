.class final Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;
.super Ljava/lang/Object;
.source "MailSearchFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;
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
        "Lcom/alibaba/alimei/sdk/model/FrequentContactModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Lcom/alibaba/alimei/sdk/model/FrequentContactModel;)Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    .line 395
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 369
    check-cast p1, Ljava/util/List;

    .line 1372
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Lcom/alibaba/alimei/sdk/model/FrequentContactModel;)Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    .line 1376
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Ljava/util/List;)V

    .line 1383
    :cond_1
    :goto_0
    return-void

    .line 1380
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    .line 1381
    if-nez v0, :cond_3

    .line 1382
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Ljava/util/List;)V

    goto :goto_0

    .line 1385
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Lcom/alibaba/alimei/sdk/model/FrequentContactModel;)Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    .line 1386
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3$1;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;Lcom/alibaba/alimei/sdk/model/FrequentContactModel;)V

    goto :goto_0
.end method
