.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$35;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1993
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$35;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1996
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$35;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2017
    .end local p2    # "dataGroup":Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    :cond_0
    :goto_0
    return-void

    .line 2000
    .restart local p2    # "dataGroup":Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    :cond_1
    if-eqz p2, :cond_0

    .line 2004
    instance-of v1, p2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    if-eqz v1, :cond_0

    .line 2008
    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .end local p2    # "dataGroup":Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getChangeReason()I

    move-result v0

    .line 2009
    .local v0, "reason":I
    const/4 v1, 0x3

    if-eq v1, v0, :cond_2

    const/4 v1, 0x1

    if-eq v1, v0, :cond_2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2013
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$35;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2014
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$35;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->r()V

    goto :goto_0
.end method
