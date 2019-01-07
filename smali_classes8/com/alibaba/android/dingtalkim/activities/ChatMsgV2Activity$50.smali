.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 2328
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 2329
    const/4 v0, 0x0

    .line 2353
    :goto_0
    return v0

    .line 2331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v7, p3, v0

    .line 2332
    .local v7, "index":I
    if-ltz v7, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    invoke-virtual {v0}, Lcug;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 2333
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    invoke-virtual {v0, v7}, Lcug;->a(I)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 2335
    .local v4, "messageObject":Lcom/alibaba/wukong/im/Message;
    if-eqz v4, :cond_2

    .line 2336
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ac(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J

    move-result-wide v0

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ac(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J

    move-result-wide v0

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v12

    cmp-long v0, v0, v12

    if-nez v0, :cond_3

    const/4 v3, 0x1

    .line 2337
    .local v3, "isToMessage":Z
    :goto_1
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 2338
    .local v8, "isSysMsg":Z
    :goto_2
    if-nez v8, :cond_2

    .line 2339
    new-instance v5, Leav;

    invoke-direct {v5}, Leav;-><init>()V

    .line 2340
    .local v5, "chatMsgMenuContext":Leav;
    invoke-static {}, Lebc;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2341
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_1

    .line 2342
    invoke-static {v4}, Ldma;->c(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2343
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v6, p3, v0

    .line 2344
    .local v6, "childAtIndex":I
    invoke-virtual {p1, v6}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2345
    .local v9, "itemView":Landroid/view/View;
    invoke-static {v9}, Ldkc;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    .line 3018
    .local v10, "normalRobotMarkdownText":Ljava/lang/String;
    iput-object v10, v5, Leav;->a:Ljava/lang/String;

    .line 2348
    .end local v6    # "childAtIndex":I
    .end local v9    # "itemView":Landroid/view/View;
    .end local v10    # "normalRobotMarkdownText":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldop;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual/range {v0 .. v5}, Ldop;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/Message;Leav;)V

    .line 2353
    .end local v3    # "isToMessage":Z
    .end local v4    # "messageObject":Lcom/alibaba/wukong/im/Message;
    .end local v5    # "chatMsgMenuContext":Leav;
    .end local v8    # "isSysMsg":Z
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2336
    .restart local v4    # "messageObject":Lcom/alibaba/wukong/im/Message;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2337
    .restart local v3    # "isToMessage":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method
