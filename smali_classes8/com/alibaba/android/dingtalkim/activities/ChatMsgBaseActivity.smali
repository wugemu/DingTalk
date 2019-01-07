.class public abstract Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ChatMsgBaseActivity.java"


# instance fields
.field protected A:Ldrk;

.field protected B:Ldjb;

.field protected C:Lcom/alibaba/wukong/im/Conversation;

.field protected D:Ljava/lang/String;

.field protected E:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected F:Ldru;

.field protected G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldms$a;",
            ">;"
        }
    .end annotation
.end field

.field protected H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field protected I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field protected J:J

.field protected K:Z

.field protected L:Ldnf;

.field protected M:Lldm;

.field protected N:Ldne;

.field protected O:Ldnw;

.field protected P:Ldxc;

.field protected Q:Ldmt;

.field protected R:Z

.field protected S:Lcom/alibaba/wukong/im/Message;

.field protected T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

.field protected U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field protected V:Lcug$a;

.field W:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field X:Ldnu$c;

.field Y:Landroid/view/GestureDetector;

.field private a:J

.field private b:Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/eventbus/AdapterCallback",
            "<",
            "Lcom/alibaba/wukong/Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field protected s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

.field protected t:Ldqq;

.field protected u:Lcug;

.field protected v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

.field protected w:Z

.field public x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field protected y:Lcro;

.field protected z:Lcrp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->w:Z

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->E:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->G:Ljava/util/List;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->R:Z

    .line 412
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->W:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a:J

    return-wide v0
.end method

