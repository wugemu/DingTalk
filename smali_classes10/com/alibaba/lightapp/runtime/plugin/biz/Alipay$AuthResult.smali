.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;
.super Ljava/lang/Object;
.source "Alipay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthResult"
.end annotation


# instance fields
.field private alipayOpenId:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private memo:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;

.field private resultStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Ljava/lang/String;)V
    .locals 10
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;
    .param p2, "rawResult"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 197
    const-string/jumbo v8, ";"

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "resultParams":[Ljava/lang/String;
    move-object v4, v3

    .line 199
    .local v4, "resultValue":[Ljava/lang/String;
    array-length v0, v3

    .line 202
    .local v0, "arr$":I
    const/4 v2, 0x0

    .local v2, "len$":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 203
    aget-object v1, v4, v2

    .line 204
    .local v1, "i$":Ljava/lang/String;
    const-string/jumbo v8, "resultStatus"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 205
    const-string/jumbo v8, "resultStatus"

    invoke-direct {p0, v1, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->getResultParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->resultStatus:Ljava/lang/String;

    .line 208
    :cond_0
    const-string/jumbo v8, "result"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 209
    const-string/jumbo v8, "result"

    invoke-direct {p0, v1, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->getResultParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->result:Ljava/lang/String;

    .line 212
    :cond_1
    const-string/jumbo v8, "memo"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 213
    const-string/jumbo v8, "memo"

    invoke-direct {p0, v1, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->getResultParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->memo:Ljava/lang/String;

    .line 202
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "i$":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->result:Ljava/lang/String;

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 218
    move-object v6, v4

    .line 219
    .local v6, "var8":[Ljava/lang/String;
    array-length v2, v4

    .line 221
    const/4 v7, 0x0

    .local v7, "var9":I
    :goto_1
    if-ge v7, v2, :cond_7

    .line 222
    aget-object v5, v6, v7

    .line 223
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v8, "alipay_open_id"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 224
    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->alipayOpenId:Ljava/lang/String;

    .line 227
    :cond_4
    const-string/jumbo v8, "auth_code"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 228
    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->authCode:Ljava/lang/String;

    .line 231
    :cond_5
    const-string/jumbo v8, "result_code"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 232
    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->resultCode:Ljava/lang/String;

    .line 221
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "arr$":I
    .end local v2    # "len$":I
    .end local v3    # "resultParams":[Ljava/lang/String;
    .end local v4    # "resultValue":[Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "var8":[Ljava/lang/String;
    .end local v7    # "var9":I
    :cond_7
    return-void
.end method

.method private getResultParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 249
    const-string/jumbo v3, "=\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "content":[Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 251
    .local v1, "result":Ljava/lang/String;
    array-length v3, v0

    if-le v3, v4, :cond_1

    .line 252
    aget-object v2, v0, v4

    .line 253
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 260
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 255
    :cond_1
    const-string/jumbo v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 256
    array-length v3, v0

    if-le v3, v4, :cond_0

    .line 257
    aget-object v1, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getAlipayOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->alipayOpenId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->resultStatus:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resultStatus={"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "};memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "};result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$AuthResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
