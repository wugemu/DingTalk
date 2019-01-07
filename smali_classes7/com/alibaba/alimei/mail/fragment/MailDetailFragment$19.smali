.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$19;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 4
    .param p2, "dataGroup"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 341
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    instance-of v2, p2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 342
    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .line 343
    .local v0, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getChangeReason()I

    move-result v2

    const/16 v3, -0x9

    if-ne v2, v3, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAllChangedMails()Ljava/util/List;

    move-result-object v1

    .line 345
    .local v1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/util/List;)V

    .line 348
    .end local v0    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v1    # "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    return-void
.end method