.method private static a(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .locals 15
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "isKeyUid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 630
    .local p2, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    move-object v8, p0

    .line 662
    :cond_1
    :goto_0
    return-object v8

    .line 634
    :cond_2
    move-object v8, p0

    .line 636
    .local v8, "replaceText":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 637
    .local v2, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v10, "("

    invoke-virtual {v2, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 638
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 639
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v13, "@"

    aput-object v13, v12, v10

    const/4 v13, 0x1

    if-eqz p1, :cond_3

    .line 640
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    aput-object v10, v12, v13

    const/4 v10, 0x2

    const-string/jumbo v13, " "

    aput-object v13, v12, v10

    .line 639
    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 641
    .local v5, "key":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 642
    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 643
    const-string/jumbo v10, "|"

    invoke-virtual {v2, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 658
    .end local v2    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 659
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "im"

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "restoreAtUid failed, error="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 660
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 659
    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_2

    .line 645
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->delete(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 646
    const-string/jumbo v10, ")"

    invoke-virtual {v2, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 647
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 649
    .local v1, "atTextMatcher":Ljava/util/regex/Matcher;
    :goto_3
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 650
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 651
    .local v6, "piece":Ljava/lang/String;
    const-string/jumbo v10, "@"

    const-string/jumbo v11, ""

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, " "

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 652
    .local v9, "value":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 653
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "value":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 655
    .restart local v9    # "value":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "@"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 656
    .local v7, "replacePiece":Ljava/lang/String;
    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 657
    goto :goto_3
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->R:Z

    if-eqz v0, :cond_2

    sget v0, Lctk$i;->dt_conversation_autotranslate_input_placeholder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4154
    :goto_0
    iput-object v0, v1, Lcro;->h:Ljava/lang/CharSequence;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    if-eqz v0, :cond_1

    .line 332
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->R:Z

    if-eqz v0, :cond_3

    sget v0, Lctk$i;->dt_conversation_autotranslate_input_placeholder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5118
    :goto_1
    iput-object v0, v1, Lcrp;->g:Ljava/lang/CharSequence;

    .line 334
    :cond_1
    return-void

    .line 329
    :cond_2
    sget v0, Lctk$i;->chat_input_edit_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_3
    sget v0, Lctk$i;->chat_input_edit_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .param p1, "x1"    # J

    .prologue
    .line 79
    .line 10443
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 10444
    :cond_0
    :goto_0
    return-void

    .line 10446
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    if-eqz v0, :cond_2

    .line 10447
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->cancel()V

    .line 10448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 10450
    :cond_2
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;J)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    .line 10479
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->b:Lcom/alibaba/doraemon/eventbus/AdapterCallback;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->asInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 666
    .local p2, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 667
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 668
    if-eqz p2, :cond_0

    .line 669
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 671
    :cond_0
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 672
    .local v0, "spannableString":Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->append(Ljava/lang/CharSequence;)V

    .line 675
    .end local v0    # "spannableString":Landroid/text/SpannableString;
    :cond_1
    return-void
.end method

.method protected static am()I
    .locals 4

    .prologue
    .line 584
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_secret_chat"

    const-string/jumbo v3, "secret_chat_icon"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "iconSelect":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "1"

    .line 586
    :cond_0
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    sget v1, Lctk$i;->icon_secret_fill:I

    .line 597
    :goto_0
    return v1

    .line 590
    :cond_1
    sget v1, Lctk$i;->icon_bubble_smile_fi:I

    goto :goto_0

    .line 592
    :cond_2
    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 593
    sget v1, Lctk$i;->icon_glass_fill:I

    goto :goto_0

    .line 594
    :cond_3
    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    sget v1, Lctk$i;->icon_secretbubble_fill:I

    goto :goto_0

    .line 597
    :cond_4
    sget v1, Lctk$i;->icon_secret_fill:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Y:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method protected G()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 603
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Ldpu;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/util/List;)V

    .line 606
    :cond_0
    return-void
.end method

.method protected final L()Lcug$a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->V:Lcug$a;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->V:Lcug$a;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->V:Lcug$a;

    return-object v0
.end method

.method public final M()Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)V

    .line 1324
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$b;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    return-object v0
.end method

.method public final N()Ldrk;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->A:Ldrk;

    return-object v0
.end method

.method public final O()Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    return-object v0
.end method

.method public final P()Ldjb;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->B:Ldjb;

    return-object v0
.end method

.method public final Q()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 223
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldms$a;

    .line 225
    .local v0, "listener":Ldms$a;
    invoke-interface {v0}, Ldms$a;->onTimerTrigger()V

    goto :goto_0

    .line 228
    .end local v0    # "listener":Ldms$a;
    :cond_0
    return-void
.end method

.method public final R()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->w:Z

    return v0
.end method

.method public final S()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final T()Lcom/alibaba/wukong/im/Conversation;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method public final U()Ldru;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->F:Ldru;

    return-object v0
.end method

.method public final V()Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method public final W()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->H:Ljava/util/Map;

    return-object v0
.end method

.method public final X()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->I:Ljava/util/Map;

    return-object v0
.end method

.method public final Y()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->J:J

    return-wide v0
.end method

.method public final Z()Lcug;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->u:Lcug;

    return-object v0
.end method

.method protected a(Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;)V
    .locals 0
    .param p1, "vo"    # Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    .prologue
    .line 600
    return-void
.end method

.method public final a(Ldms$a;)V
    .locals 1
    .param p1, "listener"    # Ldms$a;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public abstract a(Ljava/lang/String;JZ)V
.end method

.method public final aa()Ldxc;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->P:Ldxc;

    return-object v0
.end method

.method public final ab()Ldne;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->N:Ldne;

    return-object v0
.end method

.method public final ac()Ldnw;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->O:Ldnw;

    return-object v0
.end method

.method public final ad()Lldm;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->M:Lldm;

    return-object v0
.end method

.method public final ae()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 292
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final af()Lcom/alibaba/wukong/im/Message;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->S:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method protected final ag()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    invoke-virtual {v0}, Lcro;->a()V

    .line 311
    :cond_0
    new-instance v0, Lcro;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-direct {v0, p0, v1}, Lcro;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    .line 312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    .line 3059
    iput-boolean v2, v0, Lcro;->b:Z

    .line 3060
    iput-boolean v3, v0, Lcro;->a:Z

    .line 3061
    iput-boolean v2, v0, Lcro;->c:Z

    .line 3062
    iput-boolean v2, v0, Lcro;->d:Z

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    invoke-virtual {v0}, Lcrp;->a()V

    .line 317
    :cond_1
    new-instance v0, Lcrp;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-direct {v0, p0, v1}, Lcrp;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    .line 318
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    .line 4060
    iput-boolean v2, v0, Lcrp;->c:Z

    .line 4061
    iput-boolean v3, v0, Lcrp;->b:Z

    .line 4062
    iput-boolean v2, v0, Lcrp;->d:Z

    .line 4063
    iput-boolean v2, v0, Lcrp;->e:Z

    .line 319
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a()V

    .line 320
    return-void
.end method

.method protected final ah()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    .line 5158
    iget-boolean v0, v0, Lcro;->i:Z

    .line 373
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->G()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    invoke-virtual {v0}, Lcro;->a()V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    .line 6147
    iget-boolean v0, v0, Lcrp;->h:Z

    .line 379
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->G()V

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    invoke-virtual {v0}, Lcrp;->a()V

    .line 384
    :cond_3
    return-void
.end method

.method protected final ai()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->y:Lcro;

    .line 6158
    iget-boolean v0, v0, Lcro;->i:Z

    .line 387
    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final aj()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->z:Lcrp;

    .line 7147
    iget-boolean v0, v0, Lcrp;->h:Z

    .line 394
    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final ak()V
    .locals 16

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 488
    .local v2, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-nez v2, :cond_1

    .line 8129
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-static {}, Ldfr;->a()Ldfr;

    invoke-static {v2}, Ldfr;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 492
    const-string/jumbo v7, "im"

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "applyChatBackgroundTheme failed due to has old group theme, cid="

    aput-object v9, v8, v11

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->an()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 492
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_2
    const-string/jumbo v7, "chatThemeId"

    invoke-interface {v2, v7}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v4

    .line 498
    .local v4, "themeId":J
    const-string/jumbo v7, "chatThemeVersion"

    invoke-interface {v2, v7}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ligb;->f(Ljava/lang/String;)I

    move-result v6

    .line 499
    .local v6, "themeVersion":I
    cmp-long v7, v4, v14

    if-gtz v7, :cond_3

    .line 501
    const-string/jumbo v7, "chatThemeId"

    invoke-interface {v2, v7}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v4

    .line 502
    const-string/jumbo v7, "chatThemeVersion"

    invoke-interface {v2, v7}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ligb;->f(Ljava/lang/String;)I

    move-result v6

    .line 505
    :cond_3
    const-string/jumbo v7, "im"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "applyChatBackgroundTheme themeId="

    aput-object v9, v8, v11

    .line 506
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    const-string/jumbo v9, " cid="

    aput-object v9, v8, v13

    const/4 v9, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->an()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    .line 505
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    cmp-long v7, v4, v14

    if-lez v7, :cond_4

    const-wide/16 v8, 0x1

    cmp-long v7, v4, v8

    if-nez v7, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    const-wide/16 v12, 0x1

    cmp-long v7, v8, v12

    if-eqz v7, :cond_5

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->recreate()V

    goto/16 :goto_0

    .line 514
    :cond_5
    const-wide/16 v8, 0x1

    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    cmp-long v7, v8, v4

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget v7, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->version:I

    if-ge v7, v6, :cond_0

    .line 523
    :cond_6
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)V

    .line 542
    .local v3, "listener":Lcma;
    const-class v7, Lcma;

    move-object/from16 v0, p0

    invoke-static {v3, v7, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "listener":Lcma;
    check-cast v3, Lcma;

    .line 543
    .restart local v3    # "listener":Lcma;
    invoke-static {}, Ldfr;->a()Ldfr;

    move-result-object v11

    .line 8095
    if-eqz v3, :cond_0

    .line 8098
    cmp-long v7, v4, v14

    if-gtz v7, :cond_7

    .line 8100
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lctk$i;->and_wukong_error_param_error:I

    .line 8101
    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 8102
    const-string/jumbo v8, "err_parameter"

    invoke-interface {v3, v8, v7}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8106
    :cond_7
    iget-object v7, v11, Ldfr;->a:Lfp;

    .line 9096
    invoke-virtual {v7, v4, v5, v10}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 8106
    check-cast v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 8107
    if-eqz v7, :cond_8

    iget v8, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->version:I

    if-lt v8, v6, :cond_8

    .line 8109
    invoke-interface {v3, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8113
    :cond_8
    invoke-static {v4, v5}, Ldfr;->a(J)Ljava/io/File;

    move-result-object v8

    .line 8114
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 8118
    :try_start_0
    new-instance v9, Lgxm;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v12}, Lgxm;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8119
    :try_start_1
    const-class v8, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 9232
    iget-object v10, v9, Lgxm;->a:Lgxr;

    .line 9655
    const/4 v12, 0x0

    invoke-virtual {v10, v8, v12}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 8119
    move-object v0, v8

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-object v7, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8124
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 8127
    :cond_9
    :goto_1
    if-eqz v7, :cond_a

    iget v8, v7, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->version:I

    if-lt v8, v6, :cond_a

    .line 8128
    invoke-interface {v3, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8120
    :catch_0
    move-exception v8

    move-object v9, v10

    .line 8121
    :goto_2
    :try_start_2
    const-string/jumbo v10, "im"

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "getTheme failed, error="

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 8122
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v14

    .line 8121
    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v12, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8124
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    move-object v9, v10

    :goto_3
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v7

    .line 8133
    :cond_a
    new-instance v7, Ldfr$1;

    invoke-direct {v7, v11, v3}, Ldfr$1;-><init>(Ldfr;Lcma;)V

    .line 8150
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v8

    invoke-virtual {v8}, Ldyn;->h()Ldfs;

    move-result-object v8

    invoke-interface {v8, v4, v5, v7}, Ldfs;->a(JLcma;)V

    goto/16 :goto_0

    .line 8124
    :catchall_1
    move-exception v7

    goto :goto_3

    .line 8120
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method protected final al()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 553
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 554
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-nez v0, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const-string/jumbo v2, "groupTheme"

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "themeId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    const-string/jumbo v2, "GroupTheme"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$8;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected an()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 621
    return-void
.end method

.method protected final b(Lcom/alibaba/wukong/im/Message;)V
    .locals 11
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 679
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 685
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 686
    .local v2, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v0, v5

    .line 687
    .local v0, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :goto_1
    instance-of v6, v2, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v6, :cond_3

    .line 688
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .end local v2    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4, v8, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "restoreText":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 686
    .end local v0    # "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v3    # "restoreText":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    .restart local v2    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    .line 691
    .restart local v0    # "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_3
    instance-of v6, v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v6, :cond_0

    .line 692
    invoke-static {p1}, Ldma;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    move-result-object v1

    .line 693
    .local v1, "markdownExtendDo":Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;
    if-eqz v1, :cond_0

    .line 697
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .end local v2    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v4

    .line 698
    .restart local v4    # "text":Ljava/lang/String;
    invoke-static {v4, v10, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    .line 699
    .restart local v3    # "restoreText":Ljava/lang/String;
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->originalCid:Ljava/lang/String;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v7

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 700
    const-string/jumbo v6, "im"

    new-array v7, v8, [Ljava/lang/String;

    const-string/jumbo v8, "reeditRecallMsg with different cid"

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 706
    :cond_4
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    iget-wide v8, v1, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->originalMsgId:J

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;

    invoke-direct {v5, p0, v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Ljava/lang/String;Ljava/util/HashMap;)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    invoke-static {v5, v7, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    invoke-interface {v6, v8, v9, v10, v5}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JZLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public final b(Ldms$a;)V
    .locals 1
    .param p1, "listener"    # Ldms$a;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5
    .param p1, "clusterid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Q:Ldmt;

    if-eqz v0, :cond_0

    .line 297
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "ChatMsgBaseActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "notifyRedPacketsByClick clusterid="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 298
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Q:Ldmt;

    .line 2139
    iget-object v0, v1, Ldmt;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2145
    :cond_0
    :goto_0
    return-void

    .line 2152
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Ldmt;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v1, Ldmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2153
    iget-object v0, v1, Ldmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 2154
    iget-object v3, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->clusterid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2144
    :goto_1
    if-eqz v0, :cond_4

    .line 2145
    invoke-static {}, Ldmx;->a()Ldmx;

    move-result-object v2

    iget-object v1, v1, Ldmt;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ldmx;->a(Ljava/lang/String;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V

    goto :goto_0

    .line 2160
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2147
    :cond_4
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "null"

    const-string/jumbo v2, "redPacketsPlanDo is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 0
    .param p1, "autoTransEnabled"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->R:Z

    .line 324
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a()V

    .line 325
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onStart()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->K:Z

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ak()V

    .line 140
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onStop()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->K:Z

    .line 146
    return-void
.end method

.method public abstract t()V
.end method

.method public w()V
    .locals 0

    .prologue
    .line 613
    return-void
.end method
