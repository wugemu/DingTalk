.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$70;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1305
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1309
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1311
    const-string/jumbo v1, "isretail"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    :cond_0
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "chat_location_button_click"

    .line 1314
    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1315
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    .line 1316
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$70;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lctm;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 1317
    return-void
.end method