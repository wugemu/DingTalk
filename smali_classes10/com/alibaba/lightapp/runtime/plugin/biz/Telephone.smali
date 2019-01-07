.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Telephone.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TRACE_MODULE:Ljava/lang/String; = "tele_conf"


# instance fields
.field private mCallCallbackId:Ljava/lang/String;

.field private mCallMenuCallbackId:Ljava/lang/String;

.field mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->createFreeCall(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;ZZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->createCallMenu(ZZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->createSystemCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->createBizCall(Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->createFreeCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->failCallback(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->showQuickcallMenu(Ljava/lang/String;Lcma;)V

    return-void
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Long;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/util/List;

    .prologue
    .line 67
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->showQuickcallListMenu(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private createBizCall(Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    const-class v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    invoke-static {v1}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    .line 253
    .local v0, "createCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;->createBizCall(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 254
    return-void
.end method

.method private createCallMenu(ZZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 8
    .param p1, "showDingCall"    # Z
    .param p2, "isSupportBiz"    # Z
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "telBizNumInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v6, "result":Lorg/json/JSONObject;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v7, "menuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhdn$k;->call_menu_clipboard:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhdn$k;->dt_conference_single_normalcall:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    if-eqz p1, :cond_0

    .line 293
    if-eqz p2, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhdn$k;->dt_smart_bizcall:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 302
    .local v2, "menus":[Ljava/lang/String;
    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 304
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;

    move-object v1, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;[Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
    return-void

    .line 298
    .end local v2    # "menus":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lhdn$k;->dt_conference_business_call:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createFreeCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "mobile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    const-class v2, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    invoke-static {v2}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    .line 212
    .local v1, "profileProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$3;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)V

    .line 234
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v1, p1, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;->createUserByMobile(Ljava/lang/String;Lcma;)V

    .line 235
    return-void
.end method

.method private createFreeCall(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 164
    :cond_1
    const-class v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    invoke-static {v1}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    .line 165
    .local v0, "userProfileProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;->getUserProfileList(Ljava/util/List;Lhqu;)V

    goto :goto_0
.end method

.method private createSystemCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "mobile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 242
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 243
    const-class v2, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    invoke-static {v2}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;

    .line 244
    .local v1, "createCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-interface {v1, v0, p1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;->createSystemCall(Landroid/app/Activity;Ljava/lang/String;)V

    .line 246
    .end local v1    # "createCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/CreateCallProxy;
    :cond_0
    return-void
.end method

.method private failCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorReason"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 411
    .local v1, "error":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 412
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    invoke-virtual {p0, v1, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 417
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getUidByStaffIdList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    .local p2, "stafflist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 141
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidListByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    goto :goto_0
.end method

.method private showQuickcallListMenu(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/Long;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "agentId"    # Ljava/lang/String;
    .param p6, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 569
    .local p7, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 570
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_0

    instance-of v0, v2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 571
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 638
    :cond_0
    return-void
.end method

.method private showQuickcallMenu(Ljava/lang/String;Lcma;)V
    .locals 6
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 480
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 481
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 482
    const-class v2, Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfQuickCallProxy;

    invoke-static {v2}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfQuickCallProxy;

    .line 483
    .local v1, "quickCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfQuickCallProxy;
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-interface {v1, v0, p1, p2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfQuickCallProxy;->quickCall(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    .line 488
    .end local v1    # "quickCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfQuickCallProxy;
    :goto_0
    return-void

    .line 485
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    const-string/jumbo v5, "context is not activity"

    .line 486
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    .line 485
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryCreateSupportBizCallMenu(ZLjava/lang/String;)V
    .locals 2
    .param p1, "showDingCall"    # Z
    .param p2, "number"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Lcma;)V

    .line 280
    return-void
.end method


# virtual methods
.method public call(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 16
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallCallbackId:Ljava/lang/String;

    .line 96
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v7, "staffIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 100
    invoke-virtual {v11, v12}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v5

    .line 101
    .local v5, "session":Lhqe$d;
    if-eqz v5, :cond_0

    .line 1488
    iget-object v6, v5, Lhqe$d;->b:Ljava/lang/String;

    .line 102
    .local v6, "sessionCorpId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v12, "corpId"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "argCorpId":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 104
    move-object v2, v1

    .line 115
    .local v2, "corpId":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v12, "users"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 116
    .local v9, "staffIdsObj":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 117
    .local v10, "uidsLength":I
    if-gtz v10, :cond_3

    .line 118
    new-instance v11, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v12, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 135
    .end local v1    # "argCorpId":Ljava/lang/String;
    .end local v2    # "corpId":Ljava/lang/String;
    .end local v5    # "session":Lhqe$d;
    .end local v6    # "sessionCorpId":Ljava/lang/String;
    .end local v9    # "staffIdsObj":Lorg/json/JSONArray;
    .end local v10    # "uidsLength":I
    :goto_2
    return-object v11

    .line 101
    .restart local v5    # "session":Lhqe$d;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 106
    .restart local v1    # "argCorpId":Ljava/lang/String;
    .restart local v6    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 107
    move-object v2, v6

    .restart local v2    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 109
    .end local v2    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v11, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v12, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v13, 0x8

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "invalid corpId: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 110
    invoke-static {v13, v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 126
    .end local v1    # "argCorpId":Ljava/lang/String;
    .end local v5    # "session":Lhqe$d;
    .end local v6    # "sessionCorpId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    new-instance v11, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v12, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_2

    .line 120
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v1    # "argCorpId":Ljava/lang/String;
    .restart local v2    # "corpId":Ljava/lang/String;
    .restart local v5    # "session":Lhqe$d;
    .restart local v6    # "sessionCorpId":Ljava/lang/String;
    .restart local v9    # "staffIdsObj":Lorg/json/JSONArray;
    .restart local v10    # "uidsLength":I
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v10, :cond_5

    .line 121
    :try_start_1
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "staffId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 123
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 131
    .end local v8    # "staffId":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getUidByStaffIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 135
    :cond_6
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v11

    goto :goto_2
.end method

.method public callOrgExternalContacts(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 382
    :try_start_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "corpId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "corpId":Ljava/lang/String;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "calledStaffId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "calledStaffId":Ljava/lang/String;
    const-class v4, Lcom/alibaba/lightapp/runtime/idl/CallIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/idl/CallIService;

    .line 386
    .local v3, "service":Lcom/alibaba/lightapp/runtime/idl/CallIService;
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v3, v1, v0, v4}, Lcom/alibaba/lightapp/runtime/idl/CallIService;->callOrgContacts(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v0    # "calledStaffId":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "service":Lcom/alibaba/lightapp/runtime/idl/CallIService;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    return-object v4

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 402
    const/4 v4, 0x2

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->failCallback(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkBizCall(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 644
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    .line 646
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "corpId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 648
    const/4 v4, 0x2

    const-string/jumbo v5, "corpId parameter null"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 649
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "corpId parameter null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    .line 701
    :goto_0
    return-object v4

    .line 654
    :cond_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 655
    invoke-virtual {v4, v5}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v2

    .line 656
    .local v2, "session":Lhqe$d;
    if-eqz v2, :cond_1

    .line 2488
    iget-object v3, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 657
    .local v3, "sessionCorpId":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    .line 658
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 659
    const/4 v4, 0x7

    const-string/jumbo v5, "corpId parameter null"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 660
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "corpId Invalid"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto :goto_0

    .line 656
    .end local v3    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 664
    .restart local v3    # "sessionCorpId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 665
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_3

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 666
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 701
    :goto_2
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto :goto_0

    .line 699
    :cond_3
    const/4 v4, 0x3

    const-string/jumbo v5, "context null"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 81
    const-class v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v0}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 88
    return-void
.end method

.method public quickCall(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 439
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    .line 440
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "phoneNumber"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    const/4 v1, 0x2

    const-string/jumbo v2, "phoneNumber parameter null"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 472
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 445
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public quickCallList(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 21
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 494
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    .line 496
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "title"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "content"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, "content":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "corpId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 499
    .local v8, "corpId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "staffId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 500
    .local v20, "staffId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "phoneNumber"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "phoneNumber":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "agentId"

    const-string/jumbo v11, ""

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 503
    .local v18, "agentId1":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->appInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$a;

    if-nez v2, :cond_0

    const-string/jumbo v19, ""

    .line 506
    .local v19, "agentId2":Ljava/lang/String;
    :goto_0
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v7, v18

    .line 508
    .local v7, "agentId":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "typeList"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 509
    const/4 v2, 0x2

    const-string/jumbo v10, "typeList parameter null"

    invoke-static {v2, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v2, "tele_conf"

    sget-object v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "typeList parameter null"

    invoke-static {v2, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    .line 561
    :goto_2
    return-object v2

    .line 503
    .end local v7    # "agentId":Ljava/lang/String;
    .end local v19    # "agentId2":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->appInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$a;

    iget-object v0, v2, Lcom/alibaba/lightapp/runtime/ActionRequest$a;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_0

    .restart local v19    # "agentId2":Ljava/lang/String;
    :cond_1
    move-object/from16 v7, v19

    .line 506
    goto :goto_1

    .line 516
    .restart local v7    # "agentId":Ljava/lang/String;
    :cond_2
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "typeList"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v10, Ljava/lang/Integer;

    invoke-static {v2, v10}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 522
    .local v9, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_3
    if-nez v9, :cond_3

    .line 523
    const-string/jumbo v2, "tele_conf"

    sget-object v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "typeList parameter null"

    invoke-static {v2, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v2, 0x2

    const-string/jumbo v10, "typeList parameter null"

    invoke-static {v2, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_2

    .line 518
    .end local v9    # "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    const/4 v9, 0x0

    .line 519
    .restart local v9    # "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v2, "tele_conf"

    sget-object v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "typeList parameter parse Exception"

    invoke-static {v2, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 529
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 530
    const-string/jumbo v2, "tele_conf"

    sget-object v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "corpId must\'t be null"

    invoke-static {v2, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v2, 0x5

    const-string/jumbo v10, "corpId must\'t be null"

    invoke-static {v2, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 561
    :goto_4
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto/16 :goto_2

    .line 533
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 534
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, "uid":Ljava/lang/Long;
    move-object/from16 v2, p0

    .line 535
    invoke-direct/range {v2 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->showQuickcallListMenu(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    .line 536
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    if-eqz v2, :cond_6

    .line 538
    move-object/from16 v17, v9

    .line 540
    .local v17, "menuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;

    move-object/from16 v11, p0

    move-object v12, v3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, v20

    invoke-interface {v2, v8, v0, v10}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidByCorpIdAndStaffId(Ljava/lang/String;Ljava/lang/String;Lhqu;)V

    goto :goto_4

    .line 556
    .end local v17    # "menuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    const-string/jumbo v2, "tele_conf"

    sget-object v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "parameter null"

    invoke-static {v2, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v2, 0x2

    const-string/jumbo v10, "parameter null"

    invoke-static {v2, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public showCallMenu(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 363
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    .line 364
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "phoneNumber"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "number":Ljava/lang/String;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "showDingCall"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 367
    .local v1, "showDingCall":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    const/4 v2, 0x2

    const-string/jumbo v3, "phoneNumber parameter null"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->mCallMenuCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 373
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    return-object v2

    .line 370
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->tryCreateSupportBizCallMenu(ZLjava/lang/String;)V

    goto :goto_0
.end method
