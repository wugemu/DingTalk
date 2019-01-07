.class final Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;
.super Ljava/lang/Object;
.source "AtMeListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 81
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-nez v1, :cond_1

    .line 99
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Lctz;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Lctz;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    .line 1058
    iget-object v1, v1, Lctz;->f:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 84
    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->isRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Lctz;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lctz;->a(J)V

    .line 86
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Lctz;

    move-result-object v2

    .line 1066
    if-eqz v0, :cond_2

    .line 1069
    iget-object v1, v2, Lctz;->e:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    .line 1070
    if-eqz v1, :cond_2

    .line 2070
    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->i:J

    .line 1070
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1071
    invoke-virtual {v2, v1, v0, p3}, Lctz;->a(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;Lcom/alibaba/wukong/im/Message;I)V

    .line 88
    :cond_2
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/conversation"

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
