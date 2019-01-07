.class public Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;
.super Lcom/alibaba/dingtalk/telebase/TelConfInterface;
.source "TelConfInterfaceImpl.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/wukong/im/Conversation;)J
    .locals 10
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    .line 128
    if-nez p0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-wide v4

    .line 131
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 135
    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "uidArray":[Ljava/lang/String;
    array-length v6, v1

    if-gt v6, v9, :cond_2

    .line 137
    const-string/jumbo v6, "tele_conf"

    sget-object v7, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v8, "Invalid cid"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v2

    .line 142
    .local v2, "selfUid":J
    aget-object v6, v1, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    aget-object v6, v1, v9

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "uid":J
    goto :goto_0

    .line 145
    .end local v4    # "uid":J
    :cond_3
    aget-object v6, v1, v8

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .restart local v4    # "uid":J
    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "btnTxt"    # Ljava/lang/String;
    .param p3, "maxCount"    # I
    .param p4, "cid"    # Ljava/lang/String;
    .param p5, "identify"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p3, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "choose_mode"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string/jumbo v0, "count_limit"

    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string/jumbo v0, "activity_identify"

    invoke-virtual {v5, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v0, "count_limit_tips"

    sget v1, Leuj$l;->conference_choose_limit:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v6, "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string/jumbo v0, "unchecked_users"

    check-cast v6, Ljava/util/ArrayList;

    .end local v6    # "uncheckList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 124
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static/range {p1 .. p6}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 1245
    invoke-static {p1}, Lewp;->a(I)Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    const-string/jumbo v0, "https://qr.dingtalk.com/page/confenencelist"

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 2
    .param p1, "profileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 633
    if-nez p1, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 636
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 7
    .param p1, "uid"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 860
    invoke-static {}, Lewg;->a()Lewg;

    move-result-object v0

    .line 5044
    cmp-long v1, p1, v4

    if-lez v1, :cond_0

    .line 5047
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;-><init>()V

    .line 5048
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 5050
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v1

    new-instance v3, Lewg$1;

    invoke-direct {v3, v0}, Lewg$1;-><init>(Lewg;)V

    invoke-virtual {v2, v1, v3}, Leyc;->b(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$e;)V

    .line 862
    :cond_0
    invoke-static {}, Lewq;->a()Lewq;

    move-result-object v0

    .line 5111
    cmp-long v1, p1, v4

    if-ltz v1, :cond_1

    .line 5115
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lewq;->a:Ljava/util/Timer;

    .line 5116
    iget-object v1, v0, Lewq;->a:Ljava/util/Timer;

    new-instance v2, Lewq$1;

    invoke-direct {v2, v0, p1, p2}, Lewq$1;-><init>(Lewq;J)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 863
    :cond_1
    return-void
.end method

.method public final a(Landroid/app/Activity;J)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUid"    # J

    .prologue
    const/4 v5, 0x0

    .line 1046
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    invoke-static {v5}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1050
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$7;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$7;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;)V

    invoke-virtual {v2, p2, p3, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 1075
    :cond_2
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v4, "Goto systemCall direct."

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .local v1, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 1079
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iput-wide p2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1080
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v2

    invoke-static {p1, v1, v5, v2}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "quickStartSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .prologue
    .line 1016
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-static {}, Levi;->p()Levi;

    move-result-object v7

    .line 191
    .local v7, "confDataCenter":Levi;
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 192
    invoke-virtual {v7}, Levi;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v4, "meeting_creat_from_group_click"

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Leuj$l;->dt_conference_make_call:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Leuj$l;->conf_txt_conference_launch_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "btnText":Ljava/lang/String;
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v3

    .line 198
    .local v3, "memCount":I
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v10

    .line 199
    .local v10, "videoMemNum":I
    if-le v10, v3, :cond_2

    .line 200
    move v3, v10

    .line 203
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ACTIVITY_IDENTIFY_CONFERENCE"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "btnText":Ljava/lang/String;
    .end local v3    # "memCount":I
    .end local v10    # "videoMemNum":I
    :cond_3
    sget v0, Leuj$l;->dt_conference_current_conf_ongoing:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 207
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    invoke-virtual {v0}, Levu;->b()V

    .line 208
    invoke-static {}, Lews;->a()Lews;

    move-result-object v0

    sget-object v4, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v4}, Lews;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    goto :goto_0

    .line 210
    :cond_4
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 211
    invoke-static {p2}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v8

    .line 212
    .local v8, "uid":J
    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-lez v0, :cond_5

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v0, v8, v4

    if-eqz v0, :cond_5

    .line 213
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$8;

    invoke-direct {v4, p0, v6, p1}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$8;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v8, v9, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_0

    .line 241
    .end local v6    # "cid":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v0, v8, v4

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v4, Leuj$l;->conf_txt_call_myself_prompt:I

    invoke-virtual {v0, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "corpId"    # Ljava/lang/String;

    .prologue
    .line 1202
    const/16 v0, 0x2774

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;I)V

    .line 1203
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "corpId"    # Ljava/lang/String;
    .param p4, "bizType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1212
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1214
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "Invalid param for create biz-call from conv"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :goto_0
    return-void

    .line 1217
    :cond_1
    invoke-static {p2}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .local v4, "uid":J
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v6, p4

    .line 1218
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 165
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 166
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$1;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 165
    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 7
    .param p1, "fromContext"    # Landroid/app/Activity;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "uid"    # J

    .prologue
    .line 1207
    const/16 v6, 0x2774

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;JI)V

    .line 1208
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;JI)V
    .locals 13
    .param p1, "fromContext"    # Landroid/app/Activity;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "bizType"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1223
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    cmp-long v2, p3, v4

    if-gtz v2, :cond_2

    .line 1224
    :cond_0
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v4, "Invalid param for create biz-call from Micro-app"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_1
    :goto_0
    return-void

    .line 1227
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v10

    .line 1228
    .local v10, "selfUid":J
    cmp-long v2, p3, v4

    if-lez v2, :cond_5

    cmp-long v2, p3, v10

    if-eqz v2, :cond_5

    .line 1229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1230
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v3

    sget-object v9, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->MSG_CHAT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Lewn;->a(Landroid/app/Activity;Ljava/lang/String;JILcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto :goto_0

    .line 1232
    :cond_3
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Invalid corp id with "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const/16 v2, 0x2774

    move/from16 v0, p5

    if-ne v0, v2, :cond_4

    .line 1235
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_calllist_vip_servicecall_quite_org_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1237
    :cond_4
    invoke-static {p1}, Leyw;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 1239
    :cond_5
    cmp-long v2, p3, v10

    if-nez v2, :cond_1

    .line 1240
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_call_myself_prompt:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .line 1186
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v1

    .line 7530
    invoke-static {p1, p2}, Lewn;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7531
    const-string/jumbo v0, "Unable to dial your own phone"

    const-string/jumbo v1, ""

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 7536
    :goto_0
    return-void

    .line 7534
    :cond_0
    iget-boolean v0, v1, Lewn;->c:Z

    if-eqz v0, :cond_1

    .line 7535
    const-string/jumbo v0, "already Start"

    const-string/jumbo v1, ""

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7538
    :cond_1
    iput-boolean v2, v1, Lewn;->c:Z

    .line 7541
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 7542
    iput-object p2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 7543
    iput v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 7545
    new-instance v0, Lewn$24;

    invoke-direct {v0, v1, p3}, Lewn$24;-><init>(Lewn;Lcma;)V

    invoke-virtual {v1, p1, v0, p2}, Lewn;->a(Landroid/app/Activity;Lewj$b;Ljava/lang/String;)V

    .line 7563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7564
    const-string/jumbo v2, "type"

    sget-object v4, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->JSAPI:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7565
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v4, "phone_calllist_click"

    invoke-interface {v2, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 7567
    sget-object v4, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->JSAPI:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 7721
    new-instance v0, Lewn$2;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lewn$2;-><init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;)V

    .line 7568
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lewh;->a(ZLcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/Long;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "agentId"    # Ljava/lang/String;
    .param p7, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Lgws;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1191
    .local p8, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p9, "listener":Lcma;, "Lcma<Lgws;>;"
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v0

    .line 8168
    sget-object v9, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->JSAPI:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lewn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Lcma;)V

    .line 1192
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "mobile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1041
    .line 7036
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1042
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 153
    .local p2, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    .line 157
    .local v0, "cid":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 158
    const-string/jumbo v1, "conversation_id"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_2
    invoke-static {p1, p2, v0}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 784
    if-nez p1, :cond_0

    .line 798
    :goto_0
    return-void

    .line 787
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/confenencelist"

    new-instance v2, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$4;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "toUid"    # J
    .param p4, "cid"    # Ljava/lang/String;

    .prologue
    .line 511
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    .line 2476
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v0, "toUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2475
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2478
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$14;

    invoke-direct {v2, p0, p1, p4}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$14;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 465
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2460
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Long;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 4
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "toUid"    # Ljava/lang/Long;
    .param p3, "info"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 943
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    if-nez p3, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p3}, Lewb;->a(Landroid/content/Context;JLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reservationId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 752
    if-nez p1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 755
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/businessConference"

    new-instance v2, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$3;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 1
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 951
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    invoke-static {p1, p2, p3}, Lewb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "confID"    # Ljava/lang/String;
    .param p3, "newVersion"    # Z

    .prologue
    .line 810
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-static {p1, p2}, Lewb;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p2, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 425
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "Goto video conf direct."

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    if-nez p3, :cond_2

    .line 430
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "extras":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 433
    .restart local p3    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v1, "conf_video_to_user_type"

    invoke-virtual {p3, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 434
    .local v0, "confType":I
    if-ne v0, v5, :cond_3

    .line 435
    const-string/jumbo v1, "conf_video_to_user_type"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    :cond_3
    const-string/jumbo v1, "conf_video_auto"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    const-string/jumbo v1, "conf_video_3g_remind_flag"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    invoke-static {p1, p2, p3}, Lewb;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 905
    invoke-static {p1}, Lewr;->a(Landroid/content/Intent;)V

    .line 906
    return-void
.end method

.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 932
    .local p1, "data":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lewh;->a(ZLcma;)V

    .line 933
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p2, "data":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lewh;->a(Ljava/lang/String;Lcma;)V

    .line 938
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 714
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    const-string/jumbo v0, "autolift"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lewl;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_2
    const-string/jumbo v0, "auto_pick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 720
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lewl;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_3
    const-string/jumbo v0, "local_contact_filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 722
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    .line 4318
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4319
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "conf_local_contact_filter_info"

    invoke-static {v1, v2, p2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    const/4 v1, 0x0

    iput-object v1, v0, Lewl;->m:Ljava/util/List;

    goto :goto_0

    .line 723
    :cond_4
    const-string/jumbo v0, "dingcard_personal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "dingcard_global"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 725
    :cond_5
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "dingSimCard "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getInstance()Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->updateDingSimCardSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    :cond_6
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid config key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUserId"    # J
    .param p4, "stateCode"    # Ljava/lang/String;
    .param p5, "mobile"    # Ljava/lang/String;

    .prologue
    .line 1092
    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/app/Activity;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "download"    # Z
    .param p3, "negativeBtnTxt"    # Ljava/lang/String;
    .param p4, "negativeBtnListener"    # Landroid/view/View$OnClickListener;
    .param p5, "positiveBtnTxt"    # Ljava/lang/String;
    .param p6, "positiveBtnListener"    # Landroid/view/View$OnClickListener;
    .param p7, "hintTitle"    # Ljava/lang/String;
    .param p8, "hintMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1175
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Leyw;->a(Landroid/app/Activity;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 619
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v2

    .line 622
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 623
    .local v0, "uid":J
    const-wide/32 v4, 0x28426

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1108
    new-instance v2, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;-><init>()V

    .line 1110
    .local v2, "phoneNumberInfo":Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;
    :try_start_0
    const-string/jumbo v1, ""

    .line 1111
    .local v1, "phoneNumber":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-lt v6, v7, :cond_3

    .line 1112
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 1113
    .local v4, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_1

    .line 1114
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1115
    .local v3, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1116
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 1128
    .end local v3    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1129
    const-string/jumbo v6, "\\+(9[976]\\d|8[987530]\\d|6[987]\\d|5[90]\\d|42\\d|3[875]\\d|2[98654321]\\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1131
    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1132
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1133
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;->countryCallingCode:Ljava/lang/String;

    .line 1134
    iget-object v6, v2, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;->countryCallingCode:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;->number:Ljava/lang/String;

    .line 1143
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 1122
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1123
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_1

    .line 1124
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1136
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    :cond_4
    iput-object v1, v2, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 20
    .param p1, "fromContext"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 253
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v8, "chat_calllist_button_click"

    invoke-interface {v4, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 256
    new-instance v13, Lewj;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lewj;-><init>(Landroid/app/Activity;)V

    .line 257
    .local v13, "menuManager":Lewj;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v14, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    new-instance v4, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$9;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v4, v8, v9}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;ZZ)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v10

    .line 277
    .local v10, "audioMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v4, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$10;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-static {v4}, Lewj;->e(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v19

    .line 295
    .local v19, "videoMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v8, Leuj$l;->dt_conference_callcenter_startconference:I

    invoke-virtual {v4, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "title":Ljava/lang/String;
    sget-object v4, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->MSG_CHAT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v13, v5, v14, v4}, Lewj;->a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto :goto_0

    .line 300
    .end local v5    # "title":Ljava/lang/String;
    .end local v10    # "audioMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .end local v13    # "menuManager":Lewj;
    .end local v14    # "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    .end local v19    # "videoMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_2
    invoke-static {}, Levm;->a()Levm;

    move-result-object v4

    invoke-virtual {v4}, Levm;->c()Z

    move-result v4

    if-nez v4, :cond_3

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Leuj$l;->dt_conference_start_btntitle_videoconf:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 302
    .restart local v5    # "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Leuj$l;->conf_txt_conference_launch_text:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "btnText":Ljava/lang/String;
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v7

    .line 305
    .local v7, "memCount":I
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ACTIVITY_IDENTIFY_VIDEO_CONFERENCE"

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "btnText":Ljava/lang/String;
    .end local v7    # "memCount":I
    :cond_3
    sget v4, Leuj$l;->dt_conference_current_video_ongoing:I

    invoke-static {v4}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 310
    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_0

    .line 311
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v8, "chat_videocall_button_click"

    invoke-interface {v4, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 312
    invoke-static/range {p2 .. p2}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v16

    .line 313
    .local v16, "uid":J
    const-wide/16 v8, 0x0

    cmp-long v4, v16, v8

    if-lez v4, :cond_6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v8

    cmp-long v4, v16, v8

    if-eqz v4, :cond_6

    .line 314
    new-instance v13, Lewj;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lewj;-><init>(Landroid/app/Activity;)V

    .line 315
    .restart local v13    # "menuManager":Lewj;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .restart local v14    # "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v8, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    .line 318
    .local v18, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 319
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "conversation_id"

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v4, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v2, v11}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$11;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V

    .line 2272
    const/4 v8, 0x0

    invoke-virtual {v13, v4, v8}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;Z)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v10

    .line 328
    .restart local v10    # "audioMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v4, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v2, v11}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V

    invoke-static {v4}, Lewj;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v19

    .line 337
    .restart local v19    # "videoMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v8, Leuj$l;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {v4, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 340
    .restart local v5    # "title":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v12

    .line 341
    .local v12, "destUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v12, :cond_5

    .line 342
    iget-object v4, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v15, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 343
    .local v15, "nickName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 344
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v8, 0x1

    const-string/jumbo v9, " "

    aput-object v9, v4, v8

    const/4 v8, 0x2

    aput-object v15, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .end local v15    # "nickName":Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->MSG_CHAT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v13, v5, v14, v4}, Lewj;->a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto/16 :goto_0

    .line 348
    .end local v5    # "title":Ljava/lang/String;
    .end local v10    # "audioMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v12    # "destUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v13    # "menuManager":Lewj;
    .end local v14    # "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    .end local v18    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v19    # "videoMenu":Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    :cond_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v8

    cmp-long v4, v16, v8

    if-nez v4, :cond_0

    .line 349
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v8, Leuj$l;->conf_txt_call_myself_prompt:I

    invoke-virtual {v4, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "confID"    # Ljava/lang/String;

    .prologue
    .line 802
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    invoke-static {p1, p2}, Lewb;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "fromContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->d(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 581
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 444
    .local p2, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Goto VoIP conf by uids "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    if-nez p3, :cond_2

    .line 450
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "extras":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 453
    .restart local p3    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v0, "conf_type"

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    invoke-static {p1, p2, p3}, Lewb;->b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1197
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    .line 8198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 8199
    :cond_0
    :goto_0
    return-void

    .line 8201
    :cond_1
    new-instance v1, Lewh$8;

    invoke-direct {v1, v0, p2}, Lewh$8;-><init>(Lewh;Lcma;)V

    invoke-virtual {v0, p1, v1}, Lewh;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 604
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    invoke-virtual {v0}, Levi;->c()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "mobile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1087
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 526
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-static {p1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 530
    invoke-static {p1}, Lewb;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 534
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 536
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/os/Bundle;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 609
    invoke-static {}, Lewr;->e()Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 585
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p3, :cond_0

    .line 586
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "extras":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 588
    .restart local p3    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "conf_video_to_user_type"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3377
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3382
    :cond_1
    :goto_0
    return-void

    .line 3380
    :cond_2
    invoke-static {p1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3381
    invoke-static {p1}, Lewb;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 3384
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$13;

    invoke-direct {v1, p0, p1, p3}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$13;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    invoke-static {}, Lewh;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 641
    invoke-static {}, Lews;->a()Lews;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lews;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 642
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 704
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    invoke-virtual {v0}, Levu;->b()V

    .line 705
    return-void
.end method

.method public final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 735
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->c()V

    .line 737
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lewh;->b(ZLcma;)V

    .line 738
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 742
    invoke-static {}, Lewr;->g()V

    .line 743
    invoke-static {}, Lewl;->a()Lewl;

    invoke-static {}, Lewl;->b()V

    .line 744
    invoke-static {}, Lewl;->a()Lewl;

    invoke-static {}, Lewl;->g()V

    .line 745
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->c()V

    .line 746
    invoke-static {}, Lewg;->a()Lewg;

    invoke-static {}, Lewg;->b()V

    .line 747
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->m()V

    .line 748
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 989
    return-void
.end method

.method public final j()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 867
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "pullConfConfig"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    invoke-virtual {v1}, Lewh;->c()V

    .line 870
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    .line 5771
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageReqModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageReqModel;-><init>()V

    .line 5772
    invoke-static {}, Lewh;->j()Levj;

    move-result-object v3

    .line 5773
    if-eqz v3, :cond_1

    .line 6040
    iget v3, v3, Levj;->a:I

    .line 5774
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageReqModel;->version:Ljava/lang/Integer;

    .line 5778
    :goto_0
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lewh;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Group page req "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageReqModel;->version:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5779
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v3

    new-instance v4, Lewh$5;

    invoke-direct {v4, v1}, Lewh$5;-><init>(Lewh;)V

    .line 6295
    if-nez v2, :cond_2

    .line 871
    :cond_0
    :goto_1
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lewh;->a(ZLcma;)V

    .line 874
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;->a()Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;->onApplicationCreate()V

    .line 876
    sget-object v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 877
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$5;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 899
    invoke-static {}, Lewr;->c()V

    .line 900
    invoke-static {}, Lewl;->a()Lewl;

    invoke-static {}, Lewl;->f()V

    .line 901
    return-void

    .line 5776
    .end local v0    # "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageReqModel;->version:Ljava/lang/Integer;

    goto :goto_0

    .line 6298
    :cond_2
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 6299
    if-eqz v1, :cond_0

    .line 6302
    new-instance v5, Leyd$9;

    invoke-direct {v5, v3, v4}, Leyd$9;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v1, v2, v5}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->getShowPage(Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageReqModel;Liyv;)V

    goto :goto_1
.end method

.method public final k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 921
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    .line 6570
    iget-boolean v0, v1, Levu;->j:Z

    if-nez v0, :cond_0

    .line 6573
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->b:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->a(Lcjo$a;)V

    .line 6574
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->c:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->a(Lcjo$a;)V

    .line 6575
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->d:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->a(Lcjo$a;)V

    .line 6576
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->f:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->a(Lcjo$a;)V

    .line 6577
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->e:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->a(Lcjo$a;)V

    .line 6578
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->g:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->a(Lcjo$a;)V

    .line 6580
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v2, v1, Levu;->h:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/MessageService;->addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 6582
    const/4 v0, 0x1

    iput-boolean v0, v1, Levu;->j:Z

    .line 922
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 927
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v1

    .line 6586
    iget-boolean v0, v1, Levu;->j:Z

    if-eqz v0, :cond_0

    .line 6589
    const/4 v0, 0x0

    iput-boolean v0, v1, Levu;->j:Z

    .line 6591
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->b:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->b(Lcjo$a;)V

    .line 6592
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->c:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->b(Lcjo$a;)V

    .line 6593
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->d:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->b(Lcjo$a;)V

    .line 6594
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->f:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->b(Lcjo$a;)V

    .line 6595
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->e:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->b(Lcjo$a;)V

    .line 6596
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v0

    iget-object v2, v1, Levu;->g:Lcjo$a;

    invoke-virtual {v0, v2}, Leyn;->b(Lcjo$a;)V

    .line 6598
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v2, v1, Levu;->h:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/MessageService;->removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 6600
    iput-object v3, v1, Levu;->b:Lcjo$a;

    .line 6601
    iput-object v3, v1, Levu;->c:Lcjo$a;

    .line 6602
    iput-object v3, v1, Levu;->d:Lcjo$a;

    .line 6603
    iput-object v3, v1, Levu;->f:Lcjo$a;

    .line 6604
    iput-object v3, v1, Levu;->e:Lcjo$a;

    .line 6605
    iput-object v3, v1, Levu;->g:Lcjo$a;

    .line 6606
    iput-object v3, v1, Levu;->h:Lcom/alibaba/wukong/im/MessageListener;

    .line 928
    :cond_0
    return-void
.end method

.method public final m()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .locals 1

    .prologue
    .line 998
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getInstance()Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getDingSimCardSetting()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 1003
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getInstance()Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->isShowDingSimCardEntrance()Z

    move-result v0

    return v0
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 1097
    invoke-static {}, Lcpi;->a()V

    .line 1098
    return-void
.end method

.method public onApplicationCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 959
    invoke-super {p0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->onApplicationCreate()V

    .line 960
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "onApplicationCreate"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Levu;->a(Landroid/content/Context;)Levu;

    invoke-static {}, Levu;->a()V

    .line 964
    invoke-static {}, Lewr;->c()V

    .line 966
    sget-object v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 967
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$6;-><init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 984
    return-void
.end method

.method public final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1102
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    invoke-virtual {v0}, Lewl;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 1148
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 1153
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->e()I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 1158
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 1163
    invoke-static {}, Leyw;->a()Z

    move-result v0

    return v0
.end method
