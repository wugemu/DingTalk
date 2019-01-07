.class public abstract Lcwo;
.super Lctv;
.source "NewDingCardViewHolder.java"


# instance fields
.field private a:J

.field private b:Lcom/alibaba/android/ding/base/objects/DingCardView;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isToMessage"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcwo;)Lcom/alibaba/android/ding/base/objects/DingCardView;
    .locals 1
    .param p0, "x0"    # Lcwo;

    .prologue
    .line 35
    iget-object v0, p0, Lcwo;->b:Lcom/alibaba/android/ding/base/objects/DingCardView;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v1, p0, Lcwo;->r:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcwo;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 50
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x42d00000    # 104.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    iget-object v1, p0, Lcwo;->r:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lcwo;->r:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 54
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Landroid/app/Activity;)Lcom/alibaba/android/ding/base/objects/DingCardView;

    move-result-object v1

    iput-object v1, p0, Lcwo;->b:Lcom/alibaba/android/ding/base/objects/DingCardView;

    .line 55
    iget-object v1, p0, Lcwo;->b:Lcom/alibaba/android/ding/base/objects/DingCardView;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcwo;->r:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcwo;->b:Lcom/alibaba/android/ding/base/objects/DingCardView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 62
    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    .line 67
    .local v4, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v4, :cond_0

    .line 71
    const/4 v5, 0x0

    .line 73
    .local v5, "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v14

    const/16 v15, 0x640

    if-ne v14, v15, :cond_4

    instance-of v14, v4, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    if-eqz v14, :cond_4

    move-object v5, v4

    .line 75
    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 76
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v6

    .line 106
    .end local v4    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .local v6, "dingId":J
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcwo;->a:J

    cmp-long v14, v14, v6

    if-eqz v14, :cond_3

    .line 1133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcwo;->b:Lcom/alibaba/android/ding/base/objects/DingCardView;

    if-eqz v14, :cond_2

    .line 1134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcwo;->b:Lcom/alibaba/android/ding/base/objects/DingCardView;

    invoke-virtual {v14}, Lcom/alibaba/android/ding/base/objects/DingCardView;->b()V

    .line 112
    :cond_2
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcwo;->a:J

    .line 115
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcwo;->r:Landroid/view/View;

    new-instance v15, Lcwo$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcwo$1;-><init>(Lcwo;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcwo;->b:Lcom/alibaba/android/ding/base/objects/DingCardView;

    new-instance v15, Lcwo$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lcwo$2;-><init>(Lcwo;Lcom/alibaba/wukong/im/Message;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v5, v15}, Lcom/alibaba/android/ding/base/objects/DingCardView;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$DingCardContent;Lcom/alibaba/android/ding/base/objects/DingCardView$a;)V

    goto :goto_0

    .line 79
    .end local v6    # "dingId":J
    .restart local v4    # "content":Lcom/alibaba/wukong/im/MessageContent;
    :cond_4
    :try_start_0
    const-string/jumbo v14, "ding_draw_text_msg_card"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-class v15, Ljava/util/Map;

    invoke-static {v14, v15}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 80
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_5

    const-string/jumbo v14, "dingMsgType"

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    const-string/jumbo v15, "1"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 81
    move-object/from16 v0, p2

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move-object v14, v0

    iget-object v12, v14, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 82
    .local v12, "obj":Ljava/lang/Object;
    if-eqz v12, :cond_6

    instance-of v14, v12, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v14, :cond_6

    .line 83
    const-string/jumbo v14, "dingContent"

    check-cast v12, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .end local v12    # "obj":Ljava/lang/Object;
    iget-object v15, v12, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v4    # "content":Lcom/alibaba/wukong/im/MessageContent;
    :cond_5
    :goto_2
    invoke-static {v11}, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->fromMap2Object(Ljava/util/Map;)Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 103
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcwo;->X:Lcom/alibaba/wukong/im/Message;

    const-string/jumbo v15, "dingId"

    invoke-interface {v14, v15}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1109
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 103
    .restart local v6    # "dingId":J
    goto/16 :goto_1

    .line 84
    .end local v6    # "dingId":J
    .restart local v4    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .restart local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "obj":Ljava/lang/Object;
    :cond_6
    :try_start_1
    instance-of v14, v4, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v14, :cond_5

    .line 85
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v3

    .line 86
    .local v3, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .end local v4    # "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v13

    .line 87
    .local v13, "textContent":Ljava/lang/String;
    invoke-static {v13, v3}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "displayTextContent":Ljava/lang/String;
    const-string/jumbo v14, "dingContent"

    invoke-interface {v11, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 92
    .end local v3    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v8    # "displayTextContent":Ljava/lang/String;
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "obj":Ljava/lang/Object;
    .end local v13    # "textContent":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 93
    .local v10, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lhzu;

    invoke-direct {v2}, Lhzu;-><init>()V

    .line 94
    .local v2, "alarm":Lhzu;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v9, "dt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "code"

    const-string/jumbo v15, "-1"

    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v14, "error"

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v14, "ding"

    iput-object v14, v2, Lhzu;->a:Ljava/lang/String;

    .line 98
    const/16 v14, 0xe11

    iput v14, v2, Lhzu;->c:I

    .line 99
    iput-object v9, v2, Lhzu;->b:Ljava/util/Map;

    .line 100
    const-string/jumbo v14, "[NewDingCardView]parse error"

    iput-object v14, v2, Lhzu;->d:Ljava/lang/String;

    .line 101
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v14

    invoke-virtual {v14, v2}, Lhzr;->a(Lhzu;)V

    goto :goto_3
.end method
