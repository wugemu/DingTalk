.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"

# interfaces
.implements Lcmb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcmb",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 915
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    const-string/jumbo v2, "-408"

    invoke-interface {v1, v2, p2}, Leqp$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 918
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "local_error_code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string/jumbo v1, "local_error_msg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    const/4 v2, 0x0

    const-string/jumbo v3, "searchRemoteMessage#onLocalException"

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;ILjava/lang/String;Ljava/util/Map;)V

    .line 921
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 836
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;

    .line 1841
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 2093
    iget-boolean v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    .line 1841
    if-eqz v0, :cond_4

    .line 1842
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->groupMsgModelList:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_0
    move v0, v6

    .line 1843
    :goto_0
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    move v3, v0

    .line 1849
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 3093
    iget-object v4, v4, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 1849
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v4

    iget-object v8, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 4093
    iget-object v8, v8, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 1849
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getFromTime()J

    move-result-wide v8

    invoke-static {v2, v4, v8, v9}, Letb;->a(Ljava/util/List;Ljava/util/List;J)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_7

    move-object v4, v7

    :goto_2
    invoke-static/range {v0 .. v5}, Letb;->a(Leoe;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1850
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    const-string/jumbo v1, "searchRemoteMessage#onDataReceived"

    invoke-static {v0, v3, v1, v7}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;ILjava/lang/String;Ljava/util/Map;)V

    .line 1852
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1856
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)I

    .line 1858
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1862
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/lang/String;Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;)V

    .line 1864
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->hasMore:Z

    if-nez v0, :cond_8

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 5093
    iput-boolean v6, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t:Z

    .line 1866
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)V

    .line 1867
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    const-string/jumbo v1, "0"

    .line 6093
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o:Ljava/lang/String;

    .line 1868
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 7487
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_search_append_remain_msg"

    .line 8083
    invoke-virtual {v1, v2, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 7487
    if-eqz v1, :cond_2

    .line 7488
    iget-object v1, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 7489
    if-eqz v1, :cond_2

    .line 7490
    iget-object v2, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->b:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->b:Ljava/util/Set;

    .line 7491
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 7492
    iget-object v2, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->b:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Ljava/util/List;Ljava/util/List;)V

    .line 7493
    iget-object v0, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 7494
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "MsgSearchPresenter.appendRemainMsg:"

    aput-object v2, v1, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 9050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1868
    :cond_2
    :goto_3
    return-void

    .line 1842
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->groupMsgModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_0

    .line 1845
    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->msgList:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_5
    move v0, v6

    .line 1846
    :goto_4
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    move v3, v0

    goto/16 :goto_1

    .line 1845
    :cond_6
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->msgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4

    .line 1849
    :cond_7
    iget-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->logMap:Ljava/lang/String;

    goto/16 :goto_2

    .line 1870
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, p1, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->nextCursor:Ljava/lang/String;

    .line 9093
    iput-object v1, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o:Ljava/lang/String;

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 882
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 883
    invoke-static {p1, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 884
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 885
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "searchRemoteMessage error, code = "

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    const-string/jumbo v4, ", reason = "

    aput-object v4, v3, v8

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    .end local v0    # "c":I
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-static {v3}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)I

    .line 891
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 892
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "code"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string/jumbo v3, "message"

    const-string/jumbo v4, "searchRemoteMessage: %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string/jumbo v3, "type"

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-static {v1}, Letb;->a(Ljava/util/Map;)V

    .line 897
    const-string/jumbo v3, "[MSG]searchRemoteMessage exception %s %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    .line 1050
    const-string/jumbo v5, "search"

    invoke-static {v5, v3, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 900
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "error_code"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string/jumbo v3, "error_msg"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    const-string/jumbo v4, "searchRemoteMessage#onException"

    invoke-static {v3, v6, v4, v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;ILjava/lang/String;Ljava/util/Map;)V

    .line 904
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v3, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    invoke-interface {v3}, Leqp$b;->d()Z

    move-result v3

    if-nez v3, :cond_1

    .line 911
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v3, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    invoke-interface {v3, p1, p2}, Leqp$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v3, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v4, v4, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Leqp$b;->a(Ljava/util/List;)V

    .line 910
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-virtual {v3}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 877
    return-void
.end method
