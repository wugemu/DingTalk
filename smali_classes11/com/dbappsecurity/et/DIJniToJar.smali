.class public Lcom/dbappsecurity/et/DIJniToJar;
.super Ljava/lang/Object;
.source "DIJniToJar.java"


# static fields
.field private static final MAX_MSG_DETAIL_LEN:I = 0x200

.field private static final decryptFile_decryptFileHelper_file_hash_ERROR:I = -0x5025


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptBufferHelper([B[BLjava/lang/String;)[B
    .locals 7
    .param p0, "msgbytes"    # [B
    .param p1, "key"    # [B
    .param p2, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 254
    .local v0, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2, v0}, Lcom/dbappsecurity/et/DIJni;->decryptBufferHelper([B[BLjava/lang/String;Ljava/lang/Integer;)[B

    move-result-object v1

    .line 260
    .local v1, "result":[B
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 261
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v5, "DIJni.getInstance().decryptBufferHelper"

    invoke-virtual {v4, v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 267
    .end local v0    # "errCode":Ljava/lang/Integer;
    .end local v1    # "result":[B
    :cond_0
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v3

    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v5, "decryptBufferHelper"

    invoke-virtual {v4, v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 264
    .restart local v0    # "errCode":Ljava/lang/Integer;
    .restart local v1    # "result":[B
    :cond_1
    return-object v1
.end method

.method public static decryptFileHelper([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTLogProxy;)[B
    .locals 11
    .param p0, "key"    # [B
    .param p1, "sourceFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "dtLogProxy"    # Lcom/alibaba/android/dtencrypt/DTLogProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 197
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 210
    .local v5, "errCode":Ljava/lang/Integer;
    const/16 v0, 0x200

    new-array v6, v0, [B

    .line 211
    .local v6, "msgDetail":[B
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 212
    .local v7, "msgDetailLen":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/dbappsecurity/et/DIJni;->decryptFileHelperNew([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[BLjava/lang/Integer;)[B

    move-result-object v9

    .line 221
    .local v9, "result":[B
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    .line 223
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v6, v10, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {p4, v0}, Lcom/alibaba/android/dtencrypt/DTLogProxy;->dingLog(Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3

    .line 227
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x5025

    if-ne v0, v1, :cond_1

    .line 228
    new-instance v8, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "DIJni.getInstance().decryptFileHelper"

    invoke-virtual {v0, v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v2, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v8, v10, v0, v1, v2}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    .line 229
    .local v8, "dtEncryptException":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->setWarningCode(I)V

    .line 230
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v6, v10, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v0}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->setWarningMsg(Ljava/lang/String;)V

    .line 231
    throw v8

    .line 234
    .end local v8    # "dtEncryptException":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :cond_1
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().decryptFileHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 240
    .end local v5    # "errCode":Ljava/lang/Integer;
    .end local v6    # "msgDetail":[B
    .end local v7    # "msgDetailLen":Ljava/lang/Integer;
    .end local v9    # "result":[B
    :cond_2
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "decryptFileHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 237
    .restart local v5    # "errCode":Ljava/lang/Integer;
    .restart local v6    # "msgDetail":[B
    .restart local v7    # "msgDetailLen":Ljava/lang/Integer;
    .restart local v9    # "result":[B
    :cond_3
    return-object v9
.end method

.method public static decryptMsg([B[BLjava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "str_msg"    # [B
    .param p1, "key"    # [B
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "msg_size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v5, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 67
    .local v5, "errCode":Ljava/lang/Integer;
    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dbappsecurity/et/DIJni;->decryptMsg([B[BLjava/lang/String;ILjava/lang/Integer;)[B

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v7, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 69
    .local v7, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 70
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().decryptMsg"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v7    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 80
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "decryptMsg"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 73
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v7}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().decryptMsg"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .end local v5    # "errCode":Ljava/lang/Integer;
    .end local v7    # "result":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "decryptMsg"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 77
    .restart local v5    # "errCode":Ljava/lang/Integer;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method public static decryptStream([B[BLjava/lang/String;[BI)[B
    .locals 9
    .param p0, "str_msg"    # [B
    .param p1, "key"    # [B
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "nonce"    # [B
    .param p4, "msg_size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v6, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 395
    .local v6, "errCode":Ljava/lang/Integer;
    :try_start_0
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/dbappsecurity/et/DIJni;->decryptStreamHelper([B[B[BLjava/lang/String;ILjava/lang/Integer;)[B

    move-result-object v8

    .line 397
    .local v8, "result":[B
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 398
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().decryptStreamHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v8    # "result":[B
    :catch_0
    move-exception v7

    .line 404
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "decryptStreamHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 409
    .end local v6    # "errCode":Ljava/lang/Integer;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "decryptStreamHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 401
    .restart local v6    # "errCode":Ljava/lang/Integer;
    .restart local v8    # "result":[B
    :cond_1
    return-object v8
.end method

.method public static domainName([BLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "msgChar"    # [B
    .param p1, "mathodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "DIJni.getInstance().domainName("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "mathod":Ljava/lang/String;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    new-instance v1, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 284
    .local v1, "errCode":Ljava/lang/Integer;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Lcom/dbappsecurity/et/DIJni;->domainName([BLjava/lang/Integer;)[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_0

    .line 291
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainUrlDecryptErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v6, v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 285
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v6, v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainUrlDecryptErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainUrlDecryptErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v6, v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 301
    .end local v1    # "errCode":Ljava/lang/Integer;
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "domainName("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 298
    .restart local v1    # "errCode":Ljava/lang/Integer;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static encryptBufferHelper([B[BLjava/lang/String;II)[B
    .locals 8
    .param p0, "msgBytes"    # [B
    .param p1, "key"    # [B
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "appKeyVer"    # I
    .param p4, "mathematicalVer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v6, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 148
    .local v6, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/dbappsecurity/et/DIJni;->encryptBufferHelper([B[BLjava/lang/String;IILjava/lang/Integer;)[B

    move-result-object v7

    .line 156
    .local v7, "result":[B
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 157
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->EncryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().encryptBufferHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 163
    .end local v6    # "errCode":Ljava/lang/Integer;
    .end local v7    # "result":[B
    :cond_0
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptBufferHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 160
    .restart local v6    # "errCode":Ljava/lang/Integer;
    .restart local v7    # "result":[B
    :cond_1
    return-object v7
.end method

.method public static encryptFileHelper([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/android/dtencrypt/DTLogProxy;)[B
    .locals 12
    .param p0, "key"    # [B
    .param p1, "sourceFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;
    .param p4, "appKeyVer"    # I
    .param p5, "MathematicalVer"    # I
    .param p6, "dtLogProxy"    # Lcom/alibaba/android/dtencrypt/DTLogProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    new-instance v8, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 109
    .local v8, "errCode":Ljava/lang/Integer;
    const/16 v1, 0x200

    new-array v9, v1, [B

    .line 110
    .local v9, "msgDetail":[B
    new-instance v10, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 111
    .local v10, "msgDetailLen":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v10}, Lcom/dbappsecurity/et/DIJni;->encryptFileHelperNew([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;[BLjava/lang/Integer;)[B

    move-result-object v11

    .line 122
    .local v11, "result":[B
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p6, :cond_0

    .line 124
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v9, v2, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/alibaba/android/dtencrypt/DTLogProxy;->dingLog(Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    .line 128
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->EncryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "DIJni.getInstance().encryptFileHelper"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 134
    .end local v8    # "errCode":Ljava/lang/Integer;
    .end local v9    # "msgDetail":[B
    .end local v10    # "msgDetailLen":Ljava/lang/Integer;
    .end local v11    # "result":[B
    :cond_1
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "encryptFileHelper"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 131
    .restart local v8    # "errCode":Ljava/lang/Integer;
    .restart local v9    # "msgDetail":[B
    .restart local v10    # "msgDetailLen":Ljava/lang/Integer;
    .restart local v11    # "result":[B
    :cond_2
    return-object v11
.end method

.method public static encryptKeyData([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # [B
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 315
    .local v0, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v0}, Lcom/dbappsecurity/et/DIJni;->encryptKeyData([BLjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    .line 318
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->TemporaryEncryptKeysErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v5, "DIJni.getInstance().encryptKeyData"

    invoke-virtual {v4, v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 321
    :cond_0
    invoke-static {v1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->TemporaryEncryptKeysErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v3

    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->TemporaryEncryptKeysErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v5, "DIJni.getInstance().encryptKeyData"

    invoke-virtual {v4, v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 328
    .end local v0    # "errCode":Ljava/lang/Integer;
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v3

    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v5, "encryptKeyData"

    invoke-virtual {v4, v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 325
    .restart local v0    # "errCode":Ljava/lang/Integer;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public static encryptKeys([B[BLjava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "msgChar"    # [B
    .param p1, "key"    # [B
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "msg_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    new-instance v5, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 340
    .local v5, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dbappsecurity/et/DIJni;->encryptKeys([B[BLjava/lang/String;ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 343
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().encryptKeys"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 346
    :cond_0
    invoke-static {v6}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().encryptKeys"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 353
    .end local v5    # "errCode":Ljava/lang/Integer;
    .end local v6    # "result":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptKeys"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 350
    .restart local v5    # "errCode":Ljava/lang/Integer;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static encryptMsg([B[BLjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # [B
    .param p1, "key"    # [B
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "msg_size"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v5, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 39
    .local v5, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dbappsecurity/et/DIJni;->encryptMsg([B[BLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->EncryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().encryptMsg"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 45
    :cond_0
    invoke-static {v6}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->EncryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->EncryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().encryptMsg"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 52
    .end local v5    # "errCode":Ljava/lang/Integer;
    .end local v6    # "result":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptMsg"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 49
    .restart local v5    # "errCode":Ljava/lang/Integer;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static encryptStream([B[BLjava/lang/String;[BLjava/lang/Integer;)[B
    .locals 8
    .param p0, "msg"    # [B
    .param p1, "key"    # [B
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "nonce"    # [B
    .param p4, "msg_size"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v6, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 373
    .local v6, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/dbappsecurity/et/DIJni;->encryptStreamHelper([B[B[BLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)[B

    move-result-object v7

    .line 375
    .local v7, "result":[B
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 376
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->EncryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().encryptStreamHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 382
    .end local v6    # "errCode":Ljava/lang/Integer;
    .end local v7    # "result":[B
    :cond_0
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptStream"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 379
    .restart local v6    # "errCode":Ljava/lang/Integer;
    .restart local v7    # "result":[B
    :cond_1
    return-object v7
.end method

.method public static getEncryptionAttributeHelper([BLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .param p0, "msgBytes"    # [B
    .param p1, "sourceFilePath"    # Ljava/lang/String;
    .param p2, "keyVersion"    # Ljava/lang/Integer;
    .param p3, "mathematicalVersion"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    new-instance v5, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 175
    .local v5, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dbappsecurity/et/DIJni;->getEncryptionAttributeHelper([BLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 177
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 178
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "DIJni.getInstance().getEncryptionAttributeHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 181
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 182
    :cond_1
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "getEncryptionAttributeHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 186
    .end local v5    # "errCode":Ljava/lang/Integer;
    :cond_2
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "getEncryptionAttributeHelper"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 185
    .restart local v5    # "errCode":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method public static getNonce()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 424
    .local v0, "errCode":Ljava/lang/Integer;
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 426
    .local v1, "nonceChar":[B
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/dbappsecurity/et/DIJni;->getNonce([BLjava/lang/Integer;)V

    .line 428
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 429
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->GetNonceErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v5, "DIJni.getInstance().getNonce"

    invoke-virtual {v4, v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 435
    .end local v0    # "errCode":Ljava/lang/Integer;
    .end local v1    # "nonceChar":[B
    :cond_0
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v3

    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v5, "getNonce"

    invoke-virtual {v4, v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 432
    .restart local v0    # "errCode":Ljava/lang/Integer;
    .restart local v1    # "nonceChar":[B
    :cond_1
    return-object v1
.end method

.method public static releaseVoipKey()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 474
    .local v0, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dbappsecurity/et/DIJni;->releaseVoipKey(Ljava/lang/Integer;)V

    .line 476
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 477
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->ReleaseVoipKeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "DIJni.getInstance().releaseVoipKey"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 480
    .end local v0    # "errCode":Ljava/lang/Integer;
    :cond_0
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "releaseVoipKey"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 479
    .restart local v0    # "errCode":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public static setVoipKey([BLjava/lang/String;)V
    .locals 6
    .param p0, "key"    # [B
    .param p1, "deviceID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 451
    .local v0, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lcom/dbappsecurity/et/DIJni;->setVoipKey([BLjava/lang/String;Ljava/lang/Integer;)V

    .line 453
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 454
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SetVoipKeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "DIJni.getInstance().setVoipKey"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 458
    .end local v0    # "errCode":Ljava/lang/Integer;
    :cond_0
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "setVoipKey"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 457
    .restart local v0    # "errCode":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public static stringFromJNI()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 18
    .local v0, "errCode":Ljava/lang/Integer;
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dbappsecurity/et/DIJni;->isLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Lcom/dbappsecurity/et/DIJni;->getInstance()Lcom/dbappsecurity/et/DIJni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dbappsecurity/et/DIJni;->stringFromJNI(Ljava/lang/Integer;)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 23
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->so_initialization:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "stringFromJNI"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 27
    :cond_0
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "stringFromJNI"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 30
    :cond_1
    return-void
.end method
