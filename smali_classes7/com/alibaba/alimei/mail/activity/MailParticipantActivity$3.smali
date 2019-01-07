.class final Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$3;
.super Ljava/lang/Object;
.source "MailParticipantActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
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
        "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 715
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 716
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 674
    check-cast p1, Ljava/util/Map;

    .line 1677
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1680
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    invoke-virtual {v0, p1}, Lada;->a(Ljava/util/Map;)V

    .line 1683
    const/4 v0, 0x0

    .line 1684
    if-eqz p1, :cond_3

    .line 1685
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    .line 1686
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1687
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1688
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1689
    const-string/jumbo v5, "from"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1692
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1693
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1694
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 1695
    if-eqz v0, :cond_1

    .line 1699
    iget v5, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    if-eq v5, v3, :cond_2

    const/4 v5, -0x1

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    if-ne v5, v0, :cond_1

    :cond_2
    move v2, v3

    .line 1702
    goto :goto_0

    :cond_3
    move v2, v0

    .line 1708
    :cond_4
    if-eqz v2, :cond_5

    .line 1709
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->r(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lss;->a(Landroid/view/View;Z)V

    .line 674
    :cond_5
    return-void
.end method
