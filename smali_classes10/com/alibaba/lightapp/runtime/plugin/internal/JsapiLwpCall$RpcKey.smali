.class Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;
.super Ljava/lang/Object;
.source "JsapiLwpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RpcKey"
.end annotation


# instance fields
.field private args:[Ljava/lang/Object;

.field private methodName:Ljava/lang/String;

.field private reply:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->methodName:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    .line 176
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 187
    if-nez p1, :cond_1

    .line 188
    const/4 v1, 0x0

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v3

    .line 191
    goto :goto_0

    .line 193
    :cond_2
    const/4 v1, 0x0

    .local v1, "isEqual":Z
    move-object v2, p1

    .line 194
    check-cast v2, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;

    .line 195
    .local v2, "that":Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->methodName:Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    array-length v4, v4

    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    array-length v5, v5

    if-ne v4, v5, :cond_7

    .line 198
    const/4 v0, 0x0

    .line 201
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_3

    move v1, v3

    .line 202
    goto :goto_0

    .line 205
    :cond_3
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-eqz v4, :cond_5

    .line 206
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    aget-object v4, v4, v0

    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 216
    :cond_4
    const/4 v1, 0x0

    .line 217
    goto :goto_0

    .line 209
    :cond_5
    iget-object v4, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-nez v4, :cond_4

    .line 213
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "i":I
    :cond_7
    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->args:[Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 218
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getReply()Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->reply:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setReply(Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;)V
    .locals 0
    .param p1, "reply"    # Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$RpcKey;->reply:Lcom/alibaba/lightapp/runtime/plugin/internal/JsapiLwpCall$ResponseReply;

    .line 180
    return-void
.end method
