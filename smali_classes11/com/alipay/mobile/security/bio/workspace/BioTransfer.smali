.class public Lcom/alipay/mobile/security/bio/workspace/BioTransfer;
.super Ljava/lang/Object;
.source "BioTransfer.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/api/BioDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/security/bio/api/BioCallback;

.field public fcStep:I

.field public fcToken:Ljava/lang/String;

.field public isIDFaceFlag:Z

.field mAuthBroadCastReceiver:Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;

.field mBioDetectCallbacks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/api/BioCallback;",
            ">;"
        }
    .end annotation
.end field

.field mBioMicroModule:Lcom/alipay/mobile/security/bio/module/MicroModule;

.field mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field mBioStoreService:Lcom/alipay/mobile/security/bio/service/BioStoreService;

.field public mContext:Landroid/content/Context;

.field public mFcSpecialData:Lcom/alibaba/fastjson/JSONObject;

.field public mIDFaceParam:Lcom/alipay/mobile/security/bio/api/BioParameter;

.field mInspector:Lcom/alipay/mobile/security/bio/model/inspector/Inspector;

.field mLocalBroadcastManager:Ldq;

.field public mRecordExtService:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/security/bio/module/MicroModule;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "microModule"    # Lcom/alipay/mobile/security/bio/module/MicroModule;

    .prologue
    const/4 v6, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioDetectCallbacks:Ljava/util/Hashtable;

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "userid"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string/jumbo v5, "apdid"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "scene_id"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "appid"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "token_id"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "usernamehidden"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "abtest"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "verifyid"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->a:Ljava/util/ArrayList;

    .line 61
    iput-boolean v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z

    .line 65
    iput v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcStep:I

    .line 71
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v2, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct {v2}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    throw v2

    .line 82
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    .line 83
    .local v1, "zimId":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->createInstance(Landroid/content/Context;)V

    .line 88
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v3, Lcom/alipay/mobile/security/bio/service/BioStoreService;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/bio/service/BioStoreService;

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioStoreService:Lcom/alipay/mobile/security/bio/service/BioStoreService;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mLocalBroadcastManager:Ldq;

    .line 91
    new-instance v2, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;-><init>(Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)V

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mAuthBroadCastReceiver:Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;

    .line 92
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v3, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mRecordExtService:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.alipay.mobile.security.bio.action.callback"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mLocalBroadcastManager:Ldq;

    iget-object v3, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mAuthBroadCastReceiver:Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;

    invoke-virtual {v2, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioMicroModule:Lcom/alipay/mobile/security/bio/module/MicroModule;

    .line 98
    return-void

    .line 82
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v1    # "zimId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/module/MicroModule;->getZimId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    .restart local v1    # "zimId":Ljava/lang/String;
    :cond_2
    invoke-static {p1, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)Lcom/alipay/mobile/security/bio/api/BioCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->b:Lcom/alipay/mobile/security/bio/api/BioCallback;

    return-object v0
.end method


# virtual methods
.method public auth(Lcom/alipay/mobile/security/bio/api/BioParameter;Lcom/alipay/mobile/security/bio/api/BioCallback;)V
    .locals 15
    .param p1, "param"    # Lcom/alipay/mobile/security/bio/api/BioParameter;
    .param p2, "callback"    # Lcom/alipay/mobile/security/bio/api/BioCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    new-instance v6, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct {v6}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    throw v6

    .line 106
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->b:Lcom/alipay/mobile/security/bio/api/BioCallback;

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 1158
    .local v5, "tempBundle":Landroid/os/Bundle;
    if-nez v5, :cond_2

    if-nez p1, :cond_2

    .line 1159
    new-instance v6, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string/jumbo v7, "paramter is null"

    invoke-direct {v6, v7}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1162
    :cond_2
    if-nez v5, :cond_6

    .line 113
    :cond_3
    :goto_0
    new-instance v6, Lipt;

    invoke-direct {v6, p0}, Lipt;-><init>(Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lipt;->a(Lcom/alipay/mobile/security/bio/api/BioParameter;)Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object v1

    .line 126
    .local v1, "app":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getRemoteURL()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "remoteUrl":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BioTransfer.auth(): remoteUrl:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BioTransfer.auth(): app:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 130
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 131
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v7, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->setRemoteUrl(Ljava/lang/String;)V

    .line 142
    :cond_4
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioMicroModule:Lcom/alipay/mobile/security/bio/module/MicroModule;

    invoke-virtual {v6, v1, v7}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->startBioActivity(Lcom/alipay/mobile/security/bio/service/BioAppDescription;Lcom/alipay/mobile/security/bio/module/MicroModule;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "appID":Ljava/lang/String;
    if-nez v1, :cond_14

    invoke-static {}, Lips;->a()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "tag":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioDetectCallbacks:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v6, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 150
    const/16 v6, 0xc9

    const-string/jumbo v7, "app is not installed"

    invoke-virtual {p0, v4, v6, v7}, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->sendResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    :cond_5
    return-void

    .line 1166
    .end local v1    # "app":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .end local v2    # "appID":Ljava/lang/String;
    .end local v3    # "remoteUrl":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "viModuleData"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1167
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "moduleData:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 1168
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1172
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 1173
    const-string/jumbo v7, "sceneId"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1174
    const-string/jumbo v7, "USER_ID"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1175
    const-string/jumbo v7, "biscfg"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1176
    const-string/jumbo v7, "TOKEN_ID"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1177
    const-string/jumbo v7, "APDID"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1178
    const-string/jumbo v7, "verifyid"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1179
    const-string/jumbo v12, "appid"

    invoke-virtual {v6, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1181
    if-eqz v5, :cond_d

    const-string/jumbo v6, "headurl"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->setHeadImageUrl(Ljava/lang/String;)V

    .line 1182
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "biscfg:"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 1183
    invoke-static {v13}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1184
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/security/bio/api/BioParameter;->setProtocol(Ljava/lang/String;)V

    .line 1187
    :cond_7
    const-string/jumbo v13, "verifyid"

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, ""

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string/jumbo v7, "APDID"

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string/jumbo v6, ""

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string/jumbo v7, "SCENE_ID"

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string/jumbo v6, ""

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string/jumbo v7, "TOKEN_ID"

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string/jumbo v6, ""

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string/jumbo v7, "userid"

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string/jumbo v6, ""

    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string/jumbo v7, "appid"

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string/jumbo v6, ""

    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string/jumbo v6, "RequestPage"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1196
    const-string/jumbo v6, "RequestPage"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1197
    const-string/jumbo v7, "pageNum"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v6, ""

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_9
    const-string/jumbo v6, "RequestCardType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1201
    const-string/jumbo v6, "RequestCardType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1202
    const-string/jumbo v7, "card_type"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v6, ""

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_b
    const-string/jumbo v6, "RequestTotalPagesNum"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1206
    const-string/jumbo v6, "RequestTotalPagesNum"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1207
    const-string/jumbo v7, "total_page_num"

    .line 1208
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string/jumbo v6, ""

    .line 1207
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_e
    move-object v6, v7

    .line 1187
    goto/16 :goto_3

    :cond_f
    move-object v6, v8

    .line 1188
    goto/16 :goto_4

    :cond_10
    move-object v6, v9

    .line 1189
    goto/16 :goto_5

    :cond_11
    move-object v6, v10

    .line 1190
    goto/16 :goto_6

    :cond_12
    move-object v6, v11

    .line 1191
    goto/16 :goto_7

    :cond_13
    move-object v6, v12

    .line 1192
    goto/16 :goto_8

    .line 144
    .restart local v1    # "app":Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .restart local v2    # "appID":Ljava/lang/String;
    .restart local v3    # "remoteUrl":Ljava/lang/String;
    :cond_14
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public command(I)V
    .locals 3
    .param p1, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    const-string/jumbo v0, ""

    .line 311
    .local v0, "actionString":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 330
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mLocalBroadcastManager:Ldq;

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 334
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 313
    :sswitch_0
    const-string/jumbo v0, "com.alipay.mobile.security.bio.autoclose"

    .line 314
    goto :goto_0

    .line 316
    :sswitch_1
    const-string/jumbo v0, "com.alipay.mobile.security.bio.server.continue"

    .line 317
    goto :goto_0

    .line 319
    :sswitch_2
    const-string/jumbo v0, "com.alipay.mobile.security.bio.server.fail"

    .line 320
    goto :goto_0

    .line 322
    :sswitch_3
    const-string/jumbo v0, "com.alipay.mobile.security.bio.server.retry"

    .line 323
    goto :goto_0

    .line 325
    :sswitch_4
    const-string/jumbo v0, "com.alipay.mobile.security.bio.server.success"

    goto :goto_0

    .line 311
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_4
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x2001 -> :sswitch_2
        0x2002 -> :sswitch_3
    .end sparse-switch
.end method

.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->b:Lcom/alipay/mobile/security/bio/api/BioCallback;

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioDetectCallbacks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 238
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->destroyInstance()V

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mLocalBroadcastManager:Ldq;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mLocalBroadcastManager:Ldq;

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mAuthBroadCastReceiver:Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 242
    :cond_0
    return-void
.end method

.method public preLoad()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->preLoad()I

    move-result v0

    return v0
.end method

.method public sendResponse(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "uniqueID"    # Ljava/lang/String;
    .param p2, "error"    # I
    .param p3, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.alipay.mobile.security.bio.action.callback"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-direct {v2}, Lcom/alipay/mobile/security/bio/api/BioResponse;-><init>()V

    .line 219
    .local v2, "res":Lcom/alipay/mobile/security/bio/api/BioResponse;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setSuccess(Z)V

    .line 220
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResult(I)V

    .line 221
    invoke-virtual {v2, p3}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResultMessage(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setTag(Ljava/lang/String;)V

    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "com.alipay.mobile.security.bio.action.intent.rev"

    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 230
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mLocalBroadcastManager:Ldq;

    invoke-virtual {v3, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 231
    return-void
.end method
