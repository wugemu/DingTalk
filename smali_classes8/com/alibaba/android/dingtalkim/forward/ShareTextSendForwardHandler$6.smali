.class final Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;
.super Ljava/lang/Object;
.source "ShareTextSendForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->doSend2ConversationWithAt(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiz;

.field final synthetic b:Ldiz;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ldiz;Ldiz;Ljava/util/Map;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->a:Ldiz;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->b:Ldiz;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

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
    .line 388
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->a:Ldiz;

    new-instance v5, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;)V

    .line 1131
    iput-object v5, v4, Ldiz;->b:Ldiz$a;

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->c:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 408
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$900(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 409
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 410
    .restart local v1    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "stats_biz_type"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$900(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->a:Ldiz;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$600(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->c:Ljava/util/Map;

    invoke-virtual {v4, v5, v6, v1}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 425
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    .line 426
    return-void

    .line 414
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 415
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 416
    .local v2, "uid":J
    const-string/jumbo v4, "@"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 418
    .end local v2    # "uid":J
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$600(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 419
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$900(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 420
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 421
    .restart local v1    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "stats_biz_type"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->e:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$900(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->a:Ldiz;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;->c:Ljava/util/Map;

    invoke-virtual {v4, v5, v6, v1}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    goto :goto_0
.end method
