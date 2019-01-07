.class Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChatListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgItemViewHolder"
.end annotation


# instance fields
.field private mContent:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;


# direct methods
.method private constructor <init>(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    .line 101
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 102
    sget v0, Lbtp$e;->taolive_chat_item_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->mContent:Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;Landroid/view/View;Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$1;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;-><init>(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->bindData(Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->bindNormalMsg(Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V

    return-void
.end method

.method private bindConcernStyle(Landroid/text/SpannableStringBuilder;)V
    .locals 14
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 178
    .local v11, "startIndex":I
    iget-object v12, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-static {v12}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v12

    sget v13, Lbtp$g;->and_tip_special:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "colorWord":Ljava/lang/String;
    const/16 v12, 0x20

    invoke-virtual {p1, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 181
    iget-object v12, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-static {v12}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x106000c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 182
    .local v4, "color":I
    iget-object v12, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-static {v12}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lbtp$b;->taolive_comment_concert_background_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 185
    .local v0, "backgroundColor":I
    add-int/lit8 v3, v11, 0x1

    .line 186
    .local v3, "backgroundStart":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int v2, v3, v12

    .line 187
    .local v2, "backgroundEnd":I
    new-instance v1, Lcom/taobao/taolive/sdk/ui/view/RoundBackgroundColorSpan;

    invoke-direct {v1, v0, v4}, Lcom/taobao/taolive/sdk/ui/view/RoundBackgroundColorSpan;-><init>(II)V

    .line 188
    .local v1, "backgroundColorSpan":Lcom/taobao/taolive/sdk/ui/view/RoundBackgroundColorSpan;
    const/16 v12, 0x11

    invoke-virtual {p1, v1, v3, v2, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 190
    new-instance v6, Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;

    iget-object v12, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-static {v12}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x41100000    # 9.0f

    invoke-static {v12, v13}, Lcms;->c(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v6, v0, v12}, Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;-><init>(II)V

    .line 191
    .local v6, "customVerticalCenterSpan":Lcom/taobao/taolive/sdk/ui/view/CustomVerticalCenterSpan;
    const/16 v12, 0x21

    invoke-virtual {p1, v6, v3, v2, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 194
    iget-object v12, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-static {v12}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lbtp$b;->ui_common_warming_text_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 196
    iget-object v12, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-static {v12}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x41100000    # 9.0f

    invoke-static {v12, v13}, Lcms;->c(Landroid/content/Context;F)I

    move-result v8

    .line 197
    .local v8, "drawableSize":I
    iget-object v12, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-static {v12}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lbtp$g;->icon_star_fill:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, "icon":Ljava/lang/String;
    new-instance v7, Lcjz;

    invoke-direct {v7, v9, v4}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 199
    .local v7, "drawable":Lcjz;
    int-to-float v12, v8

    .line 1045
    iput v12, v7, Lcjz;->b:F

    .line 200
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13, v8, v8}, Lcjz;->setBounds(IIII)V

    .line 201
    new-instance v10, Lcom/taobao/taolive/sdk/ui/view/CenterAlignImageSpan;

    invoke-direct {v10, v0, v7}, Lcom/taobao/taolive/sdk/ui/view/CenterAlignImageSpan;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 202
    .local v10, "imageSpan":Lcom/taobao/taolive/sdk/ui/view/CenterAlignImageSpan;
    const/16 v12, 0x11

    invoke-virtual {p1, v10, v11, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0
.end method

.method private bindData(Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->bindSystemMsg(Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->bindNormalMsg(Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V

    goto :goto_0
.end method

.method private bindNormalMsg(Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    if-nez v3, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    .line 135
    .local v4, "uid":J
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 136
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 137
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_3

    .line 138
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    .line 141
    invoke-static {v3}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lbtp$b;->taolive_comment_name_color:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 142
    .local v1, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x11

    invoke-virtual {v0, v1, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 163
    .end local v1    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    :goto_1
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-direct {p0, v0}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->bindConcernStyle(Landroid/text/SpannableStringBuilder;)V

    .line 167
    :cond_2
    const-string/jumbo v3, ":  "

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 168
    iget-object v3, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->mContent:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-static {v6}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbtp$b;->taolive_chat_txt_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    new-instance v6, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;

    invoke-direct {v6, p0, v4, v5, p1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;-><init>(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;JLcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_1
.end method

.method private bindSystemMsg(Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->mLiveMessage:Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->mLiveMessage:Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->messageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 121
    iget-object v1, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbtp$b;->text_color_red:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 125
    .local v0, "color":I
    :goto_1
    iget-object v1, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v1, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->mContent:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    .end local v0    # "color":I
    :cond_1
    iget-object v1, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->this$0:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbtp$b;->ui_common_warming_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_1
.end method
