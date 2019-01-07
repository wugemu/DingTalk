.class public Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;
.super Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;
.source "FestivalRedPacketSendActivity.java"

# interfaces
.implements Lcbj$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;

.field private k:Landroid/webkit/WebView;

.field private l:Lcom/alibaba/wukong/im/Conversation;

.field private m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

.field private n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

.field private o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Lcbj$a;

.field private t:D

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->r:I

    .line 130
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->w:Landroid/os/Handler;

    .line 804
    return-void
.end method

.method private a(I)V
    .locals 23
    .param p1, "senderPayType"    # I

    .prologue
    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->setEnabled(Z)V

    .line 584
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->k:Landroid/webkit/WebView;

    if-nez v4, :cond_2

    .line 585
    new-instance v4, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->k:Landroid/webkit/WebView;

    .line 588
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->onResume()V

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_1
    sget v4, Lcaj$f;->redpackets_processing:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->showLoadingDialog(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v11

    .line 597
    .local v11, "cid":Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 598
    .local v13, "oid":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v8, 0x2

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v5, "id"

    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v5, "id"

    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 605
    :cond_3
    :goto_2
    invoke-static {}, Lcbr;->a()Lcbr;

    move-result-object v4

    invoke-virtual {v4}, Lcbr;->b()Ljava/lang/String;

    move-result-object v6

    .line 606
    .local v6, "clusterId":Ljava/lang/String;
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$7;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Ljava/lang/String;)V

    const-class v7, Lcma;

    move-object/from16 v0, p0

    invoke-interface {v4, v5, v7, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcma;

    .line 720
    .local v20, "apiEventListener":Lcma;
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v4

    .line 721
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->t:D

    .line 723
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->q:I

    .line 724
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->r:I

    .line 726
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->u:Ljava/lang/String;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    .line 7829
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->v:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 7830
    invoke-static {}, Lcbg;->a()Lcbg;

    invoke-static {}, Lcbg;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v18

    .line 7834
    :goto_3
    if-nez v18, :cond_6

    .line 7836
    const/16 v18, 0x0

    :goto_4
    move/from16 v19, p1

    .line 720
    invoke-virtual/range {v4 .. v20}, Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLcbe;JLjava/lang/String;ILcma;)V

    goto/16 :goto_0

    .line 590
    .end local v6    # "clusterId":Ljava/lang/String;
    .end local v11    # "cid":Ljava/lang/String;
    .end local v13    # "oid":J
    .end local v20    # "apiEventListener":Lcma;
    :catch_0
    move-exception v21

    .line 591
    .local v21, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "redpackets"

    const-string/jumbo v5, "festival redpacket send"

    const-string/jumbo v7, "webview resume exception"

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 601
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v11    # "cid":Ljava/lang/String;
    .restart local v13    # "oid":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v5, "orgId"

    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v5, "orgId"

    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto/16 :goto_2

    .line 7832
    .restart local v6    # "clusterId":Ljava/lang/String;
    .restart local v20    # "apiEventListener":Lcma;
    :cond_5
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v18

    goto :goto_3

    .line 7838
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 7839
    const/16 v18, 0x0

    goto :goto_4

    .line 7841
    :cond_7
    new-instance v19, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    invoke-direct/range {v19 .. v19}, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;-><init>()V

    .line 7842
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageMediaId:Ljava/lang/String;

    .line 7843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 7844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->themeId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->themeId:Ljava/lang/String;

    .line 7845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->msgBg:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->bgMediaId:Ljava/lang/String;

    .line 7847
    :cond_8
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageName:Ljava/lang/String;

    .line 7848
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 7849
    const-string/jumbo v18, "red_packet_bomb"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->type:Ljava/lang/String;

    .line 7851
    :cond_9
    new-instance v18, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;-><init>()V

    .line 7852
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    .line 7853
    new-instance v19, Lcom/google/gson/GsonBuilder;

    invoke-direct/range {v19 .. v19}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 7854
    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v19

    .line 7855
    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v19

    .line 7856
    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v19

    .line 7857
    const-class v22, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 91
    .line 8738
    if-eqz p1, :cond_1

    .line 8739
    new-instance v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    invoke-direct {v7}, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;-><init>()V

    .line 8740
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    .line 8741
    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    iput v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    .line 8742
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    .line 8743
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->amount:Ljava/lang/String;

    .line 8744
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    iput-wide v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    .line 8745
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->orgId:Ljava/lang/String;

    .line 8746
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->oid:J

    invoke-static {v0, v1}, Lcbw;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->orgName:Ljava/lang/String;

    .line 8747
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    .line 8748
    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    iput v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    .line 8749
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    if-eqz v0, :cond_0

    .line 8750
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageMediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    .line 8751
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->themeId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->themeId:Ljava/lang/String;

    .line 8752
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->bgMediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->bgMediaId:Ljava/lang/String;

    .line 8753
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->ext:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObjectExt;->festivalRedPacket:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsMessageBodyExt;->packageName:Ljava/lang/String;

    iput-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    .line 8756
    :cond_0
    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8757
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x389

    const/16 v2, 0x389

    const-string/jumbo v3, "url"

    const-wide/16 v4, 0x0

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    .line 8765
    :goto_0
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 8766
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 8768
    const-string/jumbo v0, "clusterId"

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8771
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v1

    .line 8772
    const/4 v0, 0x0

    .line 8773
    if-eqz v1, :cond_8

    instance-of v1, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;

    if-eqz v1, :cond_8

    .line 8774
    const-string/jumbo v0, "festival_type"

    const-string/jumbo v1, "red_packet_bomb"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8775
    const-string/jumbo v0, "wua"

    invoke-static {}, Lcbt;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8776
    const-string/jumbo v0, "umidToken"

    invoke-static {}, Lcbt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8777
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$a;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$a;-><init>(Ljava/lang/String;)V

    .line 8778
    const-string/jumbo v1, "redpackets"

    const-string/jumbo v4, "red_bomb"

    const-string/jumbo v5, "send red bomb"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 8781
    :goto_1
    new-instance v4, Lcom/alibaba/wukong/im/MessageSendInfo;

    invoke-direct {v4}, Lcom/alibaba/wukong/im/MessageSendInfo;-><init>()V

    .line 8782
    iput v9, v4, Lcom/alibaba/wukong/im/MessageSendInfo;->priority:I

    .line 8783
    iput-object v3, v4, Lcom/alibaba/wukong/im/MessageSendInfo;->extension:Ljava/util/Map;

    .line 8784
    new-instance v3, Lcom/alibaba/wukong/im/XPNInfo;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/XPNInfo;-><init>()V

    .line 8785
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v2, v4}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageSendInfo;)Lcom/alibaba/wukong/im/Message;

    .line 8786
    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 8787
    iget-object v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8788
    new-array v0, v12, [Ljava/lang/String;

    iget-object v4, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    aput-object v4, v0, v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    const-string/jumbo v4, ":"

    aput-object v4, v0, v8

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v11

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    .line 8797
    :goto_2
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v4, "send"

    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v6, "redpackets msg send clid "

    aput-object v6, v5, v10

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, " cid "

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->cid:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8798
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/im/Message;

    .line 8799
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2, v0, v1}, Lcom/alibaba/wukong/im/Message;->passSendTo(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    .line 8800
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->finish()V

    .line 91
    :cond_1
    return-void

    .line 8758
    :cond_2
    iget v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    if-ne v0, v8, :cond_3

    .line 8759
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x384

    const/16 v2, 0x384

    const-string/jumbo v3, "url"

    const-wide/16 v4, 0x0

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 8760
    :cond_3
    iget v0, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->type:I

    if-nez v0, :cond_4

    .line 8761
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x385

    const/16 v2, 0x385

    const-string/jumbo v3, "url"

    const-wide/16 v4, 0x0

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 8763
    :cond_4
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/16 v1, 0x386

    const/16 v2, 0x386

    const-string/jumbo v3, "url"

    const-wide/16 v4, 0x0

    invoke-static {v7}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 8790
    :cond_5
    new-array v0, v12, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcaj$f;->dt_session_list_festival_red_packet_prefix:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    const-string/jumbo v4, ":"

    aput-object v4, v0, v8

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v11

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto/16 :goto_2

    .line 8792
    :cond_6
    iget v0, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    if-ne v0, v8, :cond_7

    .line 8793
    new-array v0, v12, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcaj$f;->repackets_enterprise:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    const-string/jumbo v4, ":"

    aput-object v4, v0, v8

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v11

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto/16 :goto_2

    .line 8795
    :cond_7
    new-array v0, v12, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcaj$f;->repackets_xpn_normal:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    const-string/jumbo v4, ":"

    aput-object v4, v0, v8

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v11

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .prologue
    .line 91
    .line 8262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8263
    const-string/jumbo v1, "newResult"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8264
    if-eqz p2, :cond_0

    .line 8265
    const-string/jumbo v1, "cluster"

    iget-object v2, p2, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8267
    :cond_0
    const-string/jumbo v1, "desc"

    const-string/jumbo v2, "\u652f\u4ed8\u5b9d\u9a8c\u7b7e\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8268
    new-instance v1, Lhzu;

    invoke-direct {v1}, Lhzu;-><init>()V

    .line 8269
    const-string/jumbo v2, "redpackets"

    iput-object v2, v1, Lhzu;->a:Ljava/lang/String;

    .line 8270
    iput-object v0, v1, Lhzu;->b:Ljava/util/Map;

    .line 8271
    const/16 v0, 0x44d

    iput v0, v1, Lhzu;->c:I

    .line 8272
    const-string/jumbo v0, "\u53d1\u7ea2\u5305\u5931\u8d25"

    iput-object v0, v1, Lhzu;->d:Ljava/lang/String;

    .line 8273
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhzr;->a(Lhzu;)V

    .line 91
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    .prologue
    const/4 v0, 0x0

    .line 91
    .line 9563
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->t:D

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 9564
    sget v1, Lcaj$f;->redpackets_minest_limit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 9565
    const-string/jumbo v1, "redpackets"

    const-string/jumbo v2, "festival redpacket send"

    const-string/jumbo v3, "amount too small"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9557
    :goto_0
    if-eqz v0, :cond_0

    .line 9558
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->s:Lcbj$a;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->t:D

    invoke-interface {v0, v2, v3}, Lcbj$a;->a(D)V

    .line 91
    :cond_0
    return-void

    .line 9568
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->t:D

    const-wide v4, 0x41086a0000000000L    # 200000.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    .line 9569
    sget v1, Lcaj$f;->redpackest_max_money:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 9570
    const-string/jumbo v1, "redpackets"

    const-string/jumbo v2, "festival redpacket send"

    const-string/jumbo v3, "amount too big"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9573
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;

    return-object v0
.end method

.method private c()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 447
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    if-nez v6, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v6

    if-ne v6, v12, :cond_9

    .line 452
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    iget-object v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;->chatTexts:[Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    .line 6084
    if-eqz v4, :cond_2

    array-length v6, v4

    if-nez v6, :cond_4

    .line 452
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    .line 453
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    if-eqz v3, :cond_0

    .line 454
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    iget-object v3, v3, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;->price:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 456
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    iget-object v3, v3, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;->price:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->t:D

    .line 457
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    iget-object v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;->price:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    iget-object v3, v3, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 464
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    iget-object v3, v3, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;->text:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->u:Ljava/lang/String;

    .line 465
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->o:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;

    iget-object v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6087
    :cond_4
    array-length v3, v4

    if-ne v3, v12, :cond_5

    .line 6088
    aget-object v3, v4, v13

    goto :goto_1

    .line 6090
    :cond_5
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 6091
    array-length v6, v4

    invoke-virtual {v3, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v6

    .line 6092
    if-eqz v5, :cond_6

    iget-object v7, v5, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;->price:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 6093
    :cond_6
    aget-object v3, v4, v6

    goto :goto_1

    .line 6095
    :cond_7
    aget-object v7, v4, v6

    if-eqz v7, :cond_8

    iget-object v5, v5, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;->price:Ljava/lang/String;

    aget-object v7, v4, v6

    iget-object v7, v7, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsChatText;->price:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 6096
    aget-object v3, v4, v6

    goto :goto_1

    .line 6098
    :cond_8
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 6099
    add-int/2addr v3, v6

    array-length v5, v4

    rem-int/2addr v3, v5

    aget-object v3, v4, v3

    goto :goto_1

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 460
    const-string/jumbo v3, "redpackets"

    const-string/jumbo v4, "festival redpacket send"

    const-string/jumbo v5, "amount invalidate"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 470
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;->groupPrices:[Ljava/lang/String;

    iget-wide v8, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->t:D

    .line 7047
    if-eqz v6, :cond_a

    array-length v7, v6

    if-nez v7, :cond_d

    :cond_a
    move-wide v0, v4

    .line 471
    .local v0, "amount":D
    :goto_3
    cmpl-double v4, v0, v4

    if-lez v4, :cond_b

    .line 472
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->t:D

    .line 473
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->d:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :cond_b
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    iget-object v4, v4, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;->groupTexts:[Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->p:Ljava/lang/String;

    .line 7104
    if-eqz v4, :cond_c

    array-length v6, v4

    if-nez v6, :cond_10

    .line 475
    :cond_c
    :goto_4
    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->p:Ljava/lang/String;

    .line 476
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->p:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 477
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->u:Ljava/lang/String;

    .line 478
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7050
    .end local v0    # "amount":D
    :cond_d
    array-length v7, v6

    if-ne v7, v12, :cond_e

    .line 7051
    aget-object v6, v6, v13

    invoke-static {v6}, Lcbu;->a(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_3

    .line 7053
    :cond_e
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 7054
    array-length v10, v6

    invoke-virtual {v7, v10}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v10

    .line 7055
    aget-object v11, v6, v10

    if-eqz v11, :cond_f

    aget-object v11, v6, v10

    invoke-static {v11, v8, v9}, Lcbu;->a(Ljava/lang/String;D)Z

    move-result v8

    if-nez v8, :cond_f

    .line 7056
    aget-object v6, v6, v10

    invoke-static {v6}, Lcbu;->a(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_3

    .line 7058
    :cond_f
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 7059
    add-int/2addr v7, v10

    array-length v8, v6

    rem-int/2addr v7, v8

    aget-object v6, v6, v7

    invoke-static {v6}, Lcbu;->a(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_3

    .line 7107
    .restart local v0    # "amount":D
    :cond_10
    array-length v3, v4

    if-ne v3, v12, :cond_11

    .line 7108
    aget-object v3, v4, v13

    goto :goto_4

    .line 7110
    :cond_11
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 7111
    array-length v6, v4

    invoke-virtual {v3, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v6

    .line 7112
    aget-object v7, v4, v6

    if-eqz v7, :cond_12

    aget-object v7, v4, v6

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 7113
    aget-object v3, v4, v6

    goto :goto_4

    .line 7115
    :cond_12
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 7116
    add-int/2addr v3, v6

    array-length v5, v4

    rem-int/2addr v3, v5

    aget-object v3, v4, v3

    goto/16 :goto_4
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->w:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(D)V
    .locals 1
    .param p1, "payMoney"    # D

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a(I)V

    .line 341
    return-void
.end method

.method public final a(IDD)V
    .locals 8
    .param p1, "payMethod"    # I
    .param p2, "payMoney"    # D
    .param p4, "quota"    # D

    .prologue
    .line 290
    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;

    invoke-direct {v3, p1, p0}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;-><init>(ILandroid/content/Context;)V

    .line 4066
    .local v3, "payDialog":Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;
    iput-wide p2, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->d:D

    .line 293
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5062
    iput-wide p4, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->c:D

    .line 297
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;

    move-object v2, p0

    move-wide v4, p4

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;DD)V

    .line 6054
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->b:Landroid/view/View$OnClickListener;

    .line 321
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$3;

    invoke-direct {v0, p0, v3, p1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;I)V

    .line 6058
    iput-object v0, v3, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->a:Landroid/view/View$OnClickListener;

    .line 335
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/redpackets/dialog/BalancePayDialog;->show()V

    .line 336
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->dismissLoadingDialog()V

    .line 351
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 355
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->s:Lcbj$a;

    invoke-interface {v0, p2}, Lcbj$a;->a(I)V

    .line 358
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 279
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    sget v0, Lcaj$e;->activity_send_festival_redpackets:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->setContentView(I)V

    .line 1361
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1362
    const-string/jumbo v0, "params invalidate"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->finish()V

    move v0, v5

    .line 281
    :goto_0
    if-eqz v0, :cond_5

    .line 1378
    sget v0, Lcaj$d;->ll_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a:Landroid/widget/LinearLayout;

    .line 1379
    sget v0, Lcaj$d;->btn_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->b:Landroid/widget/TextView;

    .line 1380
    sget v0, Lcaj$d;->iv_main_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->c:Landroid/widget/ImageView;

    .line 1381
    sget v0, Lcaj$d;->tv_amount:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->d:Landroid/widget/TextView;

    .line 1382
    sget v0, Lcaj$d;->ll_random_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->e:Landroid/widget/LinearLayout;

    .line 1383
    sget v0, Lcaj$d;->tv_random_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->f:Landroid/widget/TextView;

    .line 1384
    sget v0, Lcaj$d;->tv_bless_word:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->g:Landroid/widget/TextView;

    .line 1385
    sget v0, Lcaj$d;->tv_change_amount:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->h:Landroid/widget/TextView;

    .line 1386
    sget v0, Lcaj$d;->iv_bottom_bg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->i:Landroid/widget/ImageView;

    .line 1387
    sget v0, Lcaj$d;->iv_send:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;

    .line 1389
    new-instance v0, Lcbl;

    invoke-direct {v0, p0, p0}, Lcbl;-><init>(Lcbj$b;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->s:Lcbj$a;

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1399
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$5;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1406
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$6;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1423
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v8, :cond_8

    .line 1425
    iput v8, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->r:I

    .line 1433
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    if-eqz v0, :cond_4

    .line 1436
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;->themes:[Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    .line 2064
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_9

    :cond_0
    move-object v0, v3

    .line 1436
    :goto_2
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    .line 1437
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    if-eqz v0, :cond_4

    .line 1440
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->bgImg:Ljava/lang/String;

    .line 2502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2505
    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2506
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2510
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->a:Landroid/widget/LinearLayout;

    const/16 v4, 0x15

    move v6, v5

    move-object v7, v3

    .line 2511
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->main:Ljava/lang/String;

    .line 2515
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2518
    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2519
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2522
    const-string/jumbo v0, "gif"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2523
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->c:Landroid/widget/ImageView;

    const/4 v4, 0x2

    move v6, v5

    move-object v7, v3

    .line 2524
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1442
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->cover:Ljava/lang/String;

    .line 2532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2535
    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2536
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2539
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->i:Landroid/widget/ImageView;

    .line 2540
    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1443
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->n:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->seal:Ljava/lang/String;

    .line 2544
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2547
    invoke-static {v0}, Lcbw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2548
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2552
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorImageView;

    move v4, v9

    move v6, v5

    move-object v7, v3

    .line 2553
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1418
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->c()V

    .line 3484
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    if-eqz v0, :cond_5

    .line 3487
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v8, :cond_f

    .line 3489
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3490
    iput v8, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->q:I

    :cond_5
    :goto_4
    return-void

    .line 1366
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    .line 1367
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_7

    .line 1368
    const-string/jumbo v0, "params invalidate"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->finish()V

    move v0, v5

    .line 1370
    goto/16 :goto_0

    .line 1372
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_festival_redpacket_resource"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->m:Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    .line 1373
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_birthday"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->v:Z

    move v0, v8

    .line 1374
    goto/16 :goto_0

    .line 1428
    :cond_8
    iput v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->r:I

    goto/16 :goto_1

    .line 2067
    :cond_9
    array-length v2, v0

    if-ne v2, v8, :cond_a

    .line 2068
    aget-object v0, v0, v5

    goto/16 :goto_2

    .line 2070
    :cond_a
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 2071
    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    .line 2072
    if-eqz v1, :cond_b

    iget-object v6, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->themeId:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 2073
    :cond_b
    aget-object v0, v0, v4

    goto/16 :goto_2

    .line 2075
    :cond_c
    aget-object v6, v0, v4

    if-eqz v6, :cond_d

    iget-object v1, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->themeId:Ljava/lang/String;

    aget-object v6, v0, v4

    iget-object v6, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsTheme;->themeId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2076
    aget-object v0, v0, v4

    goto/16 :goto_2

    .line 2078
    :cond_d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2079
    add-int/2addr v1, v4

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto/16 :goto_2

    .line 2526
    :cond_e
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->c:Landroid/widget/ImageView;

    .line 2527
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_3

    .line 3493
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3494
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->l:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v0

    .line 3495
    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3496
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->f:Landroid/widget/TextView;

    sget v2, Lcaj$f;->dt_festival_redpacket_random_count_fmt:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3497
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->q:I

    goto/16 :goto_4
.end method

.method public final q_()V
    .locals 1

    .prologue
    .line 345
    sget v0, Lcaj$f;->redpackets_processing:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->showLoadingDialog(I)V

    .line 346
    return-void
.end method
