.class public final Lcug;
.super Lcqr;
.source "ChatItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcug$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# static fields
.field private static final r:I


# instance fields
.field public d:Landroid/view/View$OnClickListener;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Lcom/alibaba/wukong/im/Message;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcts;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field public k:F

.field private l:Lcts$b;

.field private m:J

.field private n:I

.field private o:J

.field private p:Z

.field private q:Lcug$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->values()[Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcug;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;IJLcts$b;ZLcug$a;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "conversationType"    # I
    .param p4, "conversationTag"    # J
    .param p6, "onItemListener"    # Lcts$b;
    .param p7, "isEncryptConversation"    # Z
    .param p8, "activityStatus"    # Lcug$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;IJ",
            "Lcts$b;",
            "Z",
            "Lcug$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-direct {p0, p1, p2}, Lcqr;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 67
    iput p3, p0, Lcug;->n:I

    .line 68
    iput-wide p4, p0, Lcug;->o:J

    .line 69
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    iput-wide v0, p0, Lcug;->m:J

    .line 70
    iput-object p6, p0, Lcug;->l:Lcts$b;

    .line 71
    iget-wide v0, p0, Lcug;->o:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcug;->i:Ljava/util/Map;

    .line 74
    :cond_0
    iput-boolean p7, p0, Lcug;->p:Z

    .line 75
    iput-object p8, p0, Lcug;->q:Lcug$a;

    .line 76
    return-void
.end method

.method private static a(Lcom/alibaba/wukong/im/Message;)J
    .locals 5
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const-wide/16 v2, 0x0

    .line 312
    if-nez p0, :cond_1

    .line 12052
    :cond_0
    :goto_0
    return-wide v2

    .line 315
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v4, 0xa28

    if-ne v1, v4, :cond_2

    instance-of v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 317
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 318
    .local v0, "dMsg":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;

    .line 12051
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/CombinedPraisesModel;->a()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 12052
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    goto :goto_0

    .line 322
    .end local v0    # "dMsg":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/wukong/im/Message;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    iget-object v1, p0, Lcug;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 362
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 363
    :cond_0
    const/4 v1, 0x0

    .line 365
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcug;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 12378
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 34
    return-object v0
.end method

.method public final a(JZ)V
    .locals 3
    .param p1, "tag"    # J
    .param p3, "needUpdate"    # Z

    .prologue
    .line 79
    iget-wide v0, p0, Lcug;->o:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 80
    iput-wide p1, p0, Lcug;->o:J

    .line 82
    invoke-virtual {p0}, Lcug;->notifyDataSetChanged()V

    .line 84
    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 102
    iput-object p1, p0, Lcug;->c:Landroid/widget/ListView;

    .line 103
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iput-object p1, p0, Lcug;->a:Ljava/util/List;

    .line 108
    return-void
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcug;->a(I)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 11
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 335
    invoke-virtual {p0, p1}, Lcug;->a(I)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 336
    .local v1, "msg":Lcom/alibaba/wukong/im/Message;
    instance-of v3, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v3, :cond_1

    .line 337
    const/4 v2, -0x1

    .line 338
    .local v2, "type":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 339
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    .line 341
    :cond_0
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "getItemViewType not DingtalkMessage, position="

    aput-object v6, v5, v7

    .line 342
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, ", msg.type="

    aput-object v6, v5, v9

    .line 343
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 341
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v3, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->FromUnknown:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ordinal()I

    move-result v3

    .line 355
    .end local v2    # "type":I
    :goto_0
    return v3

    :cond_1
    move-object v0, v1

    .line 347
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 348
    .local v0, "message":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-nez v3, :cond_4

    .line 349
    :cond_2
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "ChatItemAdapter"

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v3, "getItemViewType position: "

    aput-object v3, v6, v7

    .line 350
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    if-nez v0, :cond_3

    const-string/jumbo v3, ", message is null "

    :goto_1
    aput-object v3, v6, v9

    const-string/jumbo v3, ", return 1 (MsgDisplayType.FromUnknown.ordinal()) instead"

    aput-object v3, v6, v10

    .line 349
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v3, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->FromUnknown:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ordinal()I

    move-result v3

    goto :goto_0

    .line 350
    :cond_3
    const-string/jumbo v3, ", message.msgDisplayType is null"

    goto :goto_1

    .line 355
    :cond_4
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ordinal()I

    move-result v3

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 31
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p1}, Lcug;->a(I)Lcom/alibaba/wukong/im/Message;

    move-result-object v24

    .line 132
    .local v24, "msg":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v3, :cond_1

    .line 133
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "ChatItemAdapter"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "msgid = "

    aput-object v8, v7, v3

    const/4 v8, 0x1

    if-eqz v24, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, ", is not dingtalkmsg"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v7, v8

    .line 133
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, p2

    .line 302
    .end local p2    # "convertView":Landroid/view/View;
    .local v12, "convertView":Landroid/view/View;
    :goto_1
    return-object v12

    .line 134
    .end local v12    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    const-string/jumbo v3, "null"

    goto :goto_0

    :cond_1
    move-object/from16 v6, v24

    .line 137
    check-cast v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 138
    .local v6, "message":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v3, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-nez v3, :cond_2

    .line 139
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "ChatItemAdapter"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "getView position: "

    aput-object v8, v5, v7

    const/4 v7, 0x1

    .line 140
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", message.msgDisplayType is null"

    aput-object v8, v5, v7

    .line 139
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, p2

    .line 142
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v12    # "convertView":Landroid/view/View;
    goto :goto_1

    .line 145
    .end local v12    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-object/from16 v16, v0

    .line 147
    .local v16, "displayType":Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;
    if-eqz p2, :cond_3

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcts;

    .line 1532
    .local v2, "viewHolder":Lcts;
    iget v0, v2, Lcts;->M:I

    move/from16 v30, v0

    .line 150
    .local v30, "viewTag":I
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ordinal()I

    move-result v3

    move/from16 v0, v30

    if-eq v0, v3, :cond_3

    .line 151
    const/16 p2, 0x0

    .line 155
    .end local v2    # "viewHolder":Lcts;
    .end local v30    # "viewTag":I
    :cond_3
    if-nez p2, :cond_1b

    .line 2032
    sget-object v3, Ldja$1;->a:[I

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2722
    new-instance v2, Lcxs;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isTo()Z

    move-result v3

    invoke-direct {v2, v3}, Lcxs;-><init>(Z)V

    .line 157
    .restart local v2    # "viewHolder":Lcts;
    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcug;->o:J

    invoke-virtual {v2, v4, v5}, Lcts;->a(J)V

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->l:Lcts$b;

    invoke-virtual {v2, v3}, Lcts;->a(Lcts$b;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->b:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcts;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    .line 160
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    :cond_4
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcts;->b(Landroid/view/View;)V

    .line 169
    instance-of v3, v2, Ldak;

    if-eqz v3, :cond_5

    .line 170
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v4

    move-object v3, v2

    check-cast v3, Ldak;

    iget-object v3, v3, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v4, v3}, Lctj;->a(Lctj$a;)V

    move-object v3, v2

    .line 171
    check-cast v3, Ldak;

    iget-object v3, v3, Ldak;->Z:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a()V

    .line 174
    :cond_5
    instance-of v3, v2, Lcva;

    if-eqz v3, :cond_6

    move-object v3, v2

    .line 175
    check-cast v3, Lcva;

    invoke-virtual {v2}, Lcts;->a()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const/4 v4, 0x1

    .line 4049
    :goto_4
    iget-object v5, v3, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v5, :cond_6

    .line 4058
    if-nez v4, :cond_1d

    invoke-virtual {v3}, Lcva;->p()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    .line 4049
    :goto_5
    if-nez v4, :cond_6

    .line 4050
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    iget-object v5, v3, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 4051
    const/4 v4, 0x0

    iput-object v4, v3, Lcva;->aa:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 4052
    const/4 v4, 0x0

    iput-object v4, v3, Lcva;->Z:Ljava/lang/String;

    .line 178
    :cond_6
    instance-of v3, v2, Lcuw;

    if-eqz v3, :cond_7

    move-object v3, v2

    .line 179
    check-cast v3, Lcuw;

    invoke-virtual {v3}, Lcuw;->p()V

    .line 182
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcts;->a(Landroid/view/View;)V

    .line 183
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->ordinal()I

    move-result v3

    .line 4536
    iput v3, v2, Lcts;->M:I

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->j:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-virtual {v2, v3}, Lcts;->a(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    .line 186
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->d:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_8

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->d:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_8
    invoke-static {v6}, Lcug;->a(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v14

    .line 193
    .local v14, "currentL":J
    const/16 v18, 0x1

    .line 197
    .local v18, "isShowCreateTime":Z
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_9

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->a:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/alibaba/wukong/im/Message;

    .line 200
    .local v29, "tmp":Lcom/alibaba/wukong/im/Message;
    if-eqz v29, :cond_9

    .line 201
    invoke-static/range {v29 .. v29}, Lcug;->a(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v4

    sub-long v4, v14, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 202
    .local v25, "preT":Ljava/lang/Long;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0xdbba0

    cmp-long v3, v4, v8

    if-ltz v3, :cond_1e

    const/16 v18, 0x1

    .line 208
    .end local v25    # "preT":Ljava/lang/Long;
    .end local v29    # "tmp":Lcom/alibaba/wukong/im/Message;
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->h:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v6, v3}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcts;->c(Z)V

    .line 219
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcug;->o:J

    invoke-virtual {v2, v4, v5}, Lcts;->a(J)V

    .line 220
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcug;->e:J

    invoke-virtual {v2, v4, v5}, Lcts;->b(J)V

    .line 221
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcug;->g:Z

    invoke-virtual {v2, v3}, Lcts;->a(Z)V

    .line 222
    invoke-virtual {v2, v6}, Lcts;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 7437
    iget-object v3, v2, Lcts;->f:Landroid/widget/TextView;

    .line 6446
    if-eqz v3, :cond_c

    .line 6450
    if-eqz v18, :cond_22

    .line 6451
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6452
    const/4 v4, 0x1

    invoke-static {v14, v15, v4}, Lcog;->b(JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6454
    iget-object v3, v2, Lcts;->g:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 6455
    iget-object v3, v2, Lcts;->g:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6463
    :cond_b
    :goto_8
    iget-object v3, v2, Lcts;->g:Landroid/view/View;

    if-eqz v3, :cond_c

    .line 6464
    iget-object v3, v2, Lcts;->g:Landroid/view/View;

    const-string/jumbo v4, "chatting_time_tv_parent"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    :cond_c
    invoke-virtual {v2, v14, v15}, Lcts;->c(J)V

    .line 226
    move-object/from16 v0, p0

    iget v3, v0, Lcug;->n:I

    invoke-virtual {v2, v3}, Lcts;->a(I)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcug;->b()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcug;->m:J

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcts;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->q:Lcug$a;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->q:Lcug$a;

    invoke-interface {v3}, Lcug$a;->a()Z

    move-result v3

    if-nez v3, :cond_e

    .line 233
    :cond_d
    invoke-static {}, Ldka;->a()Ldka;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcug;->m:J

    invoke-virtual {v3, v4, v5, v6}, Ldka;->a(JLcom/alibaba/wukong/im/Message;)Z

    move-result v17

    .line 235
    .local v17, "doRead":Z
    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p1

    if-ne v3, v0, :cond_e

    .line 236
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->viewMessage()V

    .line 241
    .end local v17    # "doRead":Z
    :cond_e
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcug;->o:J

    .line 8277
    invoke-virtual {v5, v6, v8, v9}, Ldjz;->b(Lcom/alibaba/wukong/im/Message;J)Z

    move-result v3

    if-nez v3, :cond_23

    .line 243
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcug;->o:J

    const-wide/16 v8, 0x4

    cmp-long v3, v4, v8

    if-nez v3, :cond_13

    .line 244
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xfc

    if-ne v3, v4, :cond_11

    .line 245
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->i:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_11
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v3

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ldjz;->a(J)Ldjz$a;

    move-result-object v28

    .line 248
    .local v28, "timer":Ldjz$a;
    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcts;->a(Ldjz$a;)V

    .line 249
    iget-object v3, v2, Lcts;->I:Landroid/widget/TextView;

    if-eqz v3, :cond_13

    .line 250
    const/4 v13, 0x0

    .line 251
    .local v13, "countDownText":Ljava/lang/String;
    if-eqz v28, :cond_12

    .line 252
    move-object/from16 v0, v28

    iget-wide v4, v0, Ldjz$a;->e:J

    const-wide/16 v8, 0x3e8

    div-long v26, v4, v8

    .line 253
    .local v26, "second":J
    const-wide/16 v4, 0x3c

    div-long v22, v26, v4

    .line 254
    .local v22, "minute":J
    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-lez v3, :cond_31

    .line 255
    const-wide/16 v4, 0x3c

    rem-long v20, v26, v4

    .line 256
    .local v20, "leftSecond":J
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "\u2019"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "\u201d"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 261
    .end local v20    # "leftSecond":J
    .end local v22    # "minute":J
    .end local v26    # "second":J
    :cond_12
    :goto_a
    iget-object v3, v2, Lcts;->I:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .end local v13    # "countDownText":Ljava/lang/String;
    .end local v28    # "timer":Ldjz$a;
    :cond_13
    instance-of v3, v2, Lctv;

    if-eqz v3, :cond_14

    move-object v3, v2

    .line 267
    check-cast v3, Lctv;

    move-object/from16 v0, p0

    iget v4, v0, Lcug;->k:F

    invoke-virtual {v3, v4}, Lctv;->b(F)V

    .line 269
    :cond_14
    instance-of v3, v2, Lcxr;

    if-eqz v3, :cond_15

    .line 270
    move-object/from16 v0, p0

    iget v3, v0, Lcug;->k:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_32

    move-object v3, v2

    .line 271
    check-cast v3, Lcxr;

    const/4 v4, 0x1

    .line 9261
    iput-boolean v4, v3, Lcxr;->a:Z

    .line 281
    :cond_15
    :goto_b
    instance-of v3, v2, Lcwk;

    if-eqz v3, :cond_16

    move-object v3, v2

    .line 282
    check-cast v3, Lcwk;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcug;->f:Ljava/lang/String;

    .line 11181
    iput-object v4, v3, Lcwk;->Y:Ljava/lang/String;

    move-object v3, v2

    .line 283
    check-cast v3, Lcwk;

    move-object/from16 v0, p0

    iget v4, v0, Lcug;->n:I

    .line 11196
    iput v4, v3, Lcwk;->Z:I

    .line 287
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcug;->p:Z

    invoke-virtual {v2, v3}, Lcts;->b(Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->l:Lcts$b;

    if-eqz v3, :cond_17

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcug;->l:Lcts$b;

    invoke-interface {v3, v6}, Lcts$b;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 294
    :cond_17
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcts;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcts;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v2}, Lcts;->i()Landroid/view/View;

    move-result-object v19

    .line 298
    .local v19, "messageContentView":Landroid/view/View;
    if-eqz v19, :cond_18

    .line 299
    invoke-virtual {v2}, Lcts;->e()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_18
    move-object/from16 v12, p2

    .line 302
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v12    # "convertView":Landroid/view/View;
    goto/16 :goto_1

    .line 2037
    .end local v2    # "viewHolder":Lcts;
    .end local v12    # "convertView":Landroid/view/View;
    .end local v14    # "currentL":J
    .end local v18    # "isShowCreateTime":Z
    .end local v19    # "messageContentView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :pswitch_0
    new-instance v2, Lcuy;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcuy;-><init>(Z)V

    goto/16 :goto_2

    .line 2043
    :pswitch_1
    new-instance v2, Lcux;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcux;-><init>(Z)V

    goto/16 :goto_2

    .line 2049
    :pswitch_2
    new-instance v2, Lcxs;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcxs;-><init>(Z)V

    goto/16 :goto_2

    .line 2055
    :pswitch_3
    new-instance v2, Lcxs;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcxs;-><init>(Z)V

    goto/16 :goto_2

    .line 2061
    :pswitch_4
    new-instance v2, Lcxr;

    invoke-direct {v2}, Lcxr;-><init>()V

    goto/16 :goto_2

    .line 2068
    :pswitch_5
    new-instance v2, Lcwu;

    invoke-direct {v2}, Lcwu;-><init>()V

    goto/16 :goto_2

    .line 2076
    :pswitch_6
    new-instance v2, Lczy;

    invoke-direct {v2}, Lczy;-><init>()V

    goto/16 :goto_2

    .line 2083
    :pswitch_7
    new-instance v2, Lczz;

    invoke-direct {v2}, Lczz;-><init>()V

    goto/16 :goto_2

    .line 2091
    :pswitch_8
    new-instance v2, Lczi;

    invoke-direct {v2}, Lczi;-><init>()V

    goto/16 :goto_2

    .line 2098
    :pswitch_9
    new-instance v2, Lczj;

    invoke-direct {v2}, Lczj;-><init>()V

    goto/16 :goto_2

    .line 2105
    :pswitch_a
    new-instance v2, Ldai;

    invoke-direct {v2}, Ldai;-><init>()V

    goto/16 :goto_2

    .line 2113
    :pswitch_b
    new-instance v2, Ldaj;

    invoke-direct {v2}, Ldaj;-><init>()V

    goto/16 :goto_2

    .line 2120
    :pswitch_c
    new-instance v2, Lcyr;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcyr;-><init>(Z)V

    goto/16 :goto_2

    .line 2127
    :pswitch_d
    new-instance v2, Lcys;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcys;-><init>(Z)V

    goto/16 :goto_2

    .line 2134
    :pswitch_e
    new-instance v2, Lcuo;

    invoke-direct {v2}, Lcuo;-><init>()V

    goto/16 :goto_2

    .line 2141
    :pswitch_f
    new-instance v2, Lcut;

    invoke-direct {v2}, Lcut;-><init>()V

    goto/16 :goto_2

    .line 2147
    :pswitch_10
    new-instance v2, Lcur;

    invoke-direct {v2}, Lcur;-><init>()V

    goto/16 :goto_2

    .line 2154
    :pswitch_11
    new-instance v2, Lcun;

    invoke-direct {v2}, Lcun;-><init>()V

    goto/16 :goto_2

    .line 2161
    :pswitch_12
    new-instance v2, Lcus;

    invoke-direct {v2}, Lcus;-><init>()V

    goto/16 :goto_2

    .line 2167
    :pswitch_13
    new-instance v2, Lcuq;

    invoke-direct {v2}, Lcuq;-><init>()V

    goto/16 :goto_2

    .line 2173
    :pswitch_14
    new-instance v2, Lcyu;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcyu;-><init>(Z)V

    goto/16 :goto_2

    .line 2181
    :pswitch_15
    new-instance v2, Ldad;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ldad;-><init>(Z)V

    goto/16 :goto_2

    .line 2188
    :pswitch_16
    new-instance v2, Lcyv;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcyv;-><init>(Z)V

    goto/16 :goto_2

    .line 2195
    :pswitch_17
    new-instance v2, Ldae;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ldae;-><init>(Z)V

    goto/16 :goto_2

    .line 2202
    :pswitch_18
    new-instance v2, Lcua;

    invoke-direct {v2}, Lcua;-><init>()V

    goto/16 :goto_2

    .line 2209
    :pswitch_19
    new-instance v2, Lczg;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lczg;-><init>(Z)V

    goto/16 :goto_2

    .line 2216
    :pswitch_1a
    new-instance v2, Lczh;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lczh;-><init>(Z)V

    goto/16 :goto_2

    .line 2223
    :pswitch_1b
    new-instance v2, Lcxw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcxw;-><init>(Z)V

    goto/16 :goto_2

    .line 2230
    :pswitch_1c
    new-instance v2, Lcxx;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcxx;-><init>(Z)V

    goto/16 :goto_2

    .line 2237
    :pswitch_1d
    new-instance v2, Lczl;

    invoke-direct {v2}, Lczl;-><init>()V

    goto/16 :goto_2

    .line 2244
    :pswitch_1e
    new-instance v2, Lczs;

    invoke-direct {v2}, Lczs;-><init>()V

    goto/16 :goto_2

    .line 2251
    :pswitch_1f
    new-instance v2, Lczp;

    invoke-direct {v2}, Lczp;-><init>()V

    goto/16 :goto_2

    .line 2258
    :pswitch_20
    new-instance v2, Lczq;

    invoke-direct {v2}, Lczq;-><init>()V

    goto/16 :goto_2

    .line 2265
    :pswitch_21
    new-instance v2, Lczt;

    invoke-direct {v2}, Lczt;-><init>()V

    goto/16 :goto_2

    .line 2272
    :pswitch_22
    new-instance v2, Lczu;

    invoke-direct {v2}, Lczu;-><init>()V

    goto/16 :goto_2

    .line 2279
    :pswitch_23
    new-instance v2, Lczm;

    invoke-direct {v2}, Lczm;-><init>()V

    goto/16 :goto_2

    .line 2286
    :pswitch_24
    new-instance v2, Lczn;

    invoke-direct {v2}, Lczn;-><init>()V

    goto/16 :goto_2

    .line 2293
    :pswitch_25
    new-instance v2, Lczd;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lczd;-><init>(Z)V

    goto/16 :goto_2

    .line 2300
    :pswitch_26
    new-instance v2, Lcze;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcze;-><init>(Z)V

    goto/16 :goto_2

    .line 2307
    :pswitch_27
    new-instance v2, Lcxt;

    invoke-direct {v2}, Lcxt;-><init>()V

    goto/16 :goto_2

    .line 2314
    :pswitch_28
    new-instance v2, Lcxu;

    invoke-direct {v2}, Lcxu;-><init>()V

    goto/16 :goto_2

    .line 2321
    :pswitch_29
    new-instance v2, Lcye;

    invoke-direct {v2}, Lcye;-><init>()V

    goto/16 :goto_2

    .line 2328
    :pswitch_2a
    new-instance v2, Lcyf;

    invoke-direct {v2}, Lcyf;-><init>()V

    goto/16 :goto_2

    .line 2335
    :pswitch_2b
    new-instance v2, Lcxy;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcxy;-><init>(Z)V

    goto/16 :goto_2

    .line 2342
    :pswitch_2c
    new-instance v2, Lcya;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcya;-><init>(Z)V

    goto/16 :goto_2

    .line 2349
    :pswitch_2d
    new-instance v2, Lcvc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcvc;-><init>(Z)V

    goto/16 :goto_2

    .line 2356
    :pswitch_2e
    new-instance v2, Lcvd;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcvd;-><init>(Z)V

    goto/16 :goto_2

    .line 2363
    :pswitch_2f
    new-instance v2, Lcwp;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcwp;-><init>(Z)V

    goto/16 :goto_2

    .line 2370
    :pswitch_30
    new-instance v2, Lcwq;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcwq;-><init>(Z)V

    goto/16 :goto_2

    .line 2377
    :pswitch_31
    new-instance v2, Lcwp;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcwp;-><init>(Z)V

    goto/16 :goto_2

    .line 2384
    :pswitch_32
    new-instance v2, Lcwq;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcwq;-><init>(Z)V

    goto/16 :goto_2

    .line 2391
    :pswitch_33
    new-instance v2, Lctw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lctw;-><init>(Z)V

    goto/16 :goto_2

    .line 2398
    :pswitch_34
    new-instance v2, Lctx;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lctx;-><init>(Z)V

    goto/16 :goto_2

    .line 2405
    :pswitch_35
    new-instance v2, Lcvf;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcvf;-><init>(Z)V

    goto/16 :goto_2

    .line 2412
    :pswitch_36
    new-instance v2, Lcvg;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcvg;-><init>(Z)V

    goto/16 :goto_2

    .line 2419
    :pswitch_37
    new-instance v2, Ldaf;

    invoke-direct {v2}, Ldaf;-><init>()V

    goto/16 :goto_2

    .line 2426
    :pswitch_38
    new-instance v2, Ldag;

    invoke-direct {v2}, Ldag;-><init>()V

    goto/16 :goto_2

    .line 2432
    :pswitch_39
    new-instance v2, Lcwv;

    invoke-direct {v2}, Lcwv;-><init>()V

    goto/16 :goto_2

    .line 2438
    :pswitch_3a
    new-instance v2, Lcvn;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcvn;-><init>(Z)V

    goto/16 :goto_2

    .line 2445
    :pswitch_3b
    new-instance v2, Lcvo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcvo;-><init>(Z)V

    goto/16 :goto_2

    .line 2449
    :pswitch_3c
    new-instance v2, Lcui;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcui;-><init>(Z)V

    goto/16 :goto_2

    .line 2453
    :pswitch_3d
    new-instance v2, Lcuk;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcuk;-><init>(Z)V

    goto/16 :goto_2

    .line 2457
    :pswitch_3e
    new-instance v2, Lcyb;

    invoke-direct {v2}, Lcyb;-><init>()V

    goto/16 :goto_2

    .line 2461
    :pswitch_3f
    new-instance v2, Lcyc;

    invoke-direct {v2}, Lcyc;-><init>()V

    goto/16 :goto_2

    .line 2465
    :pswitch_40
    new-instance v2, Lcyk;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcyk;-><init>(Z)V

    goto/16 :goto_2

    .line 2469
    :pswitch_41
    new-instance v2, Lcyl;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcyl;-><init>(Z)V

    goto/16 :goto_2

    .line 2473
    :pswitch_42
    new-instance v2, Lcym;

    invoke-direct {v2}, Lcym;-><init>()V

    goto/16 :goto_2

    .line 2477
    :pswitch_43
    new-instance v2, Lcyn;

    invoke-direct {v2}, Lcyn;-><init>()V

    goto/16 :goto_2

    .line 2481
    :pswitch_44
    new-instance v2, Lcyg;

    invoke-direct {v2}, Lcyg;-><init>()V

    goto/16 :goto_2

    .line 2485
    :pswitch_45
    new-instance v2, Lcyh;

    invoke-direct {v2}, Lcyh;-><init>()V

    goto/16 :goto_2

    .line 2489
    :pswitch_46
    new-instance v2, Lcyo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcyo;-><init>(Z)V

    goto/16 :goto_2

    .line 2493
    :pswitch_47
    new-instance v2, Lcyp;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcyp;-><init>(Z)V

    goto/16 :goto_2

    .line 2497
    :pswitch_48
    new-instance v2, Lcyi;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcyi;-><init>(Z)V

    goto/16 :goto_2

    .line 2501
    :pswitch_49
    new-instance v2, Lcyj;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcyj;-><init>(Z)V

    goto/16 :goto_2

    .line 2504
    :pswitch_4a
    new-instance v2, Lcxc;

    invoke-direct {v2}, Lcxc;-><init>()V

    goto/16 :goto_2

    .line 2507
    :pswitch_4b
    new-instance v2, Lcxa;

    invoke-direct {v2}, Lcxa;-><init>()V

    goto/16 :goto_2

    .line 2511
    :pswitch_4c
    new-instance v2, Lcyx;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcyx;-><init>(Z)V

    goto/16 :goto_2

    .line 2514
    :pswitch_4d
    new-instance v2, Lcyy;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcyy;-><init>(Z)V

    goto/16 :goto_2

    .line 2518
    :pswitch_4e
    new-instance v2, Lczb;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lczb;-><init>(Z)V

    goto/16 :goto_2

    .line 2521
    :pswitch_4f
    new-instance v2, Lcza;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcza;-><init>(Z)V

    goto/16 :goto_2

    .line 2524
    :pswitch_50
    new-instance v2, Lcwy;

    invoke-direct {v2}, Lcwy;-><init>()V

    goto/16 :goto_2

    .line 2527
    :pswitch_51
    new-instance v2, Lcwx;

    invoke-direct {v2}, Lcwx;-><init>()V

    goto/16 :goto_2

    .line 2530
    :pswitch_52
    new-instance v2, Lcxb;

    invoke-direct {v2}, Lcxb;-><init>()V

    goto/16 :goto_2

    .line 2533
    :pswitch_53
    new-instance v2, Lcwl;

    invoke-direct {v2}, Lcwl;-><init>()V

    goto/16 :goto_2

    .line 2536
    :pswitch_54
    new-instance v2, Lcxa;

    invoke-direct {v2}, Lcxa;-><init>()V

    goto/16 :goto_2

    .line 2539
    :pswitch_55
    new-instance v2, Lcxc;

    invoke-direct {v2}, Lcxc;-><init>()V

    goto/16 :goto_2

    .line 2542
    :pswitch_56
    new-instance v2, Lcxm;

    invoke-direct {v2}, Lcxm;-><init>()V

    goto/16 :goto_2

    .line 2548
    :pswitch_57
    new-instance v2, Lcvk;

    invoke-direct {v2}, Lcvk;-><init>()V

    goto/16 :goto_2

    .line 2554
    :pswitch_58
    new-instance v2, Lcvj;

    invoke-direct {v2}, Lcvj;-><init>()V

    goto/16 :goto_2

    .line 2560
    :pswitch_59
    new-instance v2, Lcwn;

    invoke-direct {v2}, Lcwn;-><init>()V

    goto/16 :goto_2

    .line 2566
    :pswitch_5a
    new-instance v2, Lcwm;

    invoke-direct {v2}, Lcwm;-><init>()V

    goto/16 :goto_2

    .line 2572
    :pswitch_5b
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_red_packets_enterprise_b2c"

    invoke-virtual {v3, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2573
    new-instance v2, Lcvb;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcvb;-><init>(Z)V

    goto/16 :goto_2

    .line 2575
    :cond_19
    new-instance v2, Lcxs;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isTo()Z

    move-result v3

    invoke-direct {v2, v3}, Lcxs;-><init>(Z)V

    goto/16 :goto_2

    .line 2582
    :pswitch_5c
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_red_packets_enterprise_b2c"

    invoke-virtual {v3, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2583
    new-instance v2, Lcvb;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcvb;-><init>(Z)V

    goto/16 :goto_2

    .line 2585
    :cond_1a
    new-instance v2, Lcxs;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isTo()Z

    move-result v3

    invoke-direct {v2, v3}, Lcxs;-><init>(Z)V

    goto/16 :goto_2

    .line 2592
    :pswitch_5d
    new-instance v2, Ldbl;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ldbl;-><init>(Z)V

    goto/16 :goto_2

    .line 2599
    :pswitch_5e
    new-instance v2, Ldbk;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ldbk;-><init>(Z)V

    goto/16 :goto_2

    .line 2606
    :pswitch_5f
    new-instance v2, Ldbo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ldbo;-><init>(Z)V

    goto/16 :goto_2

    .line 2613
    :pswitch_60
    new-instance v2, Ldbn;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ldbn;-><init>(Z)V

    goto/16 :goto_2

    .line 2620
    :pswitch_61
    new-instance v2, Ldbi;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ldbi;-><init>(Z)V

    goto/16 :goto_2

    .line 2627
    :pswitch_62
    new-instance v2, Ldbh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ldbh;-><init>(Z)V

    goto/16 :goto_2

    .line 2634
    :pswitch_63
    new-instance v2, Ldbf;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ldbf;-><init>(Z)V

    goto/16 :goto_2

    .line 2640
    :pswitch_64
    new-instance v2, Ldbe;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ldbe;-><init>(Z)V

    goto/16 :goto_2

    .line 2647
    :pswitch_65
    new-instance v2, Lday;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lday;-><init>(Z)V

    goto/16 :goto_2

    .line 2653
    :pswitch_66
    new-instance v2, Ldax;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ldax;-><init>(Z)V

    goto/16 :goto_2

    .line 2660
    :pswitch_67
    new-instance v2, Ldbc;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ldbc;-><init>(Z)V

    goto/16 :goto_2

    .line 2666
    :pswitch_68
    new-instance v2, Ldbb;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ldbb;-><init>(Z)V

    goto/16 :goto_2

    .line 2673
    :pswitch_69
    new-instance v2, Ldba;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ldba;-><init>(Z)V

    goto/16 :goto_2

    .line 2679
    :pswitch_6a
    new-instance v2, Ldaz;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ldaz;-><init>(Z)V

    goto/16 :goto_2

    .line 2686
    :pswitch_6b
    new-instance v2, Lcxq;

    invoke-direct {v2}, Lcxq;-><init>()V

    goto/16 :goto_2

    .line 2689
    :pswitch_6c
    new-instance v2, Lcwj;

    invoke-direct {v2}, Lcwj;-><init>()V

    goto/16 :goto_2

    .line 2692
    :pswitch_6d
    new-instance v2, Lcwi;

    invoke-direct {v2}, Lcwi;-><init>()V

    goto/16 :goto_2

    .line 2695
    :pswitch_6e
    new-instance v2, Lcvs;

    invoke-direct {v2}, Lcvs;-><init>()V

    goto/16 :goto_2

    .line 2698
    :pswitch_6f
    new-instance v2, Lcvq;

    invoke-direct {v2}, Lcvq;-><init>()V

    goto/16 :goto_2

    .line 2701
    :pswitch_70
    new-instance v2, Lcxp;

    invoke-direct {v2}, Lcxp;-><init>()V

    goto/16 :goto_2

    .line 2704
    :pswitch_71
    new-instance v2, Lcwd;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcwd;-><init>(Z)V

    goto/16 :goto_2

    .line 2707
    :pswitch_72
    new-instance v2, Lcwd;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcwd;-><init>(Z)V

    goto/16 :goto_2

    .line 2710
    :pswitch_73
    new-instance v2, Lcvw;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcvw;-><init>(Z)V

    goto/16 :goto_2

    .line 2713
    :pswitch_74
    new-instance v2, Lcvx;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcvx;-><init>(Z)V

    goto/16 :goto_2

    .line 2716
    :pswitch_75
    new-instance v2, Lcuh;

    invoke-direct {v2}, Lcuh;-><init>()V

    goto/16 :goto_2

    .line 2719
    :pswitch_76
    new-instance v2, Lcvt;

    invoke-direct {v2}, Lcvt;-><init>()V

    goto/16 :goto_2

    .line 162
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcts;

    .line 163
    .restart local v2    # "viewHolder":Lcts;
    invoke-virtual {v2}, Lcts;->k()V

    .line 3437
    iget-object v3, v2, Lcts;->f:Landroid/widget/TextView;

    .line 3239
    if-eqz v3, :cond_4

    .line 3240
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 175
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 4058
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 202
    .restart local v14    # "currentL":J
    .restart local v18    # "isShowCreateTime":Z
    .restart local v25    # "preT":Ljava/lang/Long;
    .restart local v29    # "tmp":Lcom/alibaba/wukong/im/Message;
    :cond_1e
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 5416
    .end local v25    # "preT":Ljava/lang/Long;
    .end local v29    # "tmp":Lcom/alibaba/wukong/im/Message;
    :cond_1f
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v4

    const-wide/16 v8, 0x12c

    cmp-long v3, v4, v8

    if-nez v3, :cond_20

    const/4 v3, 0x1

    .line 211
    :goto_c
    if-eqz v3, :cond_21

    .line 5517
    iget-object v3, v2, Lcts;->h:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 5519
    iget-object v3, v2, Lcts;->h:Landroid/view/View;

    sget v4, Lctk$f;->tv_msg_start_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5520
    iget-object v3, v2, Lcts;->h:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 5416
    :cond_20
    const/4 v3, 0x0

    goto :goto_c

    .line 215
    :cond_21
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcts;->c(Z)V

    goto/16 :goto_7

    .line 6458
    :cond_22
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6459
    iget-object v3, v2, Lcts;->g:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 6460
    iget-object v3, v2, Lcts;->g:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 8379
    :cond_23
    invoke-static {v6}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 8380
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->allReceiversRead()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_24

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    :cond_24
    const/4 v3, 0x1

    .line 8381
    :goto_d
    if-nez v3, :cond_2c

    .line 8384
    const/4 v3, 0x0

    .line 8279
    :goto_e
    if-eqz v3, :cond_f

    .line 8281
    invoke-static {v6}, Ldjz;->e(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;JJZ)Ldjz$a;

    goto/16 :goto_9

    .line 8380
    :cond_25
    const/4 v3, 0x0

    goto :goto_d

    .line 8386
    :cond_26
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v3, v4, :cond_28

    .line 8387
    :cond_27
    sget-object v3, Ldjz;->c:Landroid/os/Handler;

    new-instance v4, Ldjz$5;

    invoke-direct {v4, v5, v6}, Ldjz$5;-><init>(Ldjz;Lcom/alibaba/wukong/im/Message;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8396
    :cond_28
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v3, v4, :cond_29

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v3

    if-nez v3, :cond_29

    .line 8397
    invoke-static {v6}, Ldkc;->x(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v3

    .line 8398
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 8399
    const/4 v3, 0x0

    goto :goto_e

    .line 8403
    :cond_29
    invoke-virtual {v5, v6}, Ldjz;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 8404
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, v5, Ldjz;->a:Ljava/util/Map;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 8405
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2a

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xfc

    if-ne v3, v4, :cond_2f

    .line 8406
    :cond_2a
    const/4 v3, 0x0

    .line 8407
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 8408
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "readTime"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8410
    :cond_2b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 8411
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 8412
    const-string/jumbo v4, "readTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8413
    invoke-interface {v6, v3}, Lcom/alibaba/wukong/im/Message;->updateLocalExtras(Ljava/util/Map;)V

    .line 8434
    :cond_2c
    :goto_f
    const/4 v3, 0x1

    goto/16 :goto_e

    .line 8416
    :cond_2d
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 8417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v7, v10, v8

    .line 8418
    invoke-static {v6}, Ldjz;->e(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v10

    cmp-long v3, v7, v10

    if-gez v3, :cond_2e

    .line 8419
    const-wide/16 v9, 0x3e8

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Ldjz;->a(Lcom/alibaba/wukong/im/Message;JJZ)Ldjz$a;

    .line 8420
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 8422
    :cond_2e
    invoke-virtual {v5, v6}, Ldjz;->d(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_f

    .line 8428
    :cond_2f
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v5, Ldjz;->a:Ljava/util/Map;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-static {v6}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 8432
    :cond_30
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 257
    .restart local v13    # "countDownText":Ljava/lang/String;
    .restart local v22    # "minute":J
    .restart local v26    # "second":J
    .restart local v28    # "timer":Ldjz$a;
    :cond_31
    const-wide/16 v4, 0x0

    cmp-long v3, v26, v4

    if-eqz v3, :cond_12

    .line 258
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    .end local v13    # "countDownText":Ljava/lang/String;
    .end local v22    # "minute":J
    .end local v26    # "second":J
    .end local v28    # "timer":Ldjz$a;
    :cond_32
    move-object v3, v2

    .line 273
    check-cast v3, Lcxr;

    const/4 v4, 0x0

    .line 10261
    iput-boolean v4, v3, Lcxr;->a:Z

    goto/16 :goto_b

    .line 2032
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 372
    sget v0, Lcug;->r:I

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0}, Lcqr;->notifyDataSetChanged()V

    .line 400
    return-void
.end method
