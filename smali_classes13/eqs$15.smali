.class final Leqs$15;
.super Lerz;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lerz",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leqs;


# direct methods
.method constructor <init>(Leqs;Leqq;Ljava/lang/String;Leoe;)V
    .locals 0
    .param p1, "this$0"    # Leqs;
    .param p2, "baseSearchPresenter"    # Leqq;
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "queryLog"    # Leoe;

    .prologue
    .line 827
    iput-object p1, p0, Leqs$15;->a:Leqs;

    invoke-direct {p0, p2, p3, p4}, Lerz;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 827
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;

    .line 2036
    iget-object v0, p0, Lerz;->c:Lesa;

    invoke-virtual {v0}, Lesa;->a()Leoe;

    move-result-object v3

    .line 1831
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FRIEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;->values:Ljava/util/List;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0, v2, v6}, Letb;->a(Leoe;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1834
    iget-object v0, p0, Leqs$15;->a:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2041
    iget-object v0, p0, Lerz;->c:Lesa;

    invoke-virtual {v0}, Lesa;->b()Z

    move-result v0

    .line 1838
    if-eqz v0, :cond_1

    .line 1842
    iget-object v3, p0, Leqs$15;->a:Leqs;

    .line 2046
    iget-object v0, p0, Lerz;->c:Lesa;

    invoke-virtual {v0}, Lesa;->c()Ljava/lang/String;

    move-result-object v4

    .line 3036
    iget-object v0, p0, Lerz;->c:Lesa;

    invoke-virtual {v0}, Lesa;->a()Leoe;

    move-result-object v5

    .line 1842
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;->values:Ljava/util/List;

    :goto_1
    sget-object v2, Lcom/alibaba/android/search/ContactSource;->Friend:Lcom/alibaba/android/search/ContactSource;

    invoke-static {v3, v4, v5, v0, v2}, Leqs;->b(Leqs;Ljava/lang/String;Leoe;Ljava/util/List;Lcom/alibaba/android/search/ContactSource;)V

    .line 1844
    iget-object v0, p0, Leqs$15;->a:Leqs;

    const/16 v2, 0xc

    invoke-static {v0, v2}, Leqs;->a(Leqs;I)I

    .line 1845
    iget-object v0, p0, Leqs$15;->a:Leqs;

    iput v1, v0, Leqs;->g:I

    .line 1847
    const-string/jumbo v0, "[Contact]searchRemoteFriend %d %d %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leqs$15;->a:Leqs;

    iget v3, v3, Leqs;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Leqs$15;->a:Leqs;

    iget v3, v3, Leqs;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Leqs$15;->a:Leqs;

    invoke-static {v4}, Leqs;->c(Leqs;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3050
    const-string/jumbo v3, "search"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1848
    iget-object v0, p0, Leqs$15;->a:Leqs;

    iget v0, v0, Leqs;->h:I

    const/16 v2, 0x50

    if-le v0, v2, :cond_4

    .line 1849
    iget-object v0, p0, Leqs$15;->a:Leqs;

    iput v1, v0, Leqs;->h:I

    .line 1850
    iget-object v0, p0, Leqs$15;->a:Leqs;

    invoke-virtual {v0}, Leqs;->o()V

    :cond_1
    :goto_2
    return-void

    .line 1831
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;->values:Ljava/util/List;

    .line 1832
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 1842
    goto :goto_1

    .line 1852
    :cond_4
    iget-object v0, p0, Leqs$15;->a:Leqs;

    invoke-virtual {v0}, Leqs;->a()V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 863
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 864
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "searchRemoteFriend: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FRIEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    invoke-static {v0}, Letb;->a(Ljava/util/Map;)V

    .line 869
    const-string/jumbo v1, "[Contact]remote friend search exception %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    .line 1050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    iget-object v1, p0, Leqs$15;->a:Leqs;

    iget-object v1, v1, Leqs;->b:Leqp$b;

    invoke-interface {v1}, Leqp$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 877
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v1, p0, Leqs$15;->a:Leqs;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Leqs;->a(Leqs;I)I

    .line 876
    iget-object v1, p0, Leqs$15;->a:Leqs;

    invoke-virtual {v1}, Leqs;->a()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 859
    return-void
.end method
