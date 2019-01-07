.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 6166
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

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
    .line 6169
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-nez v0, :cond_1

    .line 6170
    :cond_0
    const/4 v0, 0x0

    .line 6194
    :goto_0
    return v0

    .line 6172
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v7, p3, v0

    .line 6173
    .local v7, "index":I
    if-ltz v7, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v0}, Lcug;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 6174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v0, v7}, Lcug;->a(I)Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 6176
    .local v4, "messageObject":Lcom/alibaba/wukong/im/Message;
    if-eqz v4, :cond_3

    .line 6177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->w(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J

    move-result-wide v0

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->w(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J

    move-result-wide v0

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v12

    cmp-long v0, v0, v12

    if-nez v0, :cond_4

    const/4 v3, 0x1

    .line 6178
    .local v3, "isToMessage":Z
    :goto_1
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    .line 6179
    .local v8, "isSysMsg":Z
    :goto_2
    if-nez v8, :cond_3

    .line 6180
    new-instance v5, Leav;

    invoke-direct {v5}, Leav;-><init>()V

    .line 6181
    .local v5, "chatMsgMenuContext":Leav;
    invoke-static {}, Lebc;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6182
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_2

    .line 6183
    invoke-static {v4}, Ldma;->c(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6184
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v6, p3, v0

    .line 6185
    .local v6, "childAtIndex":I
    invoke-virtual {p1, v6}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 6186
    .local v9, "itemView":Landroid/view/View;
    invoke-static {v9}, Ldkc;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    .line 7018
    .local v10, "normalRobotMarkdownText":Ljava/lang/String;
    iput-object v10, v5, Leav;->a:Ljava/lang/String;

    .line 6189
    .end local v6    # "childAtIndex":I
    .end local v9    # "itemView":Landroid/view/View;
    .end local v10    # "normalRobotMarkdownText":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldop;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual/range {v0 .. v5}, Ldop;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/im/Message;Leav;)V

    .line 6194
    .end local v3    # "isToMessage":Z
    .end local v4    # "messageObject":Lcom/alibaba/wukong/im/Message;
    .end local v5    # "chatMsgMenuContext":Leav;
    .end local v8    # "isSysMsg":Z
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6177
    .restart local v4    # "messageObject":Lcom/alibaba/wukong/im/Message;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 6178
    .restart local v3    # "isToMessage":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method
