.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Ding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsTaskInfo;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsConfInfo;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;
    }
.end annotation


# static fields
.field public static final IMAGE_TYPE:I = 0x1

.field public static final LINK_TYPE:I = 0x2


# instance fields
.field private mCallbackId:Ljava/lang/String;

.field private mCorpId:Ljava/lang/String;

.field private mDingReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 637
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->startCreateDingV1Activity(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->parseDate(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->parseTaskCCUsers(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->startActivity(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCorpId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCorpId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->getEncryptDingId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private buildDingAttachment(ILcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .locals 4
    .param p1, "type"    # I
    .param p2, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;-><init>()V

    .line 327
    .local v1, "result":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 328
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 329
    iget-object v2, p2, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->images:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    .line 330
    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    const/4 v1, 0x0

    .line 343
    .end local v1    # "result":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :cond_0
    :goto_0
    return-object v1

    .line 334
    .restart local v1    # "result":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :cond_1
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->LINK:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    .line 335
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingLinkObject;-><init>()V

    .line 336
    .local v0, "linkObject":Lcom/alibaba/android/ding/base/objects/DingLinkObject;
    iget-object v2, p2, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->title:Ljava/lang/String;

    .line 337
    iget-object v2, p2, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->url:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    .line 338
    iget-object v2, p2, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->image:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->picMediaId:Ljava/lang/String;

    .line 339
    iget-object v2, p2, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->text:Ljava/lang/String;

    .line 340
    sget-object v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->CType_OA:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->getValue()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    .line 341
    iput-object v0, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    goto :goto_0
.end method

.method private buildToUserIdentity(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 347
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p1, :cond_1

    .line 356
    :cond_0
    return-object v1

    .line 352
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 353
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getEncryptDingId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "dingId"    # J

    .prologue
    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v0, "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "dingId"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCorpId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 414
    .local v1, "encryptValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "dingId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private parseAttachment(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->parseUrlToMediaId(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    .line 111
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    if-eqz v0, :cond_0

    .line 112
    iget v0, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->type:I

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->buildDingAttachment(ILcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;)Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->sendToAttachment:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 114
    :cond_0
    return-void
.end method

.method private static parseDate(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;)J
    .locals 5
    .param p0, "dateModel"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;

    .prologue
    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 280
    .local v2, "time":J
    if-eqz p0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;->format:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;->value:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 283
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 288
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    return-wide v2
.end method

.method private parseDingReceiversAndCCUsers(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->users:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->users:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    const-class v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;

    invoke-static {v1}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;

    .line 224
    .local v0, "orgEmployeeProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->corpId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->users:Ljava/util/List;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$2;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;->queryUserIdentityObjectList(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    .line 243
    .end local v0    # "orgEmployeeProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->parseTaskCCUsers(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    goto :goto_0
.end method

.method private parseTaskCCUsers(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 5
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->taskInfo:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsTaskInfo;

    .line 248
    .local v1, "taskInfo":Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsTaskInfo;
    iget v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->bizType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsTaskInfo;->ccUsers:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsTaskInfo;->ccUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    const-class v2, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;

    invoke-static {v2}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;

    .line 250
    .local v0, "orgEmployeeProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->corpId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsTaskInfo;->ccUsers:Ljava/util/List;

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$3;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;->queryUserIdentityObjectList(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    .line 270
    .end local v0    # "orgEmployeeProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->startActivity(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    goto :goto_0
.end method

.method private parseUrlToMediaId(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 6
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 305
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 306
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->images:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->images:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 307
    .local v3, "size":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 308
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->images:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 309
    .local v2, "originUrl":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->urlToMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "mediaId":Ljava/lang/String;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->images:Ljava/util/List;

    invoke-interface {v4, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    .end local v0    # "i":I
    .end local v1    # "mediaId":Ljava/lang/String;
    .end local v2    # "originUrl":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 313
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_1
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->image:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 314
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->image:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->urlToMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;->image:Ljava/lang/String;

    .line 319
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_2
    :goto_2
    return-void

    .line 317
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->attachment:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsAttachment;

    goto :goto_2
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 372
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mDingReceiver:Landroid/content/BroadcastReceiver;

    .line 398
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "action_ding_create_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mDingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 401
    return-void
.end method

.method private sendToDing(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->parseAttachment(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    .line 91
    const-class v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;

    invoke-static {v1}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;

    .line 92
    .local v0, "orgEmployeeProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->corpId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->users:Ljava/util/List;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/OrgEmployeeProxy;->queryUserIdentityObjectList(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    .line 106
    return-void
.end method

.method private sendToDingV2(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->parseAttachment(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    .line 207
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->corpId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->parseDingReceiversAndCCUsers(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    .line 219
    :goto_0
    return-void

    .line 209
    :cond_0
    iget v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->bizType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->confInfo:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsConfInfo;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->confInfo:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsConfInfo;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsConfInfo;->locationCorpId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 210
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->confInfo:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsConfInfo;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsConfInfo;->locationCorpId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 211
    .local v0, "orgId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 212
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->confInfo:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsConfInfo;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsArgsConfInfo;->locationOrgId:Ljava/lang/String;

    .line 215
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->startActivity(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    goto :goto_0

    .line 217
    .end local v0    # "orgId":J
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->startActivity(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V

    goto :goto_0
.end method

.method private startActivity(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->toDingCreateInfo()Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 274
    return-void
.end method

.method private startCreateDingV1Activity(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "intent":Landroid/os/Bundle;
    const-string/jumbo v1, "ding_source"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string/jumbo v1, "ding_text_content"

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v2, "ding_text_editable"

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->editable:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string/jumbo v2, "seleced_members"

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->sendToUsers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 124
    const-string/jumbo v1, "ding_attachment"

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->sendToAttachment:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->alertDate:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;

    if-eqz v1, :cond_0

    .line 128
    const-string/jumbo v1, "ding_choose_send_time"

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->alertDate:Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->parseDate(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$DateModel;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 131
    :cond_0
    const-string/jumbo v1, "ding_choose_remind_type"

    iget v2, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->alertType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 134
    return-void

    .line 121
    :cond_1
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;->editable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private static stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 292
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 300
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 300
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 297
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mDingReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mDingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mDingReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    :cond_0
    return-void
.end method

.method private urlToMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x3

    .line 143
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 144
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCallbackId:Ljava/lang/String;

    .line 146
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v6

    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 147
    invoke-virtual {v6, v7}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v4

    .line 148
    .local v4, "session":Lhqe$d;
    if-eqz v4, :cond_0

    .line 2488
    iget-object v5, v4, Lhqe$d;->b:Ljava/lang/String;

    .line 150
    .local v5, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "corpId"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "argCorpId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 152
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

    .line 153
    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 169
    :goto_1
    return-object v6

    .line 148
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v5    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 156
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v5    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCorpId:Ljava/lang/String;

    .line 158
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {v6, v7}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    .line 159
    .local v3, "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;
    if-eqz v3, :cond_2

    .line 160
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->sendToDingV2(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;
    :goto_2
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    goto :goto_1

    .line 162
    .restart local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;
    :cond_2
    :try_start_1
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "json parse is faill "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCallbackId:Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 165
    .end local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 167
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCallbackId:Ljava/lang/String;

    .line 166
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 361
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 362
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->registerReceiver()V

    .line 364
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->unregisterReceiver()V

    .line 368
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 369
    return-void
.end method

.method public post(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x3

    .line 62
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 63
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCallbackId:Ljava/lang/String;

    .line 65
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v6

    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 66
    invoke-virtual {v6, v7}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v4

    .line 67
    .local v4, "session":Lhqe$d;
    if-eqz v4, :cond_0

    .line 1488
    iget-object v5, v4, Lhqe$d;->b:Ljava/lang/String;

    .line 68
    .local v5, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "corpId"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "argCorpId":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 70
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

    .line 71
    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 86
    :goto_1
    return-object v6

    .line 67
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v5    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 73
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v5    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCorpId:Ljava/lang/String;

    .line 75
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    invoke-static {v6, v7}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;

    .line 76
    .local v3, "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;
    if-eqz v3, :cond_2

    .line 77
    invoke-direct {p0, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->sendToDing(Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;
    :goto_2
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    goto :goto_1

    .line 79
    .restart local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;
    :cond_2
    :try_start_1
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "json parse is null "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCallbackId:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 82
    .end local v3    # "model":Lcom/alibaba/lightapp/runtime/plugin/biz/Ding$JsDingModel;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCallbackId:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public update(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 17
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 174
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->mCallbackId:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 177
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v9

    .line 178
    .local v9, "session":Lhqe$d;
    if-eqz v9, :cond_0

    .line 3488
    iget-object v10, v9, Lhqe$d;->b:Ljava/lang/String;

    .line 180
    .local v10, "sessionCorpId":Ljava/lang/String;
    :goto_0
    const-string/jumbo v11, "corpId"

    const-string/jumbo v12, ""

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "argCorpId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v10, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 182
    new-instance v11, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v12, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v13, 0x8

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "invalid corpId: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    .line 183
    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 201
    :goto_1
    return-object v11

    .line 178
    .end local v2    # "argCorpId":Ljava/lang/String;
    .end local v10    # "sessionCorpId":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 186
    .restart local v2    # "argCorpId":Ljava/lang/String;
    .restart local v10    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v11, "dingId"

    const-wide/16 v12, -0x1

    invoke-virtual {v5, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 187
    .local v6, "dingId":J
    const-string/jumbo v11, "bizType"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 188
    .local v3, "bizType":I
    const-string/jumbo v11, "meetingScope"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 190
    .local v8, "meetingScope":I
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-gtz v11, :cond_2

    .line 191
    new-instance v11, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v12, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v13, 0x3

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "invalid dingId: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 192
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 195
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "intent_key_ding_id"

    invoke-virtual {v4, v11, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    const-string/jumbo v11, "intent_key_ding_biz_type"

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string/jumbo v11, "scope"

    invoke-virtual {v4, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Ding;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 201
    new-instance v11, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v12, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_1
.end method
