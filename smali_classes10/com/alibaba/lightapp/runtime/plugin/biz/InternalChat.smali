.class public Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "InternalChat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;
    }
.end annotation


# static fields
.field private static CHOOSE_GROUP_ACTION:Ljava/lang/String; = null

.field private static final CONVERSATION_ID:Ljava/lang/String; = "cid"

.field private static final CONVERSATION_NAME:Ljava/lang/String; = "conversationName"

.field private static final MSG_TYPE_CARD:I = 0x2

.field private static final MSG_TYPE_LINK:I = 0x1

.field private static final MSG_TYPE_TEXT:I = 0x0

.field private static final NORMAL_SELECT:I = 0x1

.field private static final ROBOT_SELECT:I = 0x2

.field private static final STR_MSG_TYPE_LINK:Ljava/lang/String; = "link"

.field private static final STR_MSG_TYPE_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field private static final STR_MSG_TYPE_TEXT:Ljava/lang/String; = "text"


# instance fields
.field private mChooseGroupCallbackId:Ljava/lang/String;

.field private mChooseGroupReceiver:Landroid/content/BroadcastReceiver;

.field private mChoosePeopleReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectAndSendTextCallbackId:Ljava/lang/String;

.field private mSelectAndSendTextReceiver:Landroid/content/BroadcastReceiver;

.field private mTransmitMsgCallbackId:Ljava/lang/String;

