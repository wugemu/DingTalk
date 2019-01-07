.class public Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
.super Ljava/lang/Object;
.source "DingSimCardBaseSetting.java"


# static fields
.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_IS_VALID:Ljava/lang/String; = "valid"

.field public static final KEY_URI:Ljava/lang/String; = "uri"


# instance fields
.field protected content:Ljava/lang/String;

.field protected uri:Ljava/lang/String;

.field protected valid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->valid:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->content:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->uri:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->valid:Z

    .line 50
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "valid"

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->valid:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v1, "content"

    iget-object v2, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DingSimCardBaseSetting{"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "valid="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->valid:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", content=\'"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->content:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", uri=\'"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->uri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
