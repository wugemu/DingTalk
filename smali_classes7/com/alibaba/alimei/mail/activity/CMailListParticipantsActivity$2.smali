.class final Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;
.super Ljava/lang/Object;
.source "CMailListParticipantsActivity.java"

# interfaces
.implements Lcma;


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
        "Lcma",
        "<",
        "Laai;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 204
    check-cast p1, Laai;

    .line 1208
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    if-nez p1, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->a(Z)V

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    iget-object v0, p1, Laai;->a:Ljava/util/List;

    .line 1218
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->a(Z)V

    goto :goto_0

    .line 1223
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1224
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laaf;

    .line 1225
    new-instance v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 1226
    iput v1, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 1227
    iget-object v5, v0, Laaf;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 1228
    iget-object v0, v0, Laaf;->b:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 1229
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1232
    :cond_4
    const/16 v0, 0x32

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v0, v3, :cond_6

    const/4 v0, 0x1

    .line 1234
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1235
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;I)I

    .line 1238
    :cond_5
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1239
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lada;

    move-result-object v1

    .line 2205
    invoke-virtual {v1, v2}, Lada;->b(Ljava/util/List;)V

    .line 1240
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1241
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->c()V

    .line 1249
    :goto_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/CommonListView;->a(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1232
    goto :goto_2

    .line 1243
    :cond_7
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lcom/alibaba/alimei/mail/widget/CommonListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/CommonListView;->b()V

    goto :goto_3

    .line 1246
    :cond_8
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)Lada;

    move-result-object v1

    invoke-virtual {v1, v2}, Lada;->c(Ljava/util/List;)V

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 260
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 255
    return-void
.end method
