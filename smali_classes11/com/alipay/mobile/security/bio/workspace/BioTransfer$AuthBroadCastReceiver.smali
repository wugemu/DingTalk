.class public Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BioTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/bio/workspace/BioTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "action":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rev action "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 259
    :try_start_0
    const-string/jumbo v6, "com.alipay.mobile.security.bio.action.intent.rev"

    .line 260
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/security/bio/api/BioResponse;

    .line 259
    invoke-static {v6, v7}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/bio/api/BioResponse;

    .line 262
    .local v2, "biologyResponse":Lcom/alipay/mobile/security/bio/api/BioResponse;
    if-eqz v2, :cond_1

    .line 264
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v6, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mBioDetectCallbacks:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/bio/api/BioCallback;

    .line 265
    .local v1, "biologyCallback":Lcom/alipay/mobile/security/bio/api/BioCallback;
    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-boolean v6, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z

    if-eqz v6, :cond_1

    .line 267
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getExt()Ljava/util/Map;

    move-result-object v4

    .line 268
    .local v4, "ext":Ljava/util/Map;
    if-eqz v4, :cond_2

    const-string/jumbo v6, "face"

    const-string/jumbo v7, "fc"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 269
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    const/4 v7, 0x1

    iput v7, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcStep:I

    .line 270
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v7, v7, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mIDFaceParam:Lcom/alipay/mobile/security/bio/api/BioParameter;

    iget-object v8, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    invoke-static {v8}, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->access$000(Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)Lcom/alipay/mobile/security/bio/api/BioCallback;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->auth(Lcom/alipay/mobile/security/bio/api/BioParameter;Lcom/alipay/mobile/security/bio/api/BioCallback;)V

    .line 300
    .end local v1    # "biologyCallback":Lcom/alipay/mobile/security/bio/api/BioCallback;
    .end local v2    # "biologyResponse":Lcom/alipay/mobile/security/bio/api/BioResponse;
    .end local v4    # "ext":Ljava/util/Map;
    :cond_1
    :goto_0
    return-void

    .line 272
    .restart local v1    # "biologyCallback":Lcom/alipay/mobile/security/bio/api/BioCallback;
    .restart local v2    # "biologyResponse":Lcom/alipay/mobile/security/bio/api/BioResponse;
    .restart local v4    # "ext":Ljava/util/Map;
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-boolean v6, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z

    if-eqz v6, :cond_4

    .line 273
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v6, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setToken(Ljava/lang/String;)V

    .line 274
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v5, "m":Ljava/util/Map;
    const-string/jumbo v6, "fcToken"

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v7, v7, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget v6, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcStep:I

    if-ne v6, v8, :cond_3

    .line 278
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v6, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mRecordExtService:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    sget-object v7, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_FACE_CALL_BACK_BIS_SYSTEM:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    invoke-virtual {v6, v7, v5}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 280
    :cond_3
    const-string/jumbo v6, "param"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v6, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mRecordExtService:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    sget-object v7, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_CALL_BACK_VERITY_SYSTEM:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    invoke-virtual {v6, v7, v5}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 283
    .end local v5    # "m":Ljava/util/Map;
    :cond_4
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-boolean v6, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z

    if-eqz v6, :cond_5

    .line 284
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 285
    .restart local v5    # "m":Ljava/util/Map;
    const-string/jumbo v6, "fcToken"

    iget-object v7, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v7, v7, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v6, p0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer$AuthBroadCastReceiver;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v6, v6, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mRecordExtService:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    sget-object v7, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_EXIT_SDK:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    invoke-virtual {v6, v7, v5}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 288
    .end local v5    # "m":Ljava/util/Map;
    :cond_5
    invoke-interface {v1, v2}, Lcom/alipay/mobile/security/bio/api/BioCallback;->onResult(Lcom/alipay/mobile/security/bio/api/BioResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v1    # "biologyCallback":Lcom/alipay/mobile/security/bio/api/BioCallback;
    .end local v2    # "biologyResponse":Lcom/alipay/mobile/security/bio/api/BioResponse;
    .end local v4    # "ext":Ljava/util/Map;
    :catch_0
    move-exception v3

    .line 295
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
