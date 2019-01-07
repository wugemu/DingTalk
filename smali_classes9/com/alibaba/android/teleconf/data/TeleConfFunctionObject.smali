.class public final Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;
.super Ljava/lang/Object;
.source "TeleConfFunctionObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;
    }
.end annotation


# static fields
.field private static e:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;


# instance fields
.field public a:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;->TYPE_SHOW_NONE:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->e:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;)V
    .locals 1
    .param p1, "cardModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "org_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->b:J

    .line 67
    const-string/jumbo v2, "org_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->c:Ljava/lang/String;

    .line 68
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;-><init>()V

    const-string/jumbo v3, "org_card"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 128
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    .local v1, "mediaUrl":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    invoke-static {}, Levx;->a()Levx;

    move-result-object v3

    invoke-virtual {v3, v1}, Levx;->a(Ljava/lang/String;)Z

    move-result v0

    .line 123
    .local v0, "isProloaded":Z
    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Levx;->a()Levx;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Levx;->a(Ljava/lang/String;Levx$a;)V

    goto :goto_0

    .line 119
    .end local v0    # "isProloaded":Z
    .end local v1    # "mediaUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    const/4 v1, 0x0

    .restart local v1    # "mediaUrl":Ljava/lang/String;
    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "jumpModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    .prologue
    const/4 v6, 0x0

    .line 158
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->jumpUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->jumpUrl:Ljava/lang/String;

    .line 164
    .local v1, "destUrl":Ljava/lang/String;
    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->nextJumpUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 165
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->jumpUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->nextJumpUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 169
    .local v0, "destUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "scheme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "dingtalk"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 174
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$1;

    invoke-direct {v5}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$1;-><init>()V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 187
    :goto_1
    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->tag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;->tag:Ljava/lang/String;

    invoke-interface {v3, v6, v4, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v6}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;)V
    .locals 1
    .param p1, "cardModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    .prologue
    .line 77
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->mediaId:Ljava/lang/String;

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    :cond_2
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemInfoCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemAdCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    goto :goto_0

    .line 87
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    .line 88
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;->ItemInfoCard:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject$ItemType;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;)V
    .locals 0
    .param p0, "policy"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    .prologue
    .line 194
    sput-object p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->e:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    .line 195
    return-void
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;)Z
    .locals 3
    .param p0, "bottomModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    .prologue
    .line 227
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    .line 228
    invoke-static {v1}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcpk;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 232
    .local v0, "keyExist":Z
    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x1

    .line 236
    .end local v0    # "keyExist":Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;)Z
    .locals 3
    .param p0, "topModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    .prologue
    .line 212
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    .line 214
    invoke-static {v1}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->reddotModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcpk;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 218
    .local v0, "keyExist":Z
    if-nez v0, :cond_0

    .line 219
    const/4 v1, 0x1

    .line 223
    .end local v0    # "keyExist":Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;)Z
    .locals 3
    .param p0, "reddotModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;

    .prologue
    const/4 v0, 0x0

    .line 198
    if-nez p0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->e:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    sget-object v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;->TYPE_SHOW_ALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageRedPolicyTypeEnum;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->showReddot:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->showReddot:Ljava/lang/Boolean;

    .line 203
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageReddotModel;->reddotKey:Ljava/lang/String;

    .line 204
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "org_id"

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->b:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v2, "org_name"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    if-eqz v2, :cond_0

    .line 100
    const-string/jumbo v2, "org_card"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->toJsonStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 106
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    if-eqz v3, :cond_2

    .line 133
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->icon:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->icon:Ljava/lang/String;

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->mediaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->mediaId:Ljava/lang/String;

    .line 139
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    iget-object v1, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->details:Ljava/util/List;

    .line 140
    .local v1, "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;

    .line 142
    .local v0, "detailModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->suffixContent:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;

    if-eqz v4, :cond_1

    .line 147
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    iget-object v2, v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->suffixContent:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;

    .line 148
    .local v2, "suffixModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;
    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;->iconMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    iget-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;->iconMediaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/data/TeleConfFunctionObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;->iconMediaId:Ljava/lang/String;

    goto :goto_0

    .line 155
    .end local v0    # "detailModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;
    .end local v1    # "detailModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;>;"
    .end local v2    # "suffixModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageSuffixModel;
    :cond_2
    return-void
.end method
