.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/IMBanner$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    .prologue
    .line 7899
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .param p1, "pos"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7942
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getPageArgs()Ljava/util/Map;

    move-result-object v0

    .line 7943
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "page_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7944
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v2, "a2o5v.12290095"

    const-string/jumbo v3, "AlipayCard"

    invoke-static {v2, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7945
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Chat_Detail"

    const-string/jumbo v3, "Expose-AlipayCard"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7947
    const-string/jumbo v1, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Select banner "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7948
    return-void
.end method

.method public final a(ILjava/lang/Object;)Z
    .locals 9
    .param p1, "pos"    # I
    .param p2, "itemData"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7902
    const/4 v1, 0x0

    .line 7903
    .local v1, "beCloseBanner":Z
    instance-of v4, p2, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v4, :cond_2

    .line 7905
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getData()Ljava/util/HashMap;

    move-result-object v2

    .line 7906
    .local v2, "billDataList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;Ljava/lang/Class;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7907
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7909
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7910
    const/4 v1, 0x1

    .line 7918
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Ldwo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 7919
    .local v3, "billDoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7920
    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7922
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 7923
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4, v3}, Ldwo;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    .line 7929
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getPageArgs()Ljava/util/Map;

    move-result-object v0

    .line 7930
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "page_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7931
    const-string/jumbo v4, "spm-url"

    const-string/jumbo v5, "a2o5v.12290095"

    const-string/jumbo v6, "AlipayCardClose"

    invoke-static {v5, v6}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7932
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "Page_Chat_Detail"

    const-string/jumbo v6, "Button-AlipayCardClose"

    invoke-interface {v4, v5, v6, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7934
    const-string/jumbo v4, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Close banner "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7936
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "billDataList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;Ljava/lang/Class;>;"
    .end local v3    # "billDoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;>;"
    :cond_2
    return v1

    .line 7912
    .restart local v2    # "billDataList":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;Ljava/lang/Class;>;"
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setData(Ljava/util/HashMap;)V

    .line 7913
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 7925
    .restart local v3    # "billDoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;>;"
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Ldwo;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_1
.end method
