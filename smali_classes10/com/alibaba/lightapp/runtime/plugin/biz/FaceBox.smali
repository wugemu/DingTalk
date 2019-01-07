.class public Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "FaceBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    }
.end annotation


# static fields
.field private static final CANCEL_CODE:Ljava/lang/String; = "-1"

.field private static final MODULE:Ljava/lang/String; = "FaceRecord"

.field private static final SUCCESS_CODE:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "FaceBox"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private requestIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->requestIdMap:Ljava/util/HashMap;

    .line 799
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->requestIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->showRemindDialog(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->getErrorMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private getErrorMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 519
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    const/4 v2, 0x0

    .line 529
    :goto_0
    return-object v2

    .line 522
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 524
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 533
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$8;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 581
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 582
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "face_record_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 584
    return-void
.end method

.method private showRemindDialog(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V
    .locals 4
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 593
    const-class v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;

    invoke-static {v1}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;

    .line 594
    .local v0, "orgEmployeeProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;
    iget-object v1, p2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->corpId:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->users:Ljava/util/List;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;->queryUserIdentityObjectList(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    .line 618
    return-void
.end method

.method private showRemindDialog(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V
    .locals 15
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p3, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 624
    .local p2, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 625
    .local v8, "context":Landroid/content/Context;
    if-eqz v8, :cond_0

    instance-of v1, v8, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 626
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    const-string/jumbo v5, "invaild status"

    .line 627
    invoke-static {v3, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 626
    move-object/from16 v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 704
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 631
    .local v9, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lhdn$i;->facebox_remind_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 633
    .local v13, "view":Landroid/view/View;
    sget v1, Lhdn$h;->et_content:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 634
    .local v4, "editText":Landroid/widget/EditText;
    sget v1, Lhdn$h;->ding_attachment_iv_icon:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    .line 635
    .local v10, "ivIcon":Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;
    sget v1, Lhdn$h;->ding_attachment_title:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 636
    .local v12, "titleText":Landroid/widget/TextView;
    sget v1, Lhdn$h;->ding_attachment_content:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 638
    .local v11, "msgText":Landroid/widget/TextView;
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->title:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->text:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->image:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Ljava/lang/String;I)V

    .line 643
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 644
    .local v7, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->title:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v7, v13}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 646
    sget v1, Lhdn$k;->at_cancel:I

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$10;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$10;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 652
    sget v14, Lhdn$k;->at_send:I

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$11;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;Landroid/widget/EditText;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v7, v14, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 702
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private startRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .param p2, "fromPartner"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 98
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    invoke-static {v5, v6}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    .line 99
    .local v1, "recordModel":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    if-nez v1, :cond_0

    .line 100
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "json parse is null "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "recordModel":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    :goto_0
    return-object v5

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "recordModel":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    :cond_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 108
    invoke-virtual {v5, v6}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v3

    .line 109
    .local v3, "session":Lhqe$d;
    if-eqz v3, :cond_1

    .line 1488
    iget-object v4, v3, Lhqe$d;->b:Ljava/lang/String;

    .line 111
    .local v4, "sessionCorpId":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->corpId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v7, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "invalid corpId: "

    aput-object v9, v8, v10

    iget-object v9, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->corpId:Ljava/lang/String;

    aput-object v9, v8, v11

    .line 113
    invoke-static {v8}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 109
    .end local v4    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 116
    .restart local v4    # "sessionCorpId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "requestUUID":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->requestIdMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    if-eqz p2, :cond_4

    .line 120
    iget-object v5, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->source:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "invalid source: "

    aput-object v8, v7, v10

    iget-object v8, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->source:Ljava/lang/String;

    aput-object v8, v7, v11

    .line 122
    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 124
    :cond_3
    iget-object v5, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->source:Ljava/lang/String;

    const-string/jumbo v6, "ISV_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 125
    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "ISV_"

    aput-object v6, v5, v10

    iget-object v6, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->source:Ljava/lang/String;

    aput-object v6, v5, v11

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->source:Ljava/lang/String;

    .line 129
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;

    invoke-direct {v7, p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Landroid/content/Context;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 150
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 590
    :cond_0
    return-void
.end method


# virtual methods
.method public experienceFunction(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 458
    const-string/jumbo v8, "FaceRecord"

    const-string/jumbo v9, "FaceBox"

    const-string/jumbo v10, "[FaceRecord] action experienceFunction"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 461
    .local v4, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v8

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 462
    invoke-virtual {v8, v9}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v6

    .line 463
    .local v6, "session":Lhqe$d;
    if-eqz v6, :cond_0

    .line 6488
    iget-object v7, v6, Lhqe$d;->b:Ljava/lang/String;

    .line 465
    .local v7, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "corpId"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "argCorpId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 467
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v10, 0x8

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "invalid corpId: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    .line 468
    invoke-static {v11}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 515
    :goto_1
    return-object v8

    .line 463
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v7    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 472
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v7    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;

    invoke-static {v8, v9}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;

    .line 473
    .local v5, "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;
    if-nez v5, :cond_2

    .line 474
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "experienceFunction json parse is null "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 510
    .end local v5    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    const-string/jumbo v8, "FaceRecord"

    const-string/jumbo v9, "FaceBox"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "[FaceRecord] experienceFunction exception,"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "exception,"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_1

    .line 476
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;
    :cond_2
    :try_start_1
    new-instance v3, Lhir;

    invoke-direct {v3}, Lhir;-><init>()V

    .line 477
    .local v3, "experienceModel":Lhir;
    iget-object v8, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;->corpId:Ljava/lang/String;

    iput-object v8, v3, Lhir;->b:Ljava/lang/String;

    .line 478
    iget v8, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;->microAppAgentId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v3, Lhir;->a:Ljava/lang/Integer;

    .line 479
    iget-object v8, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;->deviceId:Ljava/lang/String;

    iput-object v8, v3, Lhir;->c:Ljava/lang/String;

    .line 480
    iget-object v8, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoExperienceModel;->function:Ljava/lang/String;

    iput-object v8, v3, Lhir;->d:Ljava/lang/String;

    .line 482
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 484
    .local v1, "callbackId":Ljava/lang/String;
    const-class v8, Lcom/alibaba/lightapp/runtime/idl/DidoOpenIService;

    invoke-static {v8}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/lightapp/runtime/idl/DidoOpenIService;

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$7;

    invoke-direct {v9, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V

    invoke-interface {v8, v3, v9}, Lcom/alibaba/lightapp/runtime/idl/DidoOpenIService;->experienceFunction(Lhir;Liyv;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 515
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public getRecognition(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "deviceUid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "deviceUid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Ljava/lang/String;Lcma;)V

    .line 316
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 86
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->registerReceiver()V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 92
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->unregisterReceiver()V

    .line 93
    return-void
.end method

.method public removeFace(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    .line 221
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    invoke-static {v5, v6}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    .line 222
    .local v2, "recordModel":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    if-nez v2, :cond_0

    .line 223
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "json parse is null "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 224
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v2    # "recordModel":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    :goto_0
    return-object v5

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "recordModel":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    :cond_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 232
    invoke-virtual {v5, v6}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v3

    .line 233
    .local v3, "session":Lhqe$d;
    if-eqz v3, :cond_1

    .line 3488
    iget-object v4, v3, Lhqe$d;->b:Ljava/lang/String;

    .line 235
    .local v4, "sessionCorpId":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->corpId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 236
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v7, 0x8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "invalid corpId: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->corpId:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 237
    invoke-static {v8}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 233
    .end local v4    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 240
    .restart local v4    # "sessionCorpId":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;-><init>()V

    .line 241
    .local v1, "model":Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->corpId:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->corpId:Ljava/lang/String;

    .line 242
    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->groupId:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->groupId:Ljava/lang/String;

    .line 243
    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->userId:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->userId:Ljava/lang/String;

    .line 244
    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->deviceUid:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->deviceUid:Ljava/lang/String;

    .line 245
    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->source:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->source:Ljava/lang/String;

    .line 247
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$3;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v5, v1, v6}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lcma;)V

    .line 277
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto :goto_0
.end method

.method public sendMessageToContact(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 395
    const-string/jumbo v8, "FaceRecord"

    const-string/jumbo v9, "FaceBox"

    const-string/jumbo v10, "action sendMessageToContact"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 398
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v8

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 399
    invoke-virtual {v8, v9}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v6

    .line 400
    .local v6, "session":Lhqe$d;
    if-eqz v6, :cond_0

    .line 5488
    iget-object v7, v6, Lhqe$d;->b:Ljava/lang/String;

    .line 402
    .local v7, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "corpId"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "argCorpId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 404
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v10, 0x8

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "invalid corpId: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    .line 405
    invoke-static {v11}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 453
    :goto_1
    return-object v8

    .line 400
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v7    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 409
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v7    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;

    invoke-static {v8, v9}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;

    .line 410
    .local v5, "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;
    if-nez v5, :cond_2

    .line 411
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "sendMessageToContact json parse is null "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 448
    .end local v5    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    const-string/jumbo v8, "FaceRecord"

    const-string/jumbo v9, "FaceBox"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "[FaceRecord] sendMessageToContact exception,"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "exception,"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_1

    .line 413
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;
    :cond_2
    :try_start_1
    new-instance v4, Lhis;

    invoke-direct {v4}, Lhis;-><init>()V

    .line 414
    .local v4, "messageModel":Lhis;
    iget-object v8, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;->corpId:Ljava/lang/String;

    iput-object v8, v4, Lhis;->b:Ljava/lang/String;

    .line 415
    iget-object v8, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;->content:Ljava/lang/String;

    iput-object v8, v4, Lhis;->e:Ljava/lang/String;

    .line 416
    iget-object v8, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;->messageTemplate:Ljava/lang/String;

    iput-object v8, v4, Lhis;->d:Ljava/lang/String;

    .line 417
    iget v8, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;->microAppAgentId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v4, Lhis;->a:Ljava/lang/Integer;

    .line 418
    iget-object v8, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsDidoMessageModel;->userId:Ljava/lang/String;

    iput-object v8, v4, Lhis;->c:Ljava/lang/String;

    .line 420
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 422
    .local v1, "callbackId":Ljava/lang/String;
    const-class v8, Lcom/alibaba/lightapp/runtime/idl/DidoOpenIService;

    invoke-static {v8}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/lightapp/runtime/idl/DidoOpenIService;

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;

    invoke-direct {v9, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V

    invoke-interface {v8, v4, v9}, Lcom/alibaba/lightapp/runtime/idl/DidoOpenIService;->sendMessageToContact(Lhis;Liyv;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public setRecognition(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 324
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "deviceUid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "deviceUid":Ljava/lang/String;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "mode"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 326
    .local v1, "mode":I
    if-ne v1, v4, :cond_0

    .line 327
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 360
    :goto_0
    return-object v2

    .line 330
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$5;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Ljava/lang/String;ILcma;)V

    .line 360
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public showRemind(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    .line 368
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 369
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v6

    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 370
    invoke-virtual {v6, v7}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v4

    .line 371
    .local v4, "session":Lhqe$d;
    if-eqz v4, :cond_0

    .line 4488
    iget-object v5, v4, Lhqe$d;->b:Ljava/lang/String;

    .line 373
    .local v5, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "corpId"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "argCorpId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 375
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v8, 0x8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "invalid corpId: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    .line 376
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 390
    :goto_1
    return-object v6

    .line 371
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v5    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 379
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v5    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    invoke-static {v6, v7}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    .line 380
    .local v3, "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;
    if-eqz v3, :cond_2

    iget-object v6, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->users:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;->users:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 381
    :cond_2
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v8, 0x3

    const-string/jumbo v9, "invalid arguments"

    .line 382
    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 381
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;
    :goto_2
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    goto :goto_1

    .line 384
    .restart local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;
    :cond_3
    :try_start_1
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->showRemindDialog(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 386
    .end local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 388
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 387
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public startCameraRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->startRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public startCameraRecordFromPartner(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->startRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public startPictureRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    .line 175
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    invoke-static {v5, v6}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    .line 176
    .local v1, "recordModel":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    if-nez v1, :cond_0

    .line 177
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "json parse is null "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 178
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "recordModel":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    :goto_0
    return-object v5

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "recordModel":Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;
    :cond_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 186
    invoke-virtual {v5, v6}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v3

    .line 187
    .local v3, "session":Lhqe$d;
    if-eqz v3, :cond_1

    .line 2488
    iget-object v4, v3, Lhqe$d;->b:Ljava/lang/String;

    .line 189
    .local v4, "sessionCorpId":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->corpId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 190
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v7, 0x8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "invalid corpId: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->corpId:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 191
    invoke-static {v8}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 187
    .end local v4    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 194
    .restart local v4    # "sessionCorpId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "requestUUID":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->requestIdMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;

    invoke-direct {v7, p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Landroid/content/Context;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 211
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto :goto_0
.end method
