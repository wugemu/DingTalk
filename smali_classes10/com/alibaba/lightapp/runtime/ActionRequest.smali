.class public Lcom/alibaba/lightapp/runtime/ActionRequest;
.super Ljava/lang/Object;
.source "ActionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/ActionRequest$b;,
        Lcom/alibaba/lightapp/runtime/ActionRequest$a;
    }
.end annotation


# static fields
.field public static final FROM_TYPE_H5:I = 0x0

.field public static final FROM_TYPE_MINI:I = 0x2

.field public static final FROM_TYPE_WEEX:I = 0x1

.field public static final FROM_TYPE_WML:I = 0x3


# instance fields
.field public action:Ljava/lang/String;

.field public appInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$a;

.field public args:Lorg/json/JSONObject;

.field public async:Z

.field public callbackId:Ljava/lang/String;

.field public cookie:Ljava/lang/String;

.field public fromType:I

.field public miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

.field public service:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->async:Z

    .line 102
    return-void
.end method


# virtual methods
.method public getCorpId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    const-string/jumbo v0, "corpId"

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/ActionRequest;->getCorpId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCorpId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->fromType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "org"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->b:Ljava/lang/String;

    .line 47
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->c:Ljava/lang/String;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    const-string/jumbo v0, ""

    .line 59
    .local v0, "actionRequest":Ljava/lang/String;
    const/16 v1, 0x12

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "ActionRequest{"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "service="

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->service:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string/jumbo v3, ", action="

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->action:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string/jumbo v3, ", url="

    aput-object v3, v2, v1

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string/jumbo v3, ", callbackId="

    aput-object v3, v2, v1

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string/jumbo v3, ", args="

    aput-object v3, v2, v1

    const/16 v3, 0xa

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v2, v3

    const/16 v1, 0xb

    const-string/jumbo v3, ", fromType="

    aput-object v3, v2, v1

    const/16 v1, 0xc

    iget v3, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->fromType:I

    .line 71
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string/jumbo v3, ", appInfo="

    aput-object v3, v2, v1

    const/16 v3, 0xe

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->appInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->appInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$a;

    .line 73
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/ActionRequest$a;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v2, v3

    const/16 v1, 0xf

    const-string/jumbo v3, ", miniAppInfo="

    aput-object v3, v2, v1

    const/16 v3, 0x10

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    .line 75
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v2, v3

    const/16 v1, 0x11

    const-string/jumbo v3, "}"

    aput-object v3, v2, v1

    .line 59
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_3
    return-object v0

    .line 69
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1

    .line 75
    :cond_2
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3
.end method
