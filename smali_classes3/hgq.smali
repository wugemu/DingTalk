.class public final Lhgq;
.super Ljava/lang/Object;
.source "UniActionResponse.java"


# instance fields
.field public a:Lcom/alibaba/fastjson/JSONObject;

.field private b:I

.field private c:Lcom/alibaba/fastjson/JSONObject;

.field private d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "isFrameworkError"    # Z

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lhgq;->b:I

    .line 31
    iput-boolean v1, p0, Lhgq;->d:Z

    .line 54
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 55
    .local v0, "error":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "errorCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "errorMessage"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object v0, p0, Lhgq;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 60
    iput p1, p0, Lhgq;->b:I

    .line 1134
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v1, p0, Lhgq;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 1135
    iget-object v1, p0, Lhgq;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "resultCode"

    iget v3, p0, Lhgq;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    iget-object v2, p0, Lhgq;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "result"

    iget-object v1, p0, Lhgq;->c:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhgq;->c:Lcom/alibaba/fastjson/JSONObject;

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void

    .line 1136
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0
.end method
