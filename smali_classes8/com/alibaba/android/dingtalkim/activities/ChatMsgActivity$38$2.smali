.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    .prologue
    .line 7883
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7886
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v3, Lctk$f;->chat_bill_banner:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .line 7887
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setCloseMethod(I)V

    .line 7889
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setData(Ljava/util/HashMap;)V

    .line 7890
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setCurrentConversation(Lcom/alibaba/wukong/im/Conversation;)V

    .line 7892
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    .line 7894
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getPageArgs()Ljava/util/Map;

    move-result-object v0

    .line 7895
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "page_id"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7896
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v2, "a2o5v.12290095"

    const-string/jumbo v3, "AlipayCard"

    invoke-static {v2, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7897
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Chat_Detail"

    const-string/jumbo v3, "Expose-AlipayCard"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7899
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38$2;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setChangeListener(Lcom/alibaba/android/dingtalkim/views/IMBanner$a;)V

    .line 7950
    return-void
.end method