.field private mTransmitMsgParams:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "com.alibaba.android.rimet.internal_chat.choose_group"

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->CHOOSE_GROUP_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 556
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mTransmitMsgCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->navToChatWithAttendance(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->navToChat(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->navToChatWithAttendance(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lorg/json/JSONArray;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p3, "x3"    # Lorg/json/JSONArray;
    .param p4, "x4"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->doSendMultiMsges(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lorg/json/JSONArray;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->doSendMessage(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->CHOOSE_GROUP_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/wukong/im/Conversation;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->makeResult(Lcom/alibaba/wukong/im/Conversation;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChooseGroupCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private doSendMessage(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V
    .locals 5
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "conversationObject"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "msgObject"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 886
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 887
    :cond_0
    const/4 v2, 0x3

    const-string/jumbo v3, "msgObject or conversationObject is null"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 890
    :cond_1
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 891
    .local v1, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$11;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$11;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Ljava/lang/String;)V

    const-class v4, Lcma;

    .line 906
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 891
    invoke-interface {v1, v3, v4, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 908
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 909
    return-void
.end method

.method private doSendMultiMsges(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lorg/json/JSONArray;Z)V
    .locals 14
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p3, "messagesArray"    # Lorg/json/JSONArray;
    .param p4, "needOpenChat"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 806
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 807
    :cond_0
    const/4 v2, 0x3

    const-string/jumbo v4, "userProfileObject or messagesArray is null"

    invoke-static {v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 883
    :goto_0
    return-void

    .line 812
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 813
    .local v10, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v5

    .line 816
    .local v5, "icon":Ljava/lang/String;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 817
    .local v9, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;

    move/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$10;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Ljava/lang/String;ZLorg/json/JSONArray;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    .line 879
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 817
    invoke-interface {v9, v4, v6, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/Callback;

    .line 881
    .local v3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Long;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 882
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v11

    .line 881
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private initReceiver()V
    .locals 4

    .prologue
    .line 250
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChooseGroupReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 251
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChooseGroupReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->CHOOSE_GROUP_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChooseGroupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 275
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 276
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "action_im_share_callback"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 304
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChoosePeopleReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    .line 305
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$4;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChoosePeopleReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChoosePeopleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 340
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method private makeResult(Lcom/alibaba/wukong/im/Conversation;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    const/4 v1, 0x0

    .line 354
    :goto_0
    return-object v1

    .line 346
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "conversationName"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string/jumbo v2, "cid"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 352
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private navToChat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 436
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mTransmitMsgParams:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;-><init>()V

    .line 441
    .local v0, "chatFloatDialogDo":Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mTransmitMsgParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "title"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mTitle:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mTransmitMsgParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "content"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mDescription:Ljava/lang/String;

    .line 443
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mTransmitMsgParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "image"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mIconUrl:Ljava/lang/String;

    .line 444
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mTransmitMsgParams:Lorg/json/JSONObject;

    const-string/jumbo v2, "url"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mPageUrl:Ljava/lang/String;

    .line 445
    sget v1, Lhdn$g;->sw_float_dialog_icon:I

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mIconResId:I

    .line 447
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/home.html"

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$7;

    invoke-direct {v3, p0, v0, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;Ljava/lang/String;)V

    .line 448
    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method private navToChatWithAttendance(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/Context;)V
    .locals 13
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 393
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 397
    .local v7, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 399
    const/4 v2, 0x0

    .line 400
    .local v2, "nick":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 402
    iput-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 404
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 405
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v8, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, v8, v12}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "icon":Ljava/lang/String;
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$6;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Landroid/content/Context;)V

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Long;

    iget-wide v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 432
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v12

    .line 408
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private navToChatWithAttendance(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Landroid/content/Context;)V
    .locals 11
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 358
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .local v7, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, v7, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "icon":Ljava/lang/String;
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Landroid/content/Context;)V

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Long;

    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 389
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v10

    .line 365
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 95
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->initReceiver()V

    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 914
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 915
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChooseGroupReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChooseGroupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 917
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChooseGroupReceiver:Landroid/content/BroadcastReceiver;

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 920
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 921
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextReceiver:Landroid/content/BroadcastReceiver;

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChoosePeopleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 925
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChoosePeopleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 926
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChoosePeopleReceiver:Landroid/content/BroadcastReceiver;

    .line 928
    :cond_2
    return-void
.end method

.method public openConversation(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 25
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 140
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 141
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v9, "Empty arguments"

    invoke-static {v4, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 246
    :goto_0
    return-object v2

    .line 143
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 144
    .local v17, "encodedUid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 145
    .local v20, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 146
    .local v16, "content":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 147
    .local v19, "picUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 148
    .local v24, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    .line 149
    .local v21, "type":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "remindType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 150
    .local v5, "remindType":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "source"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "source":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "remindExt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "remindExt":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcoh;->b(Ljava/lang/String;)J

    move-result-wide v22

    .line 155
    .local v22, "uid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-gtz v2, :cond_1

    .line 156
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v9, "Invalid parameters"

    invoke-static {v4, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 159
    :cond_1
    new-instance v8, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 160
    .local v8, "object":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    if-nez v21, :cond_3

    .line 161
    const/4 v2, 0x1

    iput v2, v8, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 162
    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 191
    :cond_2
    :goto_1
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionRequest;ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Long;

    const/4 v3, 0x0

    .line 244
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v15, v3

    move-object v10, v2

    .line 192
    invoke-interface/range {v9 .. v15}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 246
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 163
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_6

    .line 164
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    :cond_4
    const-string/jumbo v2, "openConversation"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "openConversation"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "link:openConversation parameters invalid"

    aput-object v11, v9, v10

    invoke-static {v2, v3, v4, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v9, "Invalid parameters"

    invoke-static {v4, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 168
    :cond_5
    const/4 v2, 0x3

    iput v2, v8, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 169
    new-instance v18, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;-><init>()V

    .line 170
    .local v18, "message":Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->title:Ljava/lang/String;

    .line 171
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->picUrl:Ljava/lang/String;

    .line 172
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->text:Ljava/lang/String;

    .line 173
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->url:Ljava/lang/String;

    .line 174
    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_1

    .line 175
    .end local v18    # "message":Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_2

    .line 176
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 177
    :cond_7
    const-string/jumbo v2, "openConversation"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "openConversation"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "card:openConversation parameters invalid"

    aput-object v11, v9, v10

    invoke-static {v2, v3, v4, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v9, "Invalid parameters"

    invoke-static {v4, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 180
    :cond_8
    const/16 v2, 0x4b1

    iput v2, v8, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 181
    new-instance v18, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;-><init>()V

    .line 182
    .local v18, "message":Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->title:Ljava/lang/String;

    .line 183
    const-string/jumbo v2, "![](%s)\n#### %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v19, v3, v4

    const/4 v4, 0x1

    aput-object v20, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->text:Ljava/lang/String;

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->dt_click_to_jump:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->singleTitle:Ljava/lang/String;

    .line 187
    :cond_9
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->singleBtnUrl:Ljava/lang/String;

    .line 188
    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public pickGroupConversation(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 110
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mChooseGroupCallbackId:Ljava/lang/String;

    .line 111
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v6, :cond_0

    .line 112
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 130
    :goto_0
    return-object v6

    .line 114
    :cond_0
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "bizType"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 115
    .local v3, "type":I
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "templateId"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 116
    .local v4, "templateId":J
    if-eq v3, v10, :cond_1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 119
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "intent_key_group_selection_do_logic"

    invoke-virtual {v1, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    const-string/jumbo v6, "intent_key_group_selection_show_search_action_bar"

    invoke-virtual {v1, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;-><init>(IJ)V

    .line 123
    .local v2, "injector":Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;
    const-string/jumbo v6, "choose_people_from_contact_logic"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 124
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 128
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    goto :goto_0

    .line 126
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "injector":Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$ConversationGroupSelectorInjector;
    :cond_2
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 130
    :cond_3
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public selectAndSendText(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 18
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 697
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextCallbackId:Ljava/lang/String;

    .line 698
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 699
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextCallbackId:Ljava/lang/String;

    .line 700
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x2

    const-string/jumbo v6, " args is null"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 734
    :goto_0
    return-object v2

    .line 702
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "atList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 703
    .local v8, "atList":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 704
    .local v12, "content":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "bizType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 705
    .local v11, "bizType":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 707
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v10, "atUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 709
    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcoh;->b(Ljava/lang/String;)J

    move-result-wide v16

    .line 710
    .local v16, "uid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_1

    .line 713
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 715
    .end local v16    # "uid":J
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v9, v2, [J

    .line 716
    .local v9, "atUserArray":[J
    const/4 v13, 0x0

    .line 717
    .local v13, "curIndex":I
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_4

    .line 718
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 719
    .local v15, "userId":Ljava/lang/Long;
    if-eqz v15, :cond_3

    .line 720
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v9, v13

    .line 721
    add-int/lit8 v13, v13, 0x1

    .line 717
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 724
    .end local v15    # "userId":Ljava/lang/Long;
    :cond_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 725
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "im_at_id_list"

    invoke-virtual {v4, v2, v9}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 726
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v4, v2, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string/jumbo v2, "im_share_biz_type"

    invoke-virtual {v4, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string/jumbo v2, "im_share_callback_id"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string/jumbo v2, "from_share"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 730
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "android.intent.action.SEND"

    const-string/jumbo v6, "text/plain"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 731
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 733
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v9    # "atUserArray":[J
    .end local v10    # "atUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "curIndex":I
    .end local v14    # "index":I
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mSelectAndSendTextCallbackId:Ljava/lang/String;

    .line 734
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x2

    const-string/jumbo v6, " atList or content is invalid"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method public sendMultiMsges(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x2

    .line 739
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 741
    .local v1, "args":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 742
    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v9, "invalid args"

    .line 743
    invoke-static {v10, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 802
    :goto_0
    return-object v7

    .line 747
    :cond_0
    const-string/jumbo v7, "userId"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 749
    .local v6, "staffId":Ljava/lang/String;
    const-string/jumbo v7, "corpId"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "corpId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 752
    :cond_1
    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v9, "invalid staffId or corpId"

    .line 753
    invoke-static {v10, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 756
    :cond_2
    const-string/jumbo v7, "messages"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 757
    .local v4, "jsonArray":Lorg/json/JSONArray;
    if-nez v4, :cond_3

    .line 758
    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v9, "invalid messages json array"

    .line 759
    invoke-static {v10, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 762
    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/16 v8, 0x9

    if-le v7, v8, :cond_4

    .line 763
    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v9, "invalid messages json array, More than 9 messages"

    .line 764
    invoke-static {v10, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 767
    :cond_4
    const-string/jumbo v7, "openChat"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 769
    .local v5, "needOpenChat":Z
    const-string/jumbo v7, "EVENTBUTLER"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 770
    .local v3, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    new-instance v8, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;

    invoke-direct {v8, p0, p1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;Lcom/alibaba/lightapp/runtime/ActionRequest;Lorg/json/JSONArray;Z)V

    const-class v9, Lcma;

    .line 798
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 770
    invoke-interface {v3, v8, v9, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 800
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {v7, v2, v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 802
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public transmitMsg(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    .line 471
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 473
    .local v1, "args":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 475
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x2

    const-string/jumbo v13, "invalid args"

    .line 476
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 552
    :goto_0
    return-object v10

    .line 479
    :cond_0
    const-string/jumbo v10, "corpId"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "corpId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 482
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v12, "corpId is empty!"

    .line 483
    invoke-static {v13, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v6

    .line 487
    .local v6, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v6, :cond_2

    .line 489
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v12, "orgId is empty!"

    .line 490
    invoke-static {v13, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 493
    :cond_2
    const-string/jumbo v10, "url"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 494
    .local v9, "url":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 496
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x3

    const-string/jumbo v13, "link url is null!"

    .line 497
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 500
    :cond_3
    const-string/jumbo v10, "pickerTitle"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, "pickerTitle":Ljava/lang/String;
    const-string/jumbo v10, "staffId"

    const-string/jumbo v11, ""

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 504
    .local v8, "staffId":Ljava/lang/String;
    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mTransmitMsgCallbackId:Ljava/lang/String;

    .line 505
    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    iput-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->mTransmitMsgParams:Lorg/json/JSONObject;

    .line 507
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 508
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 509
    .local v3, "contactChooseRequestBuilder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 510
    invoke-virtual {v3, v12}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 511
    iget-wide v10, v6, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-virtual {v3, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 512
    invoke-virtual {v3, v12}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 513
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 514
    invoke-virtual {v3, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 517
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 518
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "intent_key_contact_choose_request"

    .line 2053
    iget-object v11, v3, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 518
    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 519
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v11

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v11, v10, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 552
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "contactChooseRequestBuilder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    :goto_1
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto/16 :goto_0

    .line 522
    :cond_5
    const-string/jumbo v10, "EVENTBUTLER"

    invoke-static {v10}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 523
    .local v5, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    new-instance v11, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$8;

    invoke-direct {v11, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;)V

    const-class v12, Lcma;

    .line 545
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/InternalChat;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    .line 523
    invoke-interface {v5, v11, v12, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 548
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10, v4, v8, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_1
.end method
