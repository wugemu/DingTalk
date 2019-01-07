.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 7844
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7847
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aT(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7848
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 7849
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Ldkm;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    .line 7850
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Ljava/lang/Class;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 7880
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Ljava/lang/Class;>;"
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    move-result-object v2

    if-nez v2, :cond_3

    .line 7881
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 8119
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v3, 0x10

    invoke-direct {v0, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 8120
    if-eqz v2, :cond_2

    .line 8123
    const-string/jumbo v3, "group_bill_pay_list"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8124
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8125
    const-string/jumbo v3, "_bills===bills_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 8126
    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 8127
    invoke-static {v2}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-class v6, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    invoke-static {v2, v6}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 8128
    if-eqz v2, :cond_1

    .line 8129
    const-class v6, Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8126
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 7882
    .local v0, "billData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;Ljava/lang/Class;>;"
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7883
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 7954
    .end local v0    # "billData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;Ljava/lang/Class;>;"
    :cond_3
    return-void
.end method
