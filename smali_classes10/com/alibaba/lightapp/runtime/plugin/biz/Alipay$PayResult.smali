.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;
.super Ljava/lang/Object;
.source "Alipay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PayResult"
.end annotation


# instance fields
.field private memo:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private resultStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;Ljava/lang/String;)V
    .locals 6
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;
    .param p2, "rawResult"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 113
    const-string/jumbo v5, ";"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "resultParams":[Ljava/lang/String;
    move-object v0, v4

    .line 115
    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v4

    .line 117
    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 118
    aget-object v3, v0, v1

    .line 119
    .local v3, "resultParam":Ljava/lang/String;
    const-string/jumbo v5, "resultStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    const-string/jumbo v5, "resultStatus"

    invoke-direct {p0, v3, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->resultStatus:Ljava/lang/String;

    .line 123
    :cond_0
    const-string/jumbo v5, "result"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    const-string/jumbo v5, "result"

    invoke-direct {p0, v3, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->result:Ljava/lang/String;

    .line 127
    :cond_1
    const-string/jumbo v5, "memo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    const-string/jumbo v5, "memo"

    invoke-direct {p0, v3, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->memo:Ljava/lang/String;

    .line 117
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "resultParam":Ljava/lang/String;
    .end local v4    # "resultParams":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private gatValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
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


# virtual methods
.method public getMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->resultStatus:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "resultStatus={"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "};memo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "};result={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Alipay$PayResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
