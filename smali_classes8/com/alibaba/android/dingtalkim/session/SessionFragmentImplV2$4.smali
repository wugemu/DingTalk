.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 36
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 1170
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v30, "STATISTICS"

    invoke-static/range {v30 .. v30}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1171
    .local v23, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v30, "chat_load"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 1172
    const-string/jumbo v30, "DD"

    const-string/jumbo v31, "chat_load"

    const-string/jumbo v32, "totalTime"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "click(\u4f1a\u8bdd\u5217\u8868\uff0d\u804a\u5929\u754c\u9762) start :"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->h(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v30

    sub-int v14, p3, v30

    .line 1177
    .local v14, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f()Ljava/util/ArrayList;

    move-result-object v30

    if-nez v30, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    if-ltz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f()Ljava/util/ArrayList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v14, v0, :cond_0

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1182
    .local v19, "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    .line 1185
    move-object/from16 v0, v19

    iget v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    move/from16 v30, v0

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 1186
    new-instance v7, Lcom/alibaba/wukong/im/category/CategoryObject;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryType:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryIndex:I

    move/from16 v32, v0

    move-wide/from16 v0, v30

    move/from16 v2, v32

    invoke-direct {v7, v0, v1, v2}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>(JI)V

    .line 1187
    .local v7, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryTitle:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    const-string/jumbo v30, ""

    :goto_1
    move-object/from16 v0, v30

    iput-object v0, v7, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v0, v7}, Ldde;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/category/CategoryObject;)V

    goto :goto_0

    .line 1187
    :cond_2
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->categoryTitle:Ljava/lang/String;

    move-object/from16 v30, v0

    goto :goto_1

    .line 1191
    .end local v7    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 1194
    const/4 v6, 0x1

    .line 1195
    .local v6, "canClickOA":Z
    const-wide/16 v30, 0x7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_4

    .line 1196
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ldjl;->I(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    .line 1198
    :cond_4
    const/4 v5, 0x1

    .line 1199
    .local v5, "canClickChannel":Z
    const-wide/16 v30, 0xa

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_5

    .line 1200
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v30

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lddi;->e(Ljava/lang/String;)Z

    move-result v5

    .line 1202
    :cond_5
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v30

    sget-object v31, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1204
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v30

    if-eqz v30, :cond_8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v30

    const-string/jumbo v31, "kick_reason_type"

    invoke-interface/range {v30 .. v31}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_8

    .line 1206
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v30

    const-string/jumbo v31, "kick_reason_type"

    invoke-interface/range {v30 .. v31}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1207
    .local v25, "type":Ljava/lang/String;
    const-string/jumbo v30, "1"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    sget v31, Lctk$i;->dt_group_kicked_reason_desc_AT:I

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v34, v0

    sget v35, Lctk$i;->org_conv:I

    invoke-virtual/range {v34 .. v35}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v30 .. v32}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1217
    .end local v25    # "type":Ljava/lang/String;
    .local v10, "desc":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v10}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1209
    .end local v10    # "desc":Ljava/lang/String;
    .restart local v25    # "type":Ljava/lang/String;
    :cond_6
    const-string/jumbo v30, "2"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    sget v31, Lctk$i;->dt_group_kicked_reason_desc_AT:I

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v34, v0

    sget v35, Lctk$i;->dt_group_type_cooperative:I

    invoke-virtual/range {v34 .. v35}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v30 .. v32}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "desc":Ljava/lang/String;
    goto :goto_2

    .line 1212
    .end local v10    # "desc":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    sget v31, Lctk$i;->conversation_kickoff:I

    invoke-virtual/range {v30 .. v31}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1214
    .restart local v10    # "desc":Ljava/lang/String;
    goto :goto_2

    .line 1215
    .end local v10    # "desc":Ljava/lang/String;
    .end local v25    # "type":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    sget v31, Lctk$i;->conversation_kickoff:I

    invoke-virtual/range {v30 .. v31}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "desc":Ljava/lang/String;
    goto :goto_2

    .line 1218
    .end local v10    # "desc":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v30

    sget-object v31, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    sget v32, Lctk$i;->conversation_disband:I

    invoke-static/range {v30 .. v32}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;I)V

    goto/16 :goto_0

    .line 1220
    :cond_a
    if-nez v6, :cond_b

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    sget v32, Lctk$i;->conversation_org_kickoff:I

    invoke-static/range {v30 .. v32}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;I)V

    goto/16 :goto_0

    .line 1222
    :cond_b
    if-nez v5, :cond_c

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    sget v32, Lctk$i;->conversation_org_kickoff:I

    invoke-static/range {v30 .. v32}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;I)V

    goto/16 :goto_0

    .line 1225
    :cond_c
    const-string/jumbo v30, "chat_load"

    const-string/jumbo v31, "to_chatmsg_activity"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1229
    const-string/jumbo v27, "https://qr.dingtalk.com/page/conversation"

    .line 1230
    .local v27, "url":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v30

    if-eqz v30, :cond_d

    .line 1231
    const-string/jumbo v27, "https://qr.dingtalk.com/im/children_list.html"

    .line 1232
    const-string/jumbo v30, "NAVIGATOR"

    invoke-static/range {v30 .. v30}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->G:Landroid/app/Application;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_0

    .line 1243
    :cond_d
    const-wide/16 v30, 0x1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_e

    const-wide/16 v30, 0x6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1244
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_e

    const-wide/16 v30, 0x7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1245
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_e

    const-wide/16 v30, 0xa

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1246
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_e

    const-wide/16 v30, 0x13

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1247
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_e

    const-wide/16 v30, 0x17

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1248
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_e

    const-wide/16 v30, 0x14

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1249
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_29

    .line 1250
    :cond_e
    const-wide/16 v30, 0x13

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_f

    const-wide/16 v30, 0x14

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1251
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_10

    .line 1252
    :cond_f
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1254
    :cond_10
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ldyq;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 1255
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "sw_recruit_hr_agg_conversation"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1268
    :cond_11
    :goto_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ldzb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 1269
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "customer_conversation_list_clicked"

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1271
    :cond_12
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Libb;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 1272
    const-string/jumbo v27, "https://qr.dingtalk.com/conversation/conversation_secondary_list_internal"

    .line 1275
    :cond_13
    const/16 v18, 0x0

    .line 1277
    .local v18, "needConversationObj":Z
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    const-string/jumbo v31, "scheme"

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_14

    .line 1278
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    const-string/jumbo v31, "scheme"

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1279
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Libb;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-nez v30, :cond_14

    .line 1280
    const-string/jumbo v30, "1"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    const-string/jumbo v32, "need_combine"

    invoke-interface/range {v31 .. v32}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 1282
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    .line 1283
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v15

    .line 1284
    .local v15, "lastMsg":Lcom/alibaba/wukong/im/Message;
    if-eqz v15, :cond_14

    .line 1285
    const-string/jumbo v30, "param"

    move-object/from16 v0, v30

    invoke-interface {v15, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1286
    .local v20, "param":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_14

    .line 1287
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1295
    .end local v15    # "lastMsg":Lcom/alibaba/wukong/im/Message;
    .end local v20    # "param":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v30

    if-eqz v30, :cond_15

    .line 1296
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v30

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ldks;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-nez v30, :cond_15

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    .line 1297
    invoke-static/range {v30 .. v30}, Libb;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-nez v30, :cond_15

    .line 1298
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Message;->read()V

    .line 1301
    :cond_15
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 1303
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "chat_open_confrecord"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1305
    const/16 v18, 0x1

    .line 1307
    :cond_16
    const-string/jumbo v30, "https://qr.dingtalk.com/page/fileshelper"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 1308
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "document_assist_click"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1311
    const/16 v18, 0x1

    .line 1313
    :cond_17
    const-wide/16 v30, 0x7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_18

    .line 1314
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "oa_assist_click"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1317
    const/16 v18, 0x1

    .line 1320
    :cond_18
    const-wide/16 v30, 0x18

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_19

    .line 1322
    const/16 v18, 0x1

    .line 1325
    :cond_19
    const-wide/16 v30, 0xa

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_1a

    .line 1326
    const-string/jumbo v30, "STATISTICS"

    invoke-static/range {v30 .. v30}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "channel_assist_click"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1328
    const/16 v18, 0x1

    .line 1331
    :cond_1a
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 1332
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "friend_recommend_click"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1335
    const/16 v18, 0x1

    .line 1338
    :cond_1b
    const-string/jumbo v30, "https://qr.dingtalk.com/page/yunpan"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 1339
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "space_assist_click"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1341
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v30

    if-eqz v30, :cond_1c

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    move/from16 v30, v0

    if-eqz v30, :cond_1c

    .line 1342
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v16

    .line 1343
    .local v16, "latestExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v24

    check-cast v24, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 1345
    .local v24, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    if-eqz v16, :cond_1c

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-interface/range {v24 .. v24}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v16

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v9

    .line 1347
    .local v9, "dataStr":Ljava/lang/String;
    const-string/jumbo v30, "data"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1, v9}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1351
    .end local v9    # "dataStr":Ljava/lang/String;
    .end local v16    # "latestExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :cond_1c
    const/16 v18, 0x1

    .line 1353
    :cond_1d
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v30

    if-eqz v30, :cond_23

    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_23

    .line 1354
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "mail_assist_click"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1358
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v30

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcid;->b()Lchy;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lchy;->getCurrentUid()J

    move-result-wide v32

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(JLjava/lang/String;)V

    .line 1359
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;)V

    .line 1554
    .end local v18    # "needConversationObj":Z
    :cond_1e
    :goto_4
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_34

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->A(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    goto/16 :goto_0

    .line 1256
    :cond_1f
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ldyq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-eqz v30, :cond_20

    .line 1257
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "sw_recruit_stu_agg_conversation"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 1258
    :cond_20
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    .line 2059
    invoke-static/range {v30 .. v30}, Libb;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    .line 1258
    if-eqz v30, :cond_21

    .line 1259
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1260
    .local v17, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v30, "cid"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "sw_recruit_hr_recom_conversation"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 1262
    .end local v17    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_21
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    .line 2086
    if-eqz v30, :cond_22

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v30

    const-wide/16 v32, 0x14

    cmp-long v30, v30, v32

    if-nez v30, :cond_22

    const/16 v30, 0x1

    .line 1262
    :goto_5
    if-eqz v30, :cond_11

    .line 1263
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1264
    .restart local v17    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v30, "cid"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "sw_recruit_stu_recom_conversation"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 2086
    .end local v17    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_22
    const/16 v30, 0x0

    goto :goto_5

    .line 1361
    .restart local v18    # "needConversationObj":Z
    :cond_23
    move/from16 v12, v18

    .line 1364
    .local v12, "finalNeedConversationObj":Z
    const-string/jumbo v30, "https://qr.dingtalk.com/page/conversation"

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_24

    const-wide/16 v30, 0xa

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1365
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_24

    .line 1366
    const-string/jumbo v27, "https://qr.dingtalk.com/page/channel"

    .line 1368
    :cond_24
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1370
    .local v13, "finalUrl":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Libb;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-eqz v30, :cond_25

    .line 1371
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v30

    if-nez v30, :cond_25

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->A(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    goto/16 :goto_0

    .line 1375
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->B(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z

    move-result v30

    if-nez v30, :cond_26

    const-string/jumbo v30, "https://qr.dingtalk.com/page/conversation"

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_27

    .line 1376
    :cond_26
    const-string/jumbo v30, "NAVIGATOR"

    invoke-static/range {v30 .. v30}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v30

    new-instance v31, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$2;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$2;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;ZLjava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v0, v13, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_4

    .line 1392
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v30, v0

    if-eqz v30, :cond_1e

    .line 1393
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1394
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v30, "conversation_id"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    if-eqz v12, :cond_28

    .line 1396
    const-string/jumbo v30, "conversation"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1398
    :cond_28
    const-string/jumbo v30, "im_navigator_from"

    const-string/jumbo v31, "maipage_msg_list"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1399
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v30

    check-cast v30, Landroid/app/Activity;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 1405
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v12    # "finalNeedConversationObj":Z
    .end local v13    # "finalUrl":Ljava/lang/String;
    .end local v18    # "needConversationObj":Z
    :cond_29
    const-wide/16 v30, 0x2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2a

    const-wide/16 v30, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1406
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2a

    const-wide/16 v30, 0xd

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1407
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2a

    const-wide/16 v30, 0x9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1408
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2a

    const-wide/16 v30, 0xc

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1409
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2a

    const-wide/16 v30, 0x5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1410
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2a

    const-wide/16 v30, 0x18

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1411
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2a

    const-wide/16 v30, 0x15

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1412
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2a

    const-wide/16 v30, 0x10

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1413
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_30

    .line 1415
    :cond_2a
    const-wide/16 v30, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2b

    const-wide/16 v30, 0xd

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2b

    const-wide/16 v30, 0x2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2b

    const-wide/16 v30, 0xc

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1416
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2b

    const-wide/16 v30, 0x9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    .line 1417
    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_2c

    .line 1418
    :cond_2b
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2f

    .line 1419
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1420
    .local v22, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v30, "cid"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "chat_open_single_chat"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1430
    .end local v22    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2c
    :goto_6
    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1431
    .local v8, "cvs":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v8, :cond_2d

    const-wide/16 v30, 0x10

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_2d

    .line 1432
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "retail_im_msglist_detailclick"

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 3032
    :cond_2d
    invoke-static {v8}, Libb;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    .line 1436
    if-eqz v30, :cond_2e

    .line 1437
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "customer_conversation_clicked"

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1440
    :cond_2e
    const-string/jumbo v27, "https://qr.dingtalk.com/page/conversation"

    .line 1441
    const-string/jumbo v30, "NAVIGATOR"

    invoke-static/range {v30 .. v30}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v30

    new-instance v31, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$3;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$3;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1455
    const-wide/16 v30, 0x5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_1e

    .line 1457
    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v28

    .line 1458
    .local v28, "uid":J
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1459
    .restart local v22    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v30, "pub_id"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "ding_assist_msg_open"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1462
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1463
    .local v21, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v30, "id"

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "conversation_assist_click"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1468
    .end local v21    # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28    # "uid":J
    :catch_0
    move-exception v11

    .line 1469
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1423
    .end local v8    # "cvs":Lcom/alibaba/wukong/im/Conversation;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2f
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2c

    .line 1424
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1425
    .restart local v22    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v30, "cid"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "chat_open_conversation"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 1473
    .end local v22    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_30
    const-wide/16 v30, 0x4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_32

    .line 1476
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "chat_bathhouse_click"

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1478
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1479
    .restart local v22    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v30, "cid"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v30

    const-string/jumbo v31, "SessionFragment"

    const-string/jumbo v32, "chat_open_single_chat"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1482
    const-string/jumbo v27, "https://qr.dingtalk.com/page/conversation"

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    move/from16 v30, v0

    if-eqz v30, :cond_31

    .line 1485
    const-string/jumbo v30, "NAVIGATOR"

    invoke-static/range {v30 .. v30}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->G:Landroid/app/Application;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$4;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$4;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_4

    .line 1499
    :cond_31
    move-object/from16 v26, v27

    .line 1500
    .local v26, "u":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v30

    new-instance v31, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_4

    .line 1535
    .end local v22    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "u":Ljava/lang/String;
    :cond_32
    const-wide/16 v30, 0x8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_33

    .line 1536
    const-string/jumbo v27, "https://qr.dingtalk.com/page/conversation"

    .line 1537
    const-string/jumbo v30, "NAVIGATOR"

    invoke-static/range {v30 .. v30}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->G:Landroid/app/Application;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$6;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$6;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_4

    .line 1551
    :cond_33
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 1558
    :cond_34
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v30

    if-lez v30, :cond_35

    .line 1559
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v30

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ldks;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-nez v30, :cond_35

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    .line 1560
    invoke-static/range {v30 .. v30}, Libb;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v30

    if-nez v30, :cond_35

    .line 1561
    const-string/jumbo v30, "https://qr.dingtalk.com/page/conversation"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_35

    .line 1562
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1566
    :cond_35
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->hasUnreadAtMeMessage()Z

    move-result v30

    if-eqz v30, :cond_36

    .line 1567
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lcom/alibaba/wukong/im/Conversation;->updateAtMeStatus(Z)V

    .line 1569
    :cond_36
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v30

    if-eqz v30, :cond_37

    .line 1570
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v30

    const-string/jumbo v31, "at_uid"

    invoke-interface/range {v30 .. v31}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    invoke-static {}, Ldbq;->a()Ldbq;

    move-result-object v30

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ldbq;->a(Ljava/lang/String;)V

    .line 1574
    :cond_37
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v30

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
