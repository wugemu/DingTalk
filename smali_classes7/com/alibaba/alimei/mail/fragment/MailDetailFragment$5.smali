.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

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
    .line 1352
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    :goto_0
    return-void

    .line 1356
    :cond_0
    const-string/jumbo v0, "MailDetailFragment"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1358
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    goto :goto_0

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;ZZ)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1332
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2335
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2338
    if-eqz p1, :cond_1

    .line 2339
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2341
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0, v1, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;ZZ)V

    .line 2343
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 2346
    :cond_1
    const-string/jumbo v0, "MailDetailFragment"

    const-string/jumbo v1, "load mail error after calendar loaded"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
