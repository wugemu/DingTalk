.class public final Lach;
.super Ljava/lang/Object;
.source "MailNavigatorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;IILjava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .param p1, "operationType"    # I
    .param p2, "maxUsers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, "addressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    const/4 v5, 0x3

    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v3, 0x0

    .line 56
    :goto_0
    return-object v3

    .line 26
    :cond_0
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 27
    .local v1, "ddUserTip":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "index":I
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v3, :cond_1

    .line 31
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 35
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 36
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 37
    .local v0, "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    .end local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 45
    .restart local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-ge v2, v5, :cond_4

    .line 46
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 49
    if-ge v2, v5, :cond_4

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 50
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 56
    .end local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
