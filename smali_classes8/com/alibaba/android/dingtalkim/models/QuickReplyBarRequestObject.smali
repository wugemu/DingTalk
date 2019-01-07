.class public Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;
.super Ljava/lang/Object;
.source "QuickReplyBarRequestObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1d9461c6c6d59841L


# instance fields
.field public api:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "api"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public corpId:Ljava/lang/String;

.field public dingEmployeeId:Ljava/lang/String;

.field public headers:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "headers"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public param:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "param"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sid"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "v"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->corpId:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 57
    :try_start_0
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->param:Lcom/google/gson/JsonObject;

    .line 58
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->param:Lcom/google/gson/JsonObject;

    const-string/jumbo v3, "corpId"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->corpId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->param:Lcom/google/gson/JsonObject;

    const-string/jumbo v3, "dingEmployeeId"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->dingEmployeeId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-static {v2, p0}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "var2":Ljava/lang/Exception;
    const-string/jumbo v2, "dt_live"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "QuickReplyBarRequestObject toJson failed, error="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
