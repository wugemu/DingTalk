.class public Lcom/dbappsecurity/et/EncryptManage;
.super Ljava/lang/Object;
.source "EncryptManage.java"

# interfaces
.implements Lcom/alibaba/android/dtencrypt/IDTEncrypt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public decryptData(Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 157
    :cond_0
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "decryptData"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 160
    :cond_1
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1, v1}, Liwb;->b(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public decryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "sourcefilePath"    # Ljava/lang/String;
    .param p3, "destfilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "decryptFile"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 182
    :cond_1
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Liwb;->b(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public decryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 134
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "decryptKey"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 138
    :cond_1
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v2

    .line 5254
    iget-object v1, v2, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v3, "decryptKey()_params \uff1a"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "corpId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 5258
    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "\\|\\|"

    .line 5259
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "\\|\\|"

    .line 5260
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_3

    .line 5263
    :cond_2
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_Format_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_Format_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 5264
    invoke-virtual {v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 5268
    :cond_3
    iget-object v1, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5269
    invoke-static {v1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5270
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 5271
    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 5275
    :cond_4
    iget-object v3, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5276
    invoke-static {v3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5277
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 5278
    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 5282
    :cond_5
    iget-object v4, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5283
    invoke-static {v4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5284
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 5285
    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 5289
    :cond_6
    iget-object v5, v2, Liwb;->c:Ljava/lang/String;

    .line 5290
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 5291
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 5290
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5292
    invoke-static {v3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5293
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 5294
    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 5298
    :cond_7
    iget-object v5, v2, Liwb;->c:Ljava/lang/String;

    .line 5299
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 5300
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 5299
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5301
    invoke-static {v5}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5302
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 5303
    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 5309
    :cond_8
    iget-object v1, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v6, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5310
    invoke-static {v1}, Lcom/dbappsecurity/utl/JZVerifyType;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 5311
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_Format_msgSize_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_Format_msgSize_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 5312
    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 5316
    :cond_9
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 5318
    invoke-static {v4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v2, Liwb;->f:Liwa;

    invoke-virtual {v1, p1}, Liwa;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5320
    iget-object v1, v2, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dbappsecurity/entity/CompanyEntity;

    .line 5322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5324
    iget-object v8, v2, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v9, "decryptKey()_verKey \uff1a"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "verKey:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 5326
    invoke-virtual {v1}, Lcom/dbappsecurity/entity/CompanyEntity;->getMapVers()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dbappsecurity/entity/Versns;

    .line 5328
    iget-object v7, v2, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v8, "decryptKey()_decryptMsg()"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "str_msg:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " msg_size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 5331
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 5333
    iget-object v3, v2, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v5, "decryptKey()_decryptMsg()"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "str_msg:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5334
    invoke-virtual {v1}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " msg_size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5333
    invoke-virtual {v3, v5, v7}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 5336
    const-string/jumbo v3, "DIJniToJar.decryptMsg"

    invoke-static {v4, v3}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 5337
    invoke-virtual {v1}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "DIJniToJar.decryptMsg"

    invoke-static {v1, v4}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v4, "DIJniToJar.decryptMsg"

    .line 5338
    invoke-virtual {v2, v4}, Liwb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5336
    invoke-static {v3, v1, v4, v5}, Lcom/dbappsecurity/et/DIJniToJar;->decryptMsg([B[BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5340
    if-eqz v0, :cond_a

    .line 5341
    iget-object v1, v2, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v2, "decryptKey()_decryptMsg()_result"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v0, "str_ret":Ljava/lang/String;
    :cond_a
    return-object v0

    .line 5344
    .end local v0    # "str_ret":Ljava/lang/String;
    :cond_b
    const-string/jumbo v1, ""

    invoke-virtual {v2, p1, v3, v5, v1}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " , appkeyVersion||mathematicalVersion\uff1a"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5348
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v6, "decryptKey"

    .line 5349
    invoke-virtual {v5, v6}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 5353
    :cond_c
    const-string/jumbo v1, ""

    invoke-virtual {v2, p1, v3, v5, v1}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5355
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " , appkeyVersion||mathematicalVersion\uff1a"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5357
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v6, "decryptKey"

    .line 5358
    invoke-virtual {v5, v6}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2
.end method

.method public encryptData(Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 147
    :cond_0
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptData"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 150
    :cond_1
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1, v1}, Liwb;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "sourcefilePath"    # Ljava/lang/String;
    .param p3, "destfilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptFile"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 170
    :cond_1
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Liwb;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "encryptMsg"

    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 126
    :cond_1
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v3

    .line 5192
    iget-object v1, v3, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v2, "encryptKey()_params"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "corpId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 5195
    new-instance v4, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 5197
    iget-object v1, v3, Liwb;->f:Liwa;

    invoke-virtual {v1, p1}, Liwa;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5199
    iget-object v1, v3, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dbappsecurity/entity/CompanyEntity;

    .line 5200
    invoke-virtual {v1}, Lcom/dbappsecurity/entity/CompanyEntity;->getMapVers()Ljava/util/Map;

    move-result-object v2

    iget-object v5, v3, Liwb;->f:Liwa;

    iget-object v5, v5, Liwa;->f:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dbappsecurity/entity/Versns;

    .line 5202
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/dbappsecurity/entity/CompanyEntity;->getRefreshKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "-1"

    .line 5203
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5205
    invoke-virtual {v2}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5206
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "-1"

    const-string/jumbo v4, ""

    invoke-virtual {v3, p1, v1, v2, v4}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5207
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "encryptKey"

    .line 5208
    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 5212
    :cond_2
    iget-object v1, v3, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v5, "encryptKey()_encryptMsg()"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "  Key:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 5214
    const-string/jumbo v1, "DIJniToJar.encryptMsg"

    invoke-static {p2, v1}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 5215
    invoke-virtual {v2}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "DIJniToJar.encryptMsg"

    invoke-static {v5, v6}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v6, "DIJniToJar.encryptMsg"

    .line 5216
    invoke-virtual {v3, v6}, Liwb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5214
    invoke-static {v1, v5, v6, v4}, Lcom/dbappsecurity/et/DIJniToJar;->encryptMsg([B[BLjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 5218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5219
    iget-object v1, v3, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5220
    invoke-virtual {v2}, Lcom/dbappsecurity/entity/Versns;->getAppkeyVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5221
    iget-object v1, v3, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5222
    invoke-virtual {v2}, Lcom/dbappsecurity/entity/Versns;->getMathematicalVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5223
    iget-object v1, v3, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5224
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5227
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5229
    iget-object v1, v3, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v2, "encryptKey()_encryptMsg()_result"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "str_ret":Ljava/lang/String;
    return-object v0

    .line 5231
    .end local v0    # "str_ret":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "-1"

    const-string/jumbo v4, "-1"

    invoke-virtual {v1}, Lcom/dbappsecurity/entity/CompanyEntity;->getRefreshKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v2, v4, v1}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5232
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyUpdata:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyUpdata:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "encryptKey"

    .line 5233
    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1

    .line 5237
    :cond_4
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "-1"

    const-string/jumbo v4, ""

    invoke-virtual {v3, p1, v1, v2, v4}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5238
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v4, "encryptKey"

    .line 5239
    invoke-virtual {v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1
.end method

.method public getEncrypt()Liwb;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "save_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SD_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SD_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 34
    :cond_0
    if-nez p1, :cond_1

    .line 35
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->Context_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->Context_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 38
    :cond_1
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    .line 3068
    iput-object p1, v0, Liwb;->b:Landroid/content/Context;

    .line 3070
    const-string/jumbo v1, "setContext"

    invoke-virtual {v0, v1}, Liwb;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 2085
    invoke-virtual {v0, p2}, Liwb;->a(Ljava/lang/String;)V

    .line 2086
    invoke-static {}, Liwb;->b()V

    .line 2087
    invoke-virtual {v0}, Liwb;->c()V

    .line 40
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "save_path"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SD_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SD_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 55
    :cond_1
    if-nez p1, :cond_2

    .line 56
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->Context_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->Context_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 59
    :cond_2
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v1

    .line 4075
    iput-object p1, v1, Liwb;->b:Landroid/content/Context;

    .line 4109
    iget-object v2, v1, Liwb;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Liwb;->b:Landroid/content/Context;

    if-eqz v2, :cond_6

    .line 4111
    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4112
    const-string/jumbo p3, ""

    .line 4115
    .end local p3    # "deviceId":Ljava/lang/String;
    :cond_3
    iget-object v2, v1, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v3, "setContext()_IMEI_Yuan:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " strIMEI.size():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4116
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4115
    invoke-virtual {v2, v3, v4}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 4118
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x10

    .line 4119
    if-lez v2, :cond_4

    .line 4120
    :goto_0
    if-ge v0, v2, :cond_5

    .line 4121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4123
    :cond_4
    if-gez v2, :cond_5

    .line 4124
    const/16 v2, 0x10

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 4127
    :cond_5
    iput-object p3, v1, Liwb;->d:Ljava/lang/String;

    .line 3093
    :cond_6
    invoke-virtual {v1, p2}, Liwb;->a(Ljava/lang/String;)V

    .line 3094
    invoke-static {}, Liwb;->b()V

    .line 3095
    invoke-virtual {v1}, Liwb;->c()V

    .line 60
    return-void
.end method

.method public setDTGetCodeProxy(Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;)V
    .locals 1
    .param p1, "dtGetCodeProxy"    # Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;

    .prologue
    .line 85
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    .line 4954
    iput-object p1, v0, Liwb;->g:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;

    .line 86
    return-void
.end method

.method public setDTHttpRequestProxy(Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy;)V
    .locals 1
    .param p1, "dtHttpRequestProxy"    # Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy;

    .prologue
    .line 69
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    .line 4137
    iput-object p1, v0, Liwb;->j:Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy;

    .line 71
    return-void
.end method

.method public setDTLogProxy(Lcom/alibaba/android/dtencrypt/DTLogProxy;)V
    .locals 1
    .param p1, "dtLogProxy"    # Lcom/alibaba/android/dtencrypt/DTLogProxy;

    .prologue
    .line 99
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    .line 4968
    iput-object p1, v0, Liwb;->i:Lcom/alibaba/android/dtencrypt/DTLogProxy;

    .line 100
    return-void
.end method

.method public setDTSendBroadcastProxy(Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;)V
    .locals 1
    .param p1, "dtSendBroadcastProxy"    # Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;

    .prologue
    .line 94
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v0

    .line 4964
    iput-object p1, v0, Liwb;->h:Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;

    .line 95
    return-void
.end method

.method public setPushData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 191
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "setPushData"

    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 195
    :cond_0
    invoke-static {}, Liwb;->a()Liwb;

    move-result-object v9

    .line 5563
    iget-object v0, v9, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v1, "onLocRefreshKey()_params"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "corpId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 5567
    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5571
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 5574
    :try_start_0
    new-instance v1, Liwb$1;

    invoke-direct {v1, v9}, Liwb$1;-><init>(Liwb;)V

    .line 5575
    invoke-virtual {v1}, Liwb$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 5574
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dbappsecurity/entity/PushDataAttributeEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5583
    if-eqz v0, :cond_1

    .line 5585
    invoke-virtual {v0}, Lcom/dbappsecurity/entity/PushDataAttributeEntity;->getType()Ljava/lang/String;

    move-result-object v1

    .line 5586
    invoke-virtual {v0}, Lcom/dbappsecurity/entity/PushDataAttributeEntity;->getData()Ljava/lang/String;

    move-result-object v0

    .line 5588
    invoke-static {v1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5590
    invoke-static {v0}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/dbappsecurity/utl/PushDataAttribute;->privateupdate:Lcom/dbappsecurity/utl/PushDataAttribute;

    .line 5591
    invoke-virtual {v3}, Lcom/dbappsecurity/utl/PushDataAttribute;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 5590
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5593
    const-string/jumbo v1, "(setPushData)DIJniToJar.domainName"

    invoke-static {v0, v1}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v1, "setPushData"

    invoke-static {v0, v1}, Lcom/dbappsecurity/et/DIJniToJar;->domainName([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5596
    invoke-static {v0}, Lcom/dbappsecurity/utl/JZVerifyType;->isHttp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5598
    invoke-virtual {v9, p1, v0}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5599
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, ""

    invoke-virtual {v9, p1, v0, v1, v2}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5614
    :cond_1
    :goto_0
    return-void

    .line 5576
    :catch_0
    move-exception v0

    .line 5577
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5578
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setPushData("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5579
    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 5601
    :cond_2
    sget-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->keyupdate:Lcom/dbappsecurity/utl/PushDataAttribute;

    invoke-virtual {v0}, Lcom/dbappsecurity/utl/PushDataAttribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5603
    iget-object v0, v9, Liwb;->f:Liwa;

    const-string/jumbo v5, "-1"

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Liwa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 5606
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "-1"

    invoke-virtual {v9, p1, v0, v1, v2}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5607
    :cond_3
    sget-object v0, Lcom/dbappsecurity/utl/PushDataAttribute;->keyclear:Lcom/dbappsecurity/utl/PushDataAttribute;

    invoke-virtual {v0}, Lcom/dbappsecurity/utl/PushDataAttribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5609
    iget-object v0, v9, Liwb;->f:Liwa;

    const-string/jumbo v5, "-1"

    const/4 v8, 0x1

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Liwa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 5615
    :cond_4
    iget-object v0, v9, Liwb;->f:Liwa;

    const-string/jumbo v5, "-1"

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Liwa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 5618
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "-1"

    invoke-virtual {v9, p1, v0, v1, v2}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
