.class public final Lcan;
.super Ljava/lang/Object;
.source "WalletItem.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcan;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lcan;

    invoke-direct {v0}, Lcan;-><init>()V

    .line 111
    .local v0, "item":Lcan;
    const/4 v1, 0x2

    iput v1, v0, Lcan;->a:I

    .line 112
    iput-object p0, v0, Lcan;->b:Ljava/lang/String;

    .line 114
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcan;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcan;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    :cond_0
    return-object v1

    .line 63
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;

    .line 64
    .local v2, "object":Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;
    if-eqz v2, :cond_2

    .line 67
    new-instance v0, Lcan;

    invoke-direct {v0}, Lcan;-><init>()V

    .line 68
    .local v0, "item":Lcan;
    iput v7, v0, Lcan;->a:I

    .line 69
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->title:Ljava/lang/String;

    iput-object v4, v0, Lcan;->b:Ljava/lang/String;

    .line 70
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->comment:Ljava/lang/String;

    iput-object v4, v0, Lcan;->c:Ljava/lang/String;

    .line 71
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->logoMediaId:Ljava/lang/String;

    iput-object v4, v0, Lcan;->e:Ljava/lang/String;

    .line 72
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->linkUrl:Ljava/lang/String;

    iput-object v4, v0, Lcan;->f:Ljava/lang/String;

    .line 73
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletEntryObject;->bizType:Ljava/lang/String;

    iput-object v4, v0, Lcan;->g:Ljava/lang/String;

    .line 75
    const-string/jumbo v4, "groupbill"

    iget-object v5, v0, Lcan;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "pref_key_group_bill_first_entry"

    invoke-static {v4, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    const-string/jumbo v4, "invoice"

    iget-object v5, v0, Lcan;->g:Ljava/lang/String;

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "pref_key_invoice_first_entry"

    invoke-static {v4, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 77
    :cond_4
    iput-boolean v6, v0, Lcan;->h:Z

    .line 81
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_5
    iput-boolean v7, v0, Lcan;->h:Z

    goto :goto_1
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcan;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    :cond_0
    return-object v1

    .line 93
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;

    .line 94
    .local v2, "object":Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;
    if-eqz v2, :cond_2

    .line 97
    new-instance v0, Lcan;

    invoke-direct {v0}, Lcan;-><init>()V

    .line 98
    .local v0, "item":Lcan;
    const/4 v4, 0x1

    iput v4, v0, Lcan;->a:I

    .line 99
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->title:Ljava/lang/String;

    iput-object v4, v0, Lcan;->b:Ljava/lang/String;

    .line 100
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->content:Ljava/lang/String;

    iput-object v4, v0, Lcan;->d:Ljava/lang/String;

    .line 101
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->logoMediaId:Ljava/lang/String;

    iput-object v4, v0, Lcan;->e:Ljava/lang/String;

    .line 102
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletAdsObject;->linkUrl:Ljava/lang/String;

    iput-object v4, v0, Lcan;->f:Ljava/lang/String;

    .line 103
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
