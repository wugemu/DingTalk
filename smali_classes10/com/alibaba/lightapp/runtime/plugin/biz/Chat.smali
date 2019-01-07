.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Chat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$CreateOrgPublicGroupAction;
    }
.end annotation


# static fields
.field private static final ERROR_CONTACT_TYPE:I = 0x1

.field private static final ERROR_MESSAGE_TYPE:I = 0x2

.field private static final ERROR_PARAM_NULL:I = 0x3

.field private static final ERROR_PARAM_OTHER:I = 0x0

.field private static final INVALID_INTENT_FLAG:I = -0x1

.field private static final KEY_CREATE_PUBLIC_GROUP_SUCCESS:Ljava/lang/String; = "jsapi_create_public_group_success"

.field private static final KEY_EDIT_GROUP_DESC_SUCCESS:Ljava/lang/String; = "jsapi_edit_group_desc_success"

.field private static final MSG_TYPE_LINK:I = 0x0

.field private static final MSG_TYPE_PIC:I = 0x1

.field private static final PARAM_CONTACT_TYPE:Ljava/lang/String; = "contactType"

.field private static final PARAM_MESSAGE_HREF:Ljava/lang/String; = "messageHref"

.field private static final PARAM_MESSAGE_IMAGE:Ljava/lang/String; = "messageImage"

.field private static final PARAM_MESSAGE_TITLE:Ljava/lang/String; = "messageTitle"

.field private static final PARAM_MESSAGE_TYPE:Ljava/lang/String; = "messageType"

.field public static final PARAM_REMIND_EXT:Ljava/lang/String; = "remind_ext"

.field public static final PARAM_REMIND_TYPE:Ljava/lang/String; = "remind_type"

.field public static final PARAM_SOURCE:Ljava/lang/String; = "source"

.field private static final REQUEST_CODE_ADD_GROUP:I

.field private static final TYPE_FILES_HELPER:Ljava/lang/String; = "filesHelper"


# instance fields
.field private mAddGroupCallbackId:Ljava/lang/String;

.field private mCallCallbackId:Ljava/lang/String;

.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/Plugin$a",
            "<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChatIdCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCidTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationCallbackId:Ljava/lang/String;

.field private mCurrentConversationChooseCallbackId:Ljava/lang/String;

.field private mCurrentConversationCreateCallbackId:Ljava/lang/String;

.field private mCurrentConversationForwardCallbackId:Ljava/lang/String;

.field private mCurrentEditGroupDescCallbackId:Ljava/lang/String;

.field private mSelectConviationReceiver:Landroid/content/BroadcastReceiver;

.field private mUnreadSessionsCallbackId:Ljava/lang/String;

