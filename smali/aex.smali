.class public final Laex;
.super Ljava/lang/Object;
.source "MailBizHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcma;)V
    .locals 8
    .param p0, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Labw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "listener":Lcma;, "Lcma<Labw;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    const-string/jumbo v4, "getMailAddressByCid"

    const-string/jumbo v5, "-1"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "param is empty, cid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "Invalid Parameters"

    invoke-interface {p1, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v1, Labi;

    invoke-direct {v1}, Labi;-><init>()V

    .line 169
    .local v1, "reqModel":Labi;
    const-string/jumbo v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    new-instance v2, Labj;

    invoke-direct {v2}, Labj;-><init>()V

    .line 171
    .local v2, "reqSingleModel":Labj;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Labj;->a:Ljava/lang/Long;

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Labj;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iput-object v3, v1, Labi;->a:Ljava/util/List;

    .line 181
    .end local v2    # "reqSingleModel":Labj;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Labj;>;"
    :goto_1
    invoke-static {}, Lro;->a()Lro;

    move-result-object v4

    new-instance v5, Laex$3;

    invoke-direct {v5, p1}, Laex$3;-><init>(Lcma;)V

    invoke-virtual {v4, v1, v5}, Lro;->a(Labi;Lcma;)V

    goto :goto_0

    .line 176
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iput-object v0, v1, Labi;->b:Ljava/util/List;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;ZLcma;)V
    .locals 7
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "mailDetailModel"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .param p2, "toEmailAddress"    # Ljava/lang/String;
    .param p3, "toChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v6, 0x1

    .line 65
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    :cond_0
    const-string/jumbo v4, "forwardMailByAddress"

    const-string/jumbo v5, "-1"

    const-string/jumbo v6, " mail detail or toMail empty"

    invoke-static {v4, v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz p4, :cond_1

    .line 68
    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "Invalid Parameters"

    invoke-interface {p4, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    new-instance v2, Lagz;

    invoke-direct {v2}, Lagz;-><init>()V

    .line 73
    .local v2, "newMailModel":Lagz;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v3, "toAddressList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 75
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iput-object p2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 76
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iput-object v3, v2, Lagz;->d:Ljava/util/List;

    .line 80
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lafh;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lagz;->g:Ljava/lang/String;

    .line 83
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    iput-object v4, v2, Lagz;->p:Ljava/util/List;

    .line 84
    iput-boolean v6, v2, Lagz;->n:Z

    .line 87
    if-eqz p3, :cond_3

    invoke-static {p0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Laew;->a()Laew;

    invoke-static {v1}, Laew;->a(Ljava/util/List;)Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    move-result-object v4

    iput-object v4, v2, Lagz;->x:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    .line 95
    .end local v1    # "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_3
    iput-boolean v6, v2, Lagz;->m:Z

    .line 96
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    iput-object v4, v2, Lagz;->r:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v4

    iput-wide v4, v2, Lagz;->k:J

    .line 99
    invoke-static {p0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v4

    new-instance v5, Laex$1;

    invoke-direct {v5, p4}, Laex$1;-><init>(Lcma;)V

    invoke-interface {v4, v2, v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->sendMail(Lagz;Lxv;)V

    goto :goto_0
.end method
