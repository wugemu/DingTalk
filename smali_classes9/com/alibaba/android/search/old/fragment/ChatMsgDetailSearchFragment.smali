.class public Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;
.super Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;
.source "ChatMsgDetailSearchFragment.java"


# static fields
.field public static final q:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field r:Ljava/lang/String;

.field public s:Z

.field public t:J

.field private v:Leqd;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lenx;

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->y:Ljava/util/HashMap;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->s:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->C:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Leqd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->v:Leqd;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->y:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->t:J

    return-wide v0
.end method

.method static synthetic e(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .prologue
    .line 38
    .line 2405
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2406
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lemt$f;->header_search_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2407
    sget v0, Lemt$e;->tv_search_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2408
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->r:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 2409
    sget v2, Lemt$g;->search_group_message:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2413
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 38
    :cond_0
    return-void

    .line 2411
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->B:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 93
    new-instance v0, Leoe;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "@"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CHAT_MSG_PER_CONV:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    .line 94
    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Leoe;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CHAT_MSG_PER_CONV:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    goto :goto_0
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$2;-><init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method


# virtual methods
.method public final a(Lenx;)V
    .locals 0
    .param p1, "listener"    # Lenx;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->x:Lenx;

    .line 213
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 402
    return-void
.end method

.method public final a(Ljava/lang/String;JLjava/util/List;)V
    .locals 14
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p4, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->h:Ljava/lang/String;

    .line 102
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->t:J

    .line 103
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->l()V

    .line 136
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v9, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->w:Ljava/util/List;

    if-nez v9, :cond_2

    .line 108
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->w:Ljava/util/List;

    .line 110
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v8, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 112
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 113
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-wide/from16 v0, p2

    invoke-static {v2, v8, p1, v0, v1}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;J)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v3

    .line 114
    .local v3, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v3, :cond_3

    .line 117
    iget-object v9, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v9, :cond_4

    .line 118
    iget-object v9, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v10, "status"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 119
    .local v7, "status":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 121
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 122
    .local v6, "sta":I
    sget-object v9, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v9, v9, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v6, v9, :cond_3

    sget-object v9, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v9, v9, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v9, :cond_4

    .line 111
    .end local v6    # "sta":I
    .end local v7    # "status":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    .restart local v7    # "status":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 126
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 130
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    .end local v7    # "status":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->w:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1155
    .end local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 1158
    new-instance v10, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;

    invoke-direct {v10, p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$3;-><init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)V

    .line 1197
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1198
    const-string/jumbo v9, "EVENTBUTLER"

    invoke-static {v9}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v11, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    .line 1200
    :goto_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 135
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->l()V

    goto/16 :goto_0

    :cond_7
    move-object v9, v10

    goto :goto_3
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 234
    sget v0, Lemt$g;->search_group_message:I

    return v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method protected final j()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->k()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    .line 2148
    iget-wide v0, v0, Leoe;->g:J

    .line 249
    cmp-long v0, v0, v8

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->p:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2152
    iput-wide v2, v0, Leoe;->g:J

    .line 253
    :cond_1
    invoke-virtual {p0, v5}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->a(I)V

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    new-instance v7, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;

    invoke-direct {v7, p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$4;-><init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)V

    .line 342
    .local v7, "searchTaskListener":Lcca;
    iget v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->o:I

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->h:Ljava/lang/String;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v7}, Lenu;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcca;)V

    .line 397
    :goto_0
    return-void

    .line 344
    .end local v7    # "searchTaskListener":Lcca;
    :cond_2
    new-instance v7, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;

    invoke-direct {v7, p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$5;-><init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)V

    .line 395
    .restart local v7    # "searchTaskListener":Lcca;
    iget v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->o:I

    const/16 v1, 0x32

    iget-wide v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->t:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->t:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->z:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->A:Ljava/lang/String;

    move v6, v5

    invoke-static/range {v0 .. v7}, Lenu;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcca;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_search_table"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->z:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_search_field"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->A:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_search_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->B:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    new-instance v0, Leqd;

    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Leqd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->v:Leqd;

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->v:Leqd;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->h:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->t:J

    iget-object v4, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->x:Lenx;

    iget-object v5, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->H:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->s:Z

    invoke-virtual/range {v0 .. v6}, Leqd;->a(Ljava/lang/String;JLenx;Landroid/os/Bundle;Z)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->v:Leqd;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->w:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->v:Leqd;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->w:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->y:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Leqd;->a(Ljava/util/List;Ljava/util/HashMap;)V

    .line 81
    invoke-direct {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->k()V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->j()V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 225
    iput-object v1, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->x:Lenx;

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->v:Leqd;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ChatMsgDetailSearchFragment;->v:Leqd;

    .line 2066
    iput-object v1, v0, Leqd;->d:Lenx;

    .line 229
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/search/old/fragment/ChatMsgSearchFragment;->onDestroy()V

    .line 230
    return-void
.end method