.field mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "jsapi_add_group"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    sput v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->REQUEST_CODE_ADD_GROUP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCidTokenCache:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    .line 718
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mConversationCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationForwardCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationForwardCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCidTokenCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationChooseCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationChooseCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationCreateCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationCreateCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentEditGroupDescCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentEditGroupDescCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5202(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mAddGroupCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->REQUEST_CODE_ADD_GROUP:I

    return v0
.end method

.method static synthetic access$5700(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mUnreadSessionsCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->createCall(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private call(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallCallbackId:Ljava/lang/String;

    .line 258
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "users"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 259
    .local v2, "uids":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 260
    .local v3, "uidsLength":I
    new-array v4, v3, [Ljava/lang/String;

    .line 261
    .local v4, "users":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 262
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->createCallFromRecord([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "i":I
    .end local v2    # "uids":Lorg/json/JSONArray;
    .end local v3    # "uidsLength":I
    .end local v4    # "users":[Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    return-object v5

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 267
    const/4 v5, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createCall(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1245
    if-eqz p1, :cond_0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    const-class v2, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    invoke-static {v2}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    .line 1250
    .local v0, "createCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;->createACall(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1251
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1252
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createCallFromRecord([Ljava/lang/String;)V
    .locals 8
    .param p1, "uids"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1160
    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_1

    .line 1162
    :cond_0
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1242
    :goto_0
    return-void

    .line 1165
    :cond_1
    array-length v5, p1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1166
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1167
    .local v0, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$18;

    invoke-direct {v5, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$18;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)V

    invoke-virtual {v4, v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 1195
    .end local v0    # "uid":J
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v3, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    array-length v5, p1

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v2, p1, v4

    .line 1197
    .local v2, "uid1":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1198
    .restart local v0    # "uid":J
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->f()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-eqz v6, :cond_3

    .line 1199
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1201
    .end local v0    # "uid":J
    .end local v2    # "uid1":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$19;

    invoke-direct {v5, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$19;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)V

    invoke-virtual {v4, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method private getUnreadSessionsByTag(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "tag"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1016
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;I)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 1060
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1272
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$20;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mSelectConviationReceiver:Landroid/content/BroadcastReceiver;

    .line 1304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1305
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1306
    const-string/jumbo v1, "choose_enterprise_group_conversation_back"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1307
    const-string/jumbo v1, "jsapi_create_public_group_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1308
    const-string/jumbo v1, "jsapi_edit_group_desc_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mSelectConviationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1310
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mSelectConviationReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mSelectConviationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mSelectConviationReceiver:Landroid/content/BroadcastReceiver;

    .line 1318
    :cond_0
    return-void
.end method


# virtual methods
.method public addGroup(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v13, 0x8

    .line 906
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mAddGroupCallbackId:Ljava/lang/String;

    .line 907
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v10

    .line 908
    .local v10, "session":Lhqe$d;
    if-eqz v10, :cond_0

    .line 6488
    iget-object v11, v10, Lhqe$d;->b:Ljava/lang/String;

    .line 909
    .local v11, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "corpId"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 911
    .local v6, "argCorpId":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 912
    move-object v8, v6

    .line 920
    .local v8, "corpId":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 921
    .local v2, "orgId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_3

    .line 922
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "invalid corpId: "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 997
    .end local v2    # "orgId":J
    .end local v8    # "corpId":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 908
    .end local v6    # "argCorpId":Ljava/lang/String;
    .end local v11    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 914
    .restart local v6    # "argCorpId":Ljava/lang/String;
    .restart local v11    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    move-object v8, v11

    .restart local v8    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 917
    .end local v8    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "invalid corpId: "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 924
    .restart local v2    # "orgId":J
    .restart local v8    # "corpId":Ljava/lang/String;
    :cond_3
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "chatId"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 925
    .local v4, "chatId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 926
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v5, "chatId is null"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_2

    .line 928
    :cond_4
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$13;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$13;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    .line 953
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 928
    invoke-static {v1, v5, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/Callback;

    .line 954
    .local v9, "requestCallback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 955
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 956
    .local v7, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->REQUEST_CODE_ADD_GROUP:I

    invoke-virtual {v1, v0, v7, v5, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V

    .line 982
    .end local v7    # "cid":Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$15;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto/16 :goto_2

    .line 958
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$14;

    invoke-direct {v12, p0, p1, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$14;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;Lcom/alibaba/wukong/Callback;)V

    const-class v13, Lcma;

    .line 980
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 958
    invoke-static {v12, v13, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;JLjava/lang/String;Lcma;)V

    goto :goto_3
.end method

.method public chooseConversation(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 280
    iget-object v12, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationForwardCallbackId:Ljava/lang/String;

    .line 283
    iget-object v12, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v13, "isConfirm"

    invoke-virtual {v12, v13, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 284
    .local v3, "isConfirm":Z
    iget-object v12, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v13, "multiple"

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 288
    .local v4, "multiple":Z
    iget-object v12, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v13, "newPickMode"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 289
    iget-object v12, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v13, "newPickMode"

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 293
    .local v6, "newPickMode":Z
    :goto_0
    move v5, v6

    .line 295
    .local v5, "newPick":Z
    iget-object v12, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v13, "max"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 296
    .local v1, "chooseLimit":I
    iget-object v12, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v13, "pickedConvList"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 297
    .local v9, "pickedConvListJson":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v8, "pickedConvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_1

    .line 299
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v2, v12, :cond_1

    .line 301
    :try_start_0
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v1    # "chooseLimit":I
    .end local v2    # "i":I
    .end local v5    # "newPick":Z
    .end local v6    # "newPickMode":Z
    .end local v8    # "pickedConvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "pickedConvListJson":Lorg/json/JSONArray;
    :cond_0
    iget-object v12, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v13, "newPick"

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .restart local v6    # "newPickMode":Z
    goto :goto_0

    .line 306
    .restart local v1    # "chooseLimit":I
    .restart local v5    # "newPick":Z
    .restart local v8    # "pickedConvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "pickedConvListJson":Lorg/json/JSONArray;
    :cond_1
    new-array v7, v11, [Ljava/lang/String;

    .line 307
    .local v7, "pickedConvArray":[Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "pickedConvArray":[Ljava/lang/String;
    check-cast v7, [Ljava/lang/String;

    .line 309
    .restart local v7    # "pickedConvArray":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v12, "is_confirm"

    invoke-virtual {v0, v12, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    if-eqz v5, :cond_3

    .line 312
    const-string/jumbo v12, "intent_key_pick_conv_choose_mode"

    if-eqz v4, :cond_2

    move v10, v11

    :cond_2
    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string/jumbo v10, "count_limit"

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string/jumbo v10, "conversation_ids"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 317
    :cond_3
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    iget-object v12, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    new-instance v13, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$2;

    invoke-direct {v13, p0, v5, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;ZLcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13, v0, v11}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 359
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v10

    return-object v10

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v7    # "pickedConvArray":[Ljava/lang/String;
    .restart local v2    # "i":I
    :catch_0
    move-exception v12

    goto :goto_2
.end method

.method public chooseConversationByCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    .line 601
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationChooseCallbackId:Ljava/lang/String;

    .line 602
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 603
    invoke-virtual {v0, v1}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v9

    .line 604
    .local v9, "session":Lhqe$d;
    if-eqz v9, :cond_0

    .line 3488
    iget-object v10, v9, Lhqe$d;->b:Ljava/lang/String;

    .line 605
    .local v10, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "corpId"

    const-string/jumbo v11, ""

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 606
    .local v6, "argCorpId":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "filterNotOwnerGroup"

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 607
    .local v4, "onlyMyGroup":Z
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "isAllowCreateGroup"

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 609
    .local v5, "isAllowCreateGroup":Z
    if-nez v10, :cond_1

    .line 610
    move-object v7, v6

    .line 619
    .local v7, "corpId":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v0, v7}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v2

    .line 620
    .local v2, "orgId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 621
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "invalid corpId: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 622
    invoke-static {v13, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v0, v1, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 648
    .end local v2    # "orgId":J
    .end local v7    # "corpId":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 604
    .end local v4    # "onlyMyGroup":Z
    .end local v5    # "isAllowCreateGroup":Z
    .end local v6    # "argCorpId":Ljava/lang/String;
    .end local v10    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 612
    .restart local v4    # "onlyMyGroup":Z
    .restart local v5    # "isAllowCreateGroup":Z
    .restart local v6    # "argCorpId":Ljava/lang/String;
    .restart local v10    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    move-object v7, v10

    .restart local v7    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 615
    .end local v7    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "invalid corpId: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 616
    invoke-static {v13, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v0, v1, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 624
    .restart local v2    # "orgId":J
    .restart local v7    # "corpId":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    new-instance v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$7;

    invoke-direct {v11, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 644
    .local v8, "ctx":Landroid/content/Context;
    if-eqz v8, :cond_4

    instance-of v0, v8, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 645
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    move-object v1, v8

    check-cast v1, Landroid/app/Activity;

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;JZZ)V

    .line 646
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto :goto_2

    .line 648
    :cond_4
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v11, "plugin context is null or is not an activity"

    invoke-direct {v0, v1, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public createOrgPublicGroup(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v12, 0x8

    const/4 v3, 0x0

    .line 738
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationCreateCallbackId:Ljava/lang/String;

    .line 739
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v8

    .line 740
    .local v8, "session":Lhqe$d;
    if-eqz v8, :cond_0

    .line 4488
    iget-object v9, v8, Lhqe$d;->b:Ljava/lang/String;

    .line 741
    .local v9, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "corpId"

    const-string/jumbo v10, ""

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "argCorpId":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 744
    move-object v7, v0

    .line 752
    .local v7, "corpId":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 753
    .local v4, "orgId":J
    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-gtz v1, :cond_3

    .line 754
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "invalid corpId: "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 806
    .end local v4    # "orgId":J
    .end local v7    # "corpId":Ljava/lang/String;
    :goto_2
    return-object v1

    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v9    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    move-object v9, v3

    .line 740
    goto :goto_0

    .line 746
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v9    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    move-object v7, v9

    .restart local v7    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 749
    .end local v7    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "invalid corpId: "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 756
    .restart local v4    # "orgId":J
    .restart local v7    # "corpId":Ljava/lang/String;
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 757
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_on_conversation_create"

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$CreateOrgPublicGroupAction;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$CreateOrgPublicGroupAction;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;)V

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 758
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    new-instance v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;

    invoke-direct {v10, p0, v4, v5, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;JLcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/util/List;JLandroid/os/Bundle;)V

    .line 806
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    goto :goto_2
.end method

.method public getConversationInfo(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mConversationCallbackId:Ljava/lang/String;

    .line 153
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "cid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "cid":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-interface {v3, v4, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    .line 250
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 249
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "the requset is null"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 250
    .local v2, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_0
.end method

.method public gotoConferenceActivity(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1262
    .local p1, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1263
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation_id"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const-string/jumbo v1, "conference_from_home"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1265
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, p1, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1267
    return-void
.end method

.method public locationChatMessage(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 462
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "chatId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "chatId":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "corpId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "corpId":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "msgId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "msgId":Ljava/lang/String;
    new-instance v4, Lhqt;

    invoke-direct {v4}, Lhqt;-><init>()V

    .line 467
    .local v4, "oapiAPI":Lhqs;
    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;

    invoke-direct {v5, p0, v3, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v4, v1, v0, v5}, Lhqs;->e(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    .end local v0    # "chatId":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "msgId":Ljava/lang/String;
    .end local v4    # "oapiAPI":Lhqs;
    :goto_0
    return-object v5

    .line 493
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 495
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x2

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public modifyGroupDesc(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v12, 0x8

    .line 811
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentEditGroupDescCallbackId:Ljava/lang/String;

    .line 812
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v9

    .line 813
    .local v9, "session":Lhqe$d;
    if-eqz v9, :cond_0

    .line 5488
    iget-object v10, v9, Lhqe$d;->b:Ljava/lang/String;

    .line 814
    .local v10, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "corpId"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 816
    .local v6, "argCorpId":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 817
    move-object v8, v6

    .line 825
    .local v8, "corpId":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 826
    .local v2, "orgId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_3

    .line 827
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "invalid corpId: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 901
    .end local v2    # "orgId":J
    .end local v8    # "corpId":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 813
    .end local v6    # "argCorpId":Ljava/lang/String;
    .end local v10    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 819
    .restart local v6    # "argCorpId":Ljava/lang/String;
    .restart local v10    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    move-object v8, v10

    .restart local v8    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 822
    .end local v8    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "invalid corpId: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 829
    .restart local v2    # "orgId":J
    .restart local v8    # "corpId":Ljava/lang/String;
    :cond_3
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "chatId"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 830
    .local v4, "chatId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 831
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v5, "chatId is null"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_2

    .line 833
    :cond_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 834
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 835
    .local v7, "cid":Ljava/lang/String;
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$10;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$10;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    const-class v11, Lcom/alibaba/wukong/Callback;

    .line 851
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 835
    invoke-static {v5, v11, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v7}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 893
    .end local v7    # "cid":Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto/16 :goto_2

    .line 853
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;

    invoke-direct {v11, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$11;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    const-class v12, Lcma;

    .line 891
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 853
    invoke-static {v11, v12, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;JLjava/lang/String;Lcma;)V

    goto :goto_3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1144
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    sget v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->REQUEST_CODE_ADD_GROUP:I

    if-ne p1, v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mAddGroupCallbackId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1146
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mAddGroupCallbackId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/Plugin$a;

    .line 1147
    .local v0, "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    if-eqz v0, :cond_0

    .line 1148
    invoke-interface {v0, p3}, Lcom/alibaba/lightapp/runtime/Plugin$a;->onReceived(Ljava/lang/Object;)V

    .line 1152
    .end local v0    # "callback":Lcom/alibaba/lightapp/runtime/Plugin$a;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 133
    const-class v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v0}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 134
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->registerReceiver()V

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->unregisterReceiver()V

    .line 140
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCidTokenCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationForwardCallbackId:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationChooseCallbackId:Ljava/lang/String;

    .line 145
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 146
    return-void
.end method

.method public open(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 504
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "cid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "cidToken":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCidTokenCache:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, "cid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 508
    .local v2, "ctx":Landroid/content/Context;
    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 509
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    check-cast v2, Landroid/app/Activity;

    .end local v2    # "ctx":Landroid/content/Context;
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v0, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 510
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 519
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "cidToken":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 512
    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v1    # "cidToken":Ljava/lang/String;
    .restart local v2    # "ctx":Landroid/content/Context;
    :cond_0
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v6, "plugin context is null or is not an activity"

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "cidToken":Ljava/lang/String;
    .end local v2    # "ctx":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 518
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 519
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, 0x2

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 515
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v0    # "cid":Ljava/lang/String;
    .restart local v1    # "cidToken":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v6, "cidtoken is invalid"

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public openSingleChat(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "corpId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 657
    .local v4, "staffId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 659
    .local v3, "isSecret":Z
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "corpId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "userId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 661
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "isSecret"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 666
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 667
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "corpId can not null"

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 715
    :goto_1
    return-object v5

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 670
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 671
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "userId can not null"

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_1

    .line 674
    :cond_1
    move v2, v3

    .line 675
    .local v2, "finalSecret":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$8;

    invoke-direct {v6, p0, v2, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;ZLcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v5, v0, v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 715
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto :goto_1
.end method

.method public pickConversation(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 370
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCurrentConversationForwardCallbackId:Ljava/lang/String;

    .line 373
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "isConfirm"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 374
    .local v3, "isConfirm":Z
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v7

    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 375
    invoke-virtual {v7, v8}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v4

    .line 376
    .local v4, "session":Lhqe$d;
    if-eqz v4, :cond_0

    .line 1488
    iget-object v5, v4, Lhqe$d;->b:Ljava/lang/String;

    .line 377
    .local v5, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "corpId"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "argCorpId":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 380
    move-object v2, v0

    .line 389
    .local v2, "corpId":Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "corpid"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string/jumbo v7, "is_confirm"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mCallbacks:Ljava/util/Map;

    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;

    invoke-direct {v9, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v6, v1, v9}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 450
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "corpId":Ljava/lang/String;
    :goto_2
    return-object v6

    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v5    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    move-object v5, v6

    .line 376
    goto :goto_0

    .line 382
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v5    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 383
    move-object v2, v5

    .restart local v2    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 385
    .end local v2    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v8, 0x8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "invalid corpId: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 386
    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public queryUnreadSessions(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1005
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mUnreadSessionsCallbackId:Ljava/lang/String;

    .line 1006
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1007
    .local v1, "type":I
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "tag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1008
    .local v0, "tag":I
    invoke-direct {p0, v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getUnreadSessionsByTag(II)V

    .line 1009
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2
.end method

.method public sendMessageToContact(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, -0x1

    .line 1064
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1065
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-wide/16 v10, 0x0

    invoke-direct {v1, v8, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;J)V

    .line 1138
    :goto_0
    return-object v1

    .line 1067
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    .line 1068
    :cond_1
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-wide/16 v10, 0x3

    invoke-direct {v1, v8, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;J)V

    goto :goto_0

    .line 1070
    :cond_2
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "contactType"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1071
    .local v7, "contactType":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "messageType"

    invoke-virtual {v1, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1072
    .local v2, "messageType":I
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "filesHelper"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1073
    :cond_3
    const/4 v1, 0x1

    if-eq v2, v1, :cond_4

    if-nez v2, :cond_b

    .line 1074
    :cond_4
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "messageTitle"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1075
    .local v4, "title":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "messageImage"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1076
    .local v3, "image":Ljava/lang/String;
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "messageHref"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1077
    .local v5, "herf":Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1078
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1079
    const-string/jumbo v1, "share_url"

    invoke-virtual {v6, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1081
    const-string/jumbo v1, "share_pic_url"

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1083
    const-string/jumbo v1, "share_title"

    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_7
    const-string/jumbo v1, "filesHelper"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1085
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$17;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_9

    .line 1122
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v8

    const-class v9, Lcom/alibaba/wukong/Callback;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v9, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v8, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/Callback;)V

    .line 1138
    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_8
    :goto_1
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto/16 :goto_0

    .line 1124
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_9
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_1

    .line 1127
    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_a
    if-nez v2, :cond_8

    .line 1128
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v6, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1129
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto/16 :goto_0

    .line 1133
    .end local v3    # "image":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "herf":Ljava/lang/String;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_b
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-wide/16 v10, 0x2

    invoke-direct {v1, v8, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;J)V

    goto/16 :goto_0

    .line 1136
    :cond_c
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-wide/16 v10, 0x1

    invoke-direct {v1, v8, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;J)V

    goto/16 :goto_0
.end method

.method public toConversation(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 19
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    .prologue
    .line 526
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 527
    invoke-virtual {v2, v3}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v17

    .line 528
    .local v17, "session":Lhqe$d;
    if-eqz v17, :cond_0

    .line 2488
    move-object/from16 v0, v17

    iget-object v0, v0, Lhqe$d;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 529
    .local v18, "sessionCorpId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "corpId"

    const-string/jumbo v10, ""

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 531
    .local v9, "argCorpId":Ljava/lang/String;
    if-nez v18, :cond_1

    .line 532
    move-object/from16 v16, v9

    .line 541
    .local v16, "corpId":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v12

    .line 542
    .local v12, "orgId":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "chatId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, "chatId":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 545
    .local v5, "ctx":Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "remindType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 546
    .local v6, "remindType":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "source"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, "source":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "remindExt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 549
    .local v8, "remindExt":Ljava/lang/String;
    if-eqz v5, :cond_4

    instance-of v2, v5, Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 551
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    check-cast v5, Landroid/app/Activity;

    .end local v5    # "ctx":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->mChatIdCache:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v2, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 589
    :goto_2
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 594
    .end local v4    # "chatId":Ljava/lang/String;
    .end local v6    # "remindType":I
    .end local v7    # "source":Ljava/lang/String;
    .end local v8    # "remindExt":Ljava/lang/String;
    .end local v12    # "orgId":J
    .end local v16    # "corpId":Ljava/lang/String;
    :goto_3
    return-object v2

    .line 528
    .end local v9    # "argCorpId":Ljava/lang/String;
    .end local v18    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 534
    .restart local v9    # "argCorpId":Ljava/lang/String;
    .restart local v18    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v18

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 535
    move-object/from16 v16, v18

    .restart local v16    # "corpId":Ljava/lang/String;
    goto/16 :goto_1

    .line 537
    .end local v16    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v10, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "invalid corpId: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 538
    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v2, v3, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 561
    .restart local v4    # "chatId":Ljava/lang/String;
    .restart local v5    # "ctx":Landroid/content/Context;
    .restart local v6    # "remindType":I
    .restart local v7    # "source":Ljava/lang/String;
    .restart local v8    # "remindExt":Ljava/lang/String;
    .restart local v12    # "orgId":J
    .restart local v16    # "corpId":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v10

    move-object v11, v5

    check-cast v11, Landroid/app/Activity;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    move-object v14, v4

    move-object v15, v2

    invoke-virtual/range {v10 .. v15}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;JLjava/lang/String;Lcma;)V

    goto :goto_2

    .line 591
    :cond_4
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "plugin context is null or is not an activity"

    invoke-direct {v2, v3, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_3

    .line 594
    .end local v5    # "ctx":Landroid/content/Context;
    .end local v6    # "remindType":I
    .end local v7    # "source":Ljava/lang/String;
    .end local v8    # "remindExt":Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, "chatId is invalid"

    invoke-direct {v2, v3, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_3
.end method
