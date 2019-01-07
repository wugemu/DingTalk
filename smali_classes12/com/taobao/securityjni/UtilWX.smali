.class public Lcom/taobao/securityjni/UtilWX;
.super Ljava/lang/Object;
.source "UtilWX.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 17
    return-void
.end method


# virtual methods
.method public DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 173
    invoke-static {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v2

    .line 175
    .local v2, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v2, :cond_0

    .line 176
    const/16 v3, 0x10

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string/jumbo v5, ""

    .line 177
    invoke-interface {v2, v3, p2, v4, v5}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v1

    .line 181
    .local v1, "result":[B
    if-eqz v1, :cond_0

    .line 182
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "result":[B
    .end local v2    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :goto_0
    return-object v3

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 189
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public DecryptData([B[B)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "key"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    .line 219
    :try_start_0
    iget-object v3, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 220
    invoke-static {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v2

    .line 222
    .local v2, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v2, :cond_0

    .line 223
    const/16 v3, 0x10

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v5, ""

    .line 224
    invoke-interface {v2, v3, v4, p1, v5}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    .end local v2    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :goto_0
    return-object v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 233
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 148
    invoke-static {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v2

    .line 150
    .local v2, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v2, :cond_0

    .line 151
    const/16 v3, 0x10

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string/jumbo v5, ""

    .line 152
    invoke-interface {v2, v3, p2, v4, v5}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v1

    .line 156
    .local v1, "result":[B
    if-eqz v1, :cond_0

    .line 157
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "result":[B
    .end local v2    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :goto_0
    return-object v3

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 164
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public EncryptData([B[B)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "key"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 198
    invoke-static {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v2

    .line 200
    .local v2, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v2, :cond_0

    .line 201
    const/16 v3, 0x10

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v5, ""

    .line 202
    invoke-interface {v2, v3, v4, p1, v5}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 211
    .end local v2    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 211
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 258
    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 260
    .local v0, "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 267
    .end local v0    # "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    :goto_0
    return-object v2

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 267
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Get(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ctx"    # Lcom/taobao/securityjni/tools/DataContext;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    if-eqz p2, :cond_2

    .line 54
    :try_start_0
    iget-object v5, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 55
    invoke-static {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v4

    .line 56
    .local v4, "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    if-eqz v4, :cond_2

    .line 57
    iget-object v5, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v5, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 60
    .local v0, "appKey":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 61
    iget-object v5, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 62
    invoke-static {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v3

    .line 64
    .local v3, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v3, :cond_2

    .line 65
    const/16 v5, 0x10

    const-string/jumbo v6, ""

    invoke-interface {v3, v5, v0, p1, v6}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v3    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :goto_1
    return-object v2

    .line 57
    .restart local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :cond_0
    iget v5, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    const-string/jumbo v6, ""

    .line 58
    invoke-interface {v4, v5, v6}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    iget v5, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 72
    .end local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 77
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public Get([B)[B
    .locals 4
    .param p1, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 297
    :try_start_0
    iget-object v3, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 298
    invoke-static {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 300
    .local v0, "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 301
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v3}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 304
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 311
    .end local v0    # "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 311
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public Get([BLcom/taobao/securityjni/tools/DataContext;)[B
    .locals 7
    .param p1, "data"    # [B
    .param p2, "ctx"    # Lcom/taobao/securityjni/tools/DataContext;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    if-eqz p1, :cond_2

    array-length v5, p1

    if-lez v5, :cond_2

    if-eqz p2, :cond_2

    .line 116
    :try_start_0
    iget-object v5, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 117
    invoke-static {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v4

    .line 118
    .local v4, "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    if-eqz v4, :cond_2

    .line 119
    iget-object v5, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v5, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 122
    .local v0, "appKey":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 123
    iget-object v5, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 124
    invoke-static {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v3

    .line 126
    .local v3, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v3, :cond_2

    .line 127
    const/16 v5, 0x10

    const-string/jumbo v6, ""

    invoke-interface {v3, v5, v0, p1, v6}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v2

    .line 139
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v3    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :goto_1
    return-object v2

    .line 119
    .restart local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :cond_0
    iget v5, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    const-string/jumbo v6, ""

    .line 120
    invoke-interface {v4, v5, v6}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    iget v5, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 135
    .end local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 139
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public Put(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 241
    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 243
    .local v0, "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 250
    .end local v0    # "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    :goto_0
    return-object v2

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 250
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Put(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ctx"    # Lcom/taobao/securityjni/tools/DataContext;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    if-eqz p2, :cond_2

    .line 23
    :try_start_0
    iget-object v5, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 24
    invoke-static {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v4

    .line 25
    .local v4, "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    if-eqz v4, :cond_2

    .line 26
    iget-object v5, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v5, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 29
    .local v0, "appKey":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    iget-object v5, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 31
    invoke-static {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v3

    .line 33
    .local v3, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v3, :cond_2

    .line 34
    const/16 v5, 0x10

    const-string/jumbo v6, ""

    invoke-interface {v3, v5, v0, p1, v6}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v3    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :goto_1
    return-object v2

    .line 26
    .restart local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :cond_0
    iget v5, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    const-string/jumbo v6, ""

    .line 27
    invoke-interface {v4, v5, v6}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_1
    iget v5, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 42
    .end local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 47
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public Put([B)[B
    .locals 4
    .param p1, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 276
    invoke-static {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 278
    .local v0, "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 279
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v3}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 282
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 289
    .end local v0    # "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 289
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public Put([BLcom/taobao/securityjni/tools/DataContext;)[B
    .locals 7
    .param p1, "data"    # [B
    .param p2, "ctx"    # Lcom/taobao/securityjni/tools/DataContext;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    if-eqz p1, :cond_2

    array-length v5, p1

    if-lez v5, :cond_2

    if-eqz p2, :cond_2

    .line 85
    :try_start_0
    iget-object v5, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 86
    invoke-static {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v4

    .line 87
    .local v4, "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    if-eqz v4, :cond_2

    .line 88
    iget-object v5, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v5, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 91
    .local v0, "appKey":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 92
    iget-object v5, p0, Lcom/taobao/securityjni/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 93
    invoke-static {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v3

    .line 95
    .local v3, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v3, :cond_2

    .line 96
    const/16 v5, 0x10

    const-string/jumbo v6, ""

    invoke-interface {v3, v5, v0, p1, v6}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v2

    .line 108
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v3    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :goto_1
    return-object v2

    .line 88
    .restart local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :cond_0
    iget v5, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v5, :cond_1

    const/4 v5, 0x0

    :goto_2
    const-string/jumbo v6, ""

    .line 89
    invoke-interface {v4, v5, v6}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    iget v5, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 104
    .end local v4    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 108
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
