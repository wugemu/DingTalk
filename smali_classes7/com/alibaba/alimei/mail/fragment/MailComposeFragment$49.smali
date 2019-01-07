.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Landroid/content/Intent;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;)V
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
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/content/Intent;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1288
    const-string/jumbo v0, "loadMailDetailForReplyOrForward.queryMailDetail"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1289
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1263
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2266
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2270
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2271
    const-string/jumbo v0, "MailComposeFragment"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "loadMailDetailForReplyOrForward mail referItemId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    .line 2278
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    .line 2279
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->h(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Z

    .line 2280
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/content/Intent;)V

    .line 2281
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    .line 2283
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    .line 1263
    :cond_0
    return-void

    .line 2273
    :cond_1
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v1, "loadMailDetailForReplyOrForward mail object is null!!!"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
