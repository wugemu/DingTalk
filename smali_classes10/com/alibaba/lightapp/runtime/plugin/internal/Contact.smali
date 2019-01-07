.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Contact.java"


# static fields
.field private static final COMPLEX_CHOOSE_PEOPLE_MAX_LIMIT:I = 0x5dc

.field private static final INTERFACE_SOURCE_COMPLEXCHOOSE_V2:Ljava/lang/String; = "internal_source_choose_contact"

.field private static final START_WITH_FOOT_DEPARTMENT:I = 0x0

.field private static final START_WITH_MYSELF_DEPARTMENT:I = -0x1

.field private static final START_WITH_OTHER_DEPARTMENT:I = -0x2


# instance fields
.field private mContactChooseCallbackName:Ljava/lang/String;

.field private mMobileContactChooseCallbackName:Ljava/lang/String;

.field private mOrgAddressChooseCallbackName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->chooseMobileContactCallback(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->chooseOrgAddressCallback(Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->contactChooseCallback(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Z
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # I
    .param p10, "x8"    # Z
    .param p11, "x9"    # Z
    .param p12, "x10"    # Z
    .param p13, "x11"    # Z
    .param p14, "x12"    # Z
    .param p15, "x13"    # Z
    .param p16, "x14"    # Z
    .param p17, "x15"    # Z
    .param p18, "x16"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p19, "x17"    # Ljava/util/List;
    .param p20, "x18"    # Ljava/util/List;
    .param p21, "x19"    # Ljava/util/List;
    .param p22, "x20"    # Ljava/util/List;
    .param p23, "x21"    # Ljava/util/List;
    .param p24, "x22"    # Ljava/util/List;

    .prologue
    .line 73
    invoke-direct/range {p0 .. p24}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Z
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # I
    .param p10, "x8"    # Z
    .param p11, "x9"    # Z
    .param p12, "x10"    # Z
    .param p13, "x11"    # Z
    .param p14, "x12"    # Z
    .param p15, "x13"    # Z
    .param p16, "x14"    # Z
    .param p17, "x15"    # Z
    .param p18, "x16"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p19, "x17"    # Ljava/util/List;
    .param p20, "x18"    # Ljava/util/List;
    .param p21, "x19"    # Ljava/util/List;
    .param p22, "x20"    # Ljava/util/List;
    .param p23, "x21"    # Ljava/util/List;
    .param p24, "x22"    # Ljava/util/List;
    .param p25, "x23"    # Lcnf$a;

    .prologue
    .line 73
    invoke-direct/range {p0 .. p25}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private chooseMobileContactCallback(Ljava/util/List;)V
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 259
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 260
    .local v3, "result":Lorg/json/JSONObject;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 263
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_0

    .line 264
    const-string/jumbo v4, "name"

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string/jumbo v4, "mobile"

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string/jumbo v4, "email"

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string/jumbo v4, "mediaId"

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v4, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .local v2, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :goto_0
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mMobileContactChooseCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 279
    return-void

    .line 270
    .end local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 272
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    .line 273
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 274
    .restart local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_0

    .line 276
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_1
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v4, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .restart local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_0
.end method

.method private chooseOrgAddressCallback(Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;)V
    .locals 6
    .param p1, "orgEcAddressObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 500
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 501
    .local v2, "result":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 503
    :try_start_0
    const-string/jumbo v3, "addressId"

    iget v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->addressId:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    const-string/jumbo v3, "name"

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string/jumbo v3, "detailAddress"

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->detailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string/jumbo v3, "province"

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->province:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string/jumbo v3, "city"

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->city:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string/jumbo v3, "area"

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->area:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .local v1, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mOrgAddressChooseCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 519
    return-void

    .line 510
    .end local v1    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 512
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x3

    .line 513
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 512
    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 514
    .restart local v1    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_0

    .line 516
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .restart local v1    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_0
.end method

.method private contactChooseCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 155
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->initComplexChooseCallbackValue(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 158
    :cond_1
    return-void
.end method

.method public static decodeUid(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "encryptionUid"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 249
    .local v1, "uid":Ljava/lang/Long;
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 251
    .local v0, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 254
    .end local v0    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static encodeUid(Ljava/lang/Long;)Ljava/lang/String;
    .locals 6
    .param p0, "uid"    # Ljava/lang/Long;

    .prologue
    .line 235
    const-string/jumbo v1, ""

    .line 237
    .local v1, "encodedUid":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/laiwang/protocol/media/MediaId;

    sget-object v3, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v2, v3}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 238
    .local v2, "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 239
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFrom(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "codedUid":Ljava/lang/String;
    const-string/jumbo v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 243
    .end local v0    # "codedUid":Ljava/lang/String;
    .end local v2    # "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v2

    .line 314
    .local v2, "session":Lhqe$d;
    if-eqz v2, :cond_1

    .line 1488
    iget-object v3, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 315
    .local v3, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "corpId"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "argCorpId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 318
    .local v1, "corpId":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 319
    move-object v1, v0

    .line 323
    :cond_0
    :goto_1
    return-object v1

    .line 314
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 320
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v1    # "corpId":Ljava/lang/String;
    .restart local v3    # "sessionCorpId":Ljava/lang/String;
    :cond_2
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    move-object v1, v3

    goto :goto_1
.end method

.method private getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;
    .locals 12
    .param p1, "jsonArrayDepartments"    # Lorg/json/JSONArray;
    .param p2, "orgId"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v2, "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_4

    .line 527
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 528
    .local v5, "jsonArrayLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_4

    .line 529
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    .line 530
    .local v6, "object":Ljava/lang/Object;
    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 531
    .local v8, "tempOrgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iput-wide p2, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 534
    const/4 v7, 0x0

    .line 535
    .local v7, "temp":Lorg/json/JSONObject;
    :try_start_0
    instance-of v9, v6, Lorg/json/JSONObject;

    if-eqz v9, :cond_1

    .line 537
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v7, v0

    .line 548
    .end local v6    # "object":Ljava/lang/Object;
    :goto_1
    if-eqz v7, :cond_0

    .line 549
    const-string/jumbo v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 550
    const-string/jumbo v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 554
    :goto_2
    const-string/jumbo v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 555
    const-string/jumbo v9, "number"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_0
    :goto_3
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 538
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 542
    check-cast v6, Ljava/lang/String;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 558
    :catch_0
    move-exception v4

    .line 559
    .local v4, "je":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 545
    .end local v4    # "je":Ljava/lang/Exception;
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_2
    :try_start_2
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    goto :goto_1

    .line 552
    :cond_3
    const-string/jumbo v9, "deptId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 565
    .end local v3    # "i":I
    .end local v5    # "jsonArrayLength":I
    .end local v7    # "temp":Lorg/json/JSONObject;
    .end local v8    # "tempOrgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_4
    return-object v2
.end method

.method private getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .param p1, "jsonArrayUsers"    # Lorg/json/JSONArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 578
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v4, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 580
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 581
    .local v2, "jsonArrayLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 582
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "element":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 585
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v5, "emplId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v3    # "object":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    :catch_0
    move-exception v5

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 591
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "jsonArrayLength":I
    :cond_0
    return-object v4
.end method

.method private initChooseFriendsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->initChooseFriendsCallbackValue(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private initChooseFriendsCallbackValue(Ljava/util/List;Z)Lorg/json/JSONArray;
    .locals 8
    .param p2, "returnCompanyName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 209
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_2

    .line 210
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 211
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "name"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v5, "encryptionUid"

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->encodeUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 216
    const-string/jumbo v5, "avatar"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mediaIdtoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    :goto_1
    const-string/jumbo v5, "emplId"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    if-eqz p2, :cond_0

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 222
    const-string/jumbo v5, "orgName"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "avatar"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 231
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    return-object v2
.end method

.method private initComplexChooseCallbackValue(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "departments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v6, "selectedUsersAndDep":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->initChooseFriendsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    .line 164
    .local v4, "profilesJsonArray":Lorg/json/JSONArray;
    const-string/jumbo v7, "users"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 166
    .local v5, "selectedCount":I
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 167
    .local v0, "departmentJsonArray":Lorg/json/JSONArray;
    if-eqz p2, :cond_1

    .line 168
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 169
    .local v3, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v3, :cond_0

    .line 172
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v8, "id"

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-virtual {v2, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 174
    const-string/jumbo v8, "name"

    iget-object v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string/jumbo v8, "number"

    iget v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    iget v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    add-int/2addr v5, v8

    .line 177
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v0    # "departmentJsonArray":Lorg/json/JSONArray;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v4    # "profilesJsonArray":Lorg/json/JSONArray;
    .end local v5    # "selectedCount":I
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 185
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v6

    .line 180
    .restart local v0    # "departmentJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "profilesJsonArray":Lorg/json/JSONArray;
    .restart local v5    # "selectedCount":I
    :cond_1
    :try_start_1
    const-string/jumbo v7, "departments"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string/jumbo v7, "selectedCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static mediaIdtoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    .end local p0    # "mediaId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 192
    .restart local p0    # "mediaId":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 26
    .param p1, "orgId"    # J
    .param p3, "departmentId"    # I
    .param p4, "labelId"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "multiple"    # Z
    .param p8, "limitTips"    # Ljava/lang/String;
    .param p9, "maxUsers"    # I
    .param p10, "responseUserOnly"    # Z
    .param p11, "showRootOrg"    # Z
    .param p12, "enableAutoJumpDepart"    # Z
    .param p13, "showFriendPick"    # Z
    .param p14, "showMobileContactPick"    # Z
    .param p15, "showOrgRelationPick"    # Z
    .param p16, "showLabelPick"    # Z
    .param p17, "showExtContactPick"    # Z
    .param p18, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZZZZZZZZ",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p19, "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p20, "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p21, "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p22, "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p23, "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p24, "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    invoke-direct/range {v0 .. v25}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V

    .line 623
    return-void
.end method

.method private navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "departmentId"    # I
    .param p4, "labelId"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "multiple"    # Z
    .param p8, "limitTips"    # Ljava/lang/String;
    .param p9, "maxUsers"    # I
    .param p10, "responseUserOnly"    # Z
    .param p11, "showRootOrg"    # Z
    .param p12, "enableAutoJumpDepart"    # Z
    .param p13, "showFriendPick"    # Z
    .param p14, "showMobileContactPick"    # Z
    .param p15, "showOrgRelationPick"    # Z
    .param p16, "showLabelPick"    # Z
    .param p17, "showExtContactPick"    # Z
    .param p18, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p25, "fileDescriptorWrapper"    # Lcnf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZZZZZZZZ",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Lcnf$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 651
    .local p19, "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p20, "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p21, "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p22, "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p23, "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p24, "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 652
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 653
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, -0x1

    const-string/jumbo v6, "Invalid context"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 735
    .end local p19    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p20    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p21    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p22    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local p23    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local p24    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 657
    .restart local p19    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p20    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p21    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p22    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p23    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p24    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 659
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz p7, :cond_e

    .line 660
    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 664
    :goto_1
    const-string/jumbo v3, "choose_people_action"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 665
    const-string/jumbo v3, "count_limit"

    move/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 666
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 667
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->contact_choose_limit:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p8

    .line 669
    :cond_2
    const-string/jumbo v3, "count_limit_str"

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 672
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->ding_create_select_user:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 674
    :cond_3
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string/jumbo v3, "org_request_from_source_type"

    const-string/jumbo v4, "internal_source_choose_contact"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    if-eqz p11, :cond_f

    .line 677
    const-string/jumbo v3, "choose_enterprise_oid"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 683
    :goto_2
    const-string/jumbo v3, "intent_key_enable_auto_jump_depart"

    move/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 684
    const-string/jumbo v3, "key_need_change_dept"

    move/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 686
    const-string/jumbo v3, "filter_myself"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 687
    const/4 v3, -0x1

    if-ne p3, v3, :cond_10

    .line 688
    const-string/jumbo v3, "org_start_type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 693
    :cond_4
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_5

    .line 694
    const-string/jumbo v3, "intent_key_label_id"

    invoke-virtual {v2, v3, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 696
    :cond_5
    if-eqz p18, :cond_6

    .line 697
    const-string/jumbo v3, "intent_key_filter_model"

    move-object/from16 v0, p18

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 700
    :cond_6
    if-eqz p19, :cond_7

    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 701
    const-string/jumbo v3, "seleced_members"

    check-cast p19, Ljava/util/ArrayList;

    .end local p19    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p19

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 703
    :cond_7
    if-eqz p20, :cond_8

    invoke-interface/range {p20 .. p20}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 704
    const-string/jumbo v3, "unchecked_users"

    check-cast p20, Ljava/util/ArrayList;

    .end local p20    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p20

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 706
    :cond_8
    if-eqz p21, :cond_9

    invoke-interface/range {p21 .. p21}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 707
    const-string/jumbo v3, "key_request_select_user_list"

    check-cast p21, Ljava/util/ArrayList;

    .end local p21    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p21

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 709
    :cond_9
    if-eqz p22, :cond_a

    invoke-interface/range {p22 .. p22}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 710
    const-string/jumbo v3, "seleced_departments"

    check-cast p22, Ljava/util/ArrayList;

    .end local p22    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p22

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 712
    :cond_a
    if-eqz p23, :cond_b

    invoke-interface/range {p23 .. p23}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 713
    const-string/jumbo v3, "unchecked_departments"

    check-cast p23, Ljava/util/ArrayList;

    .end local p23    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p23

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 715
    :cond_b
    if-eqz p24, :cond_c

    invoke-interface/range {p24 .. p24}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 716
    const-string/jumbo v3, "key_request_select_dept_list"

    check-cast p24, Ljava/util/ArrayList;

    .end local p24    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p24

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 718
    :cond_c
    if-eqz p25, :cond_d

    .line 719
    const-string/jumbo v3, "memory_file_descriptor"

    .line 2044
    move-object/from16 v0, p25

    iget v4, v0, Lcnf$a;->a:I

    .line 719
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 720
    const-string/jumbo v3, "memory_file_size"

    .line 2048
    move-object/from16 v0, p25

    iget v4, v0, Lcnf$a;->b:I

    .line 720
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    :cond_d
    const-string/jumbo v3, "show_friends"

    move/from16 v0, p13

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 726
    const-string/jumbo v4, "hide_org_external"

    if-nez p17, :cond_11

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 728
    const-string/jumbo v3, "show_local_contact"

    move/from16 v0, p14

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 730
    const-string/jumbo v3, "show_org_relation_contact"

    move/from16 v0, p15

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 732
    const-string/jumbo v3, "show_label_contact"

    move/from16 v0, p16

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 734
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 662
    .restart local p19    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p20    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p21    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p22    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p23    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p24    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_e
    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 679
    :cond_f
    const-string/jumbo v3, "choose_enterprise_oid"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 680
    const-string/jumbo v3, "display_enterprise_oid"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_2

    .line 689
    :cond_10
    if-nez p3, :cond_4

    .line 690
    const-string/jumbo v3, "org_start_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 726
    .end local p19    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p20    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p21    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p22    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local p23    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local p24    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_11
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "com.workapp.choose.people.from.local.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "action_selected_org_address_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 151
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseMobileContact(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 283
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mMobileContactChooseCallbackName:Ljava/lang/String;

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->o(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 289
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1
.end method

.method public chooseOrgAddress(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mOrgAddressChooseCallbackName:Ljava/lang/String;

    .line 295
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "selectedAddressId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "selectedAddressIdStr":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "corpId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "corpId":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "subTitleTips"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "subTitleTips":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x5

    const-string/jumbo v8, "No corpId"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 309
    :goto_0
    return-object v5

    .line 303
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "intent_key_org_address_id"

    .line 1109
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 304
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    const-string/jumbo v5, "corp_id"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v5, "title"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string/jumbo v5, "intent_key_sub_title"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v6, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->w(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 309
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto :goto_0
.end method

.method public internalComplexPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 67
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 329
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 330
    :cond_0
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v22, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v23, 0x2

    const-string/jumbo v24, "No params"

    invoke-static/range {v23 .. v24}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 494
    :goto_0
    return-object v3

    .line 333
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "corpId"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 334
    .local v56, "corpId":Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v56

    .line 338
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    move-object/from16 v0, v56

    invoke-interface {v3, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v4

    .line 341
    .local v4, "orgId":J
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    .line 343
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "startWithDepartmentId"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 344
    .local v6, "deptId":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "title"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 345
    .local v9, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "multiple"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 346
    .local v10, "multiple":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "limitTips"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 347
    .local v11, "limitTips":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "maxUsers"

    const/16 v23, 0x5dc

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 348
    .local v12, "maxUsers":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "responseUserOnly"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 349
    .local v13, "responseUserOnly":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "appId"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 350
    .local v28, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "permissionType"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 351
    .local v61, "permissionType":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "labelId"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 352
    .local v7, "labelId":J
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "showRootOrg"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 353
    .local v14, "showRootOrg":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "enableAutoJumpDepart"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 355
    .local v15, "enableAutoJumpDepart":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "showFriendPick"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 356
    .local v16, "showFriendPick":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "showMobileContactPick"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 357
    .local v17, "showMobileContactPick":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "showOrgRelationPick"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 358
    .local v18, "showOrgRelationPick":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "showLabelPick"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 359
    .local v19, "showLabelPick":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "showExtContactPick"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 361
    .local v20, "showExtContactPick":Z
    const/16 v60, 0x0

    .line 362
    .local v60, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v61 .. v61}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 363
    :cond_3
    new-instance v60, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .end local v60    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-direct/range {v60 .. v60}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 364
    .restart local v60    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    move-object/from16 v0, v28

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 365
    move-object/from16 v0, v61

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    .line 367
    :cond_4
    move-object/from16 v21, v60

    .line 369
    .local v21, "filter":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "pickedUsers"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v63

    .line 370
    .local v63, "pickedUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "disabledUsers"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v58

    .line 371
    .local v58, "disabledUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "requiredUsers"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v65

    .line 372
    .local v65, "requiredUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "pickedDepartments"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v62

    .line 373
    .local v62, "pickedDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "disabledDepartments"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v57

    .line 374
    .local v57, "disabledDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v22, "requiredDepartments"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v64

    .line 376
    .local v64, "requiredDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v25

    .line 377
    .local v25, "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v26

    .line 378
    .local v26, "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v27

    .line 381
    .local v27, "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v52

    .line 382
    .local v52, "pickedUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v53

    .line 383
    .local v53, "disabledUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v54

    .line 386
    .local v54, "requiredUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v66, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v52, :cond_5

    .line 388
    move-object/from16 v0, v66

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    :cond_5
    if-eqz v53, :cond_6

    .line 391
    move-object/from16 v0, v66

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    :cond_6
    if-eqz v54, :cond_7

    .line 394
    move-object/from16 v0, v66

    move-object/from16 v1, v54

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    :cond_7
    invoke-interface/range {v66 .. v66}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 399
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v27}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 491
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 404
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v29, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v30, p0

    move-wide/from16 v31, v4

    move/from16 v33, v6

    move-wide/from16 v34, v7

    move-object/from16 v36, v9

    move/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v39, v12

    move/from16 v40, v13

    move/from16 v41, v14

    move/from16 v42, v15

    move/from16 v43, v16

    move/from16 v44, v17

    move/from16 v45, v18

    move/from16 v46, v19

    move/from16 v47, v20

    move-object/from16 v48, v21

    move-object/from16 v49, v25

    move-object/from16 v50, v26

    move-object/from16 v51, v27

    move-object/from16 v55, p1

    invoke-direct/range {v29 .. v55}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v66

    move-object/from16 v2, v29

    invoke-interface {v3, v0, v1, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 492
    .end local v6    # "deptId":I
    .end local v7    # "labelId":J
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "multiple":Z
    .end local v11    # "limitTips":Ljava/lang/String;
    .end local v12    # "maxUsers":I
    .end local v13    # "responseUserOnly":Z
    .end local v14    # "showRootOrg":Z
    .end local v15    # "enableAutoJumpDepart":Z
    .end local v16    # "showFriendPick":Z
    .end local v17    # "showMobileContactPick":Z
    .end local v18    # "showOrgRelationPick":Z
    .end local v19    # "showLabelPick":Z
    .end local v20    # "showExtContactPick":Z
    .end local v21    # "filter":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .end local v25    # "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v26    # "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v27    # "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v28    # "appId":Ljava/lang/String;
    .end local v52    # "pickedUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v53    # "disabledUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "requiredUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v57    # "disabledDepartments":Lorg/json/JSONArray;
    .end local v58    # "disabledUsers":Lorg/json/JSONArray;
    .end local v60    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .end local v61    # "permissionType":Ljava/lang/String;
    .end local v62    # "pickedDepartments":Lorg/json/JSONArray;
    .end local v63    # "pickedUsers":Lorg/json/JSONArray;
    .end local v64    # "requiredDepartments":Lorg/json/JSONArray;
    .end local v65    # "requiredUsers":Lorg/json/JSONArray;
    .end local v66    # "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v59

    .line 493
    .local v59, "e":Lorg/json/JSONException;
    invoke-virtual/range {v59 .. v59}, Lorg/json/JSONException;->printStackTrace()V

    .line 494
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v22, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v23, 0x3

    invoke-virtual/range {v59 .. v59}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 89
    const-class v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v0}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 90
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->registerReceiver()V

    .line 91
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->unregisterReceiver()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 98
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 99
    return-void
.end method
