.class final Lhig$2;
.super Ljava/lang/Object;
.source "TunnelIServiceHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lhig$a;

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(JLhig$a;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 137
    iput-wide p1, p0, Lhig$2;->a:J

    iput-object p3, p0, Lhig$2;->b:Lhig$a;

    iput-object p4, p0, Lhig$2;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 137
    check-cast p1, Ljava/lang/String;

    .line 1140
    const-string/jumbo v0, "dd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lhig$2;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->mtopLoadTime(Ljava/lang/String;J)V

    .line 1142
    iget-object v0, p0, Lhig$2;->b:Lhig$a;

    if-eqz v0, :cond_0

    .line 1144
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1146
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1147
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1149
    iget-object v1, p0, Lhig$2;->b:Lhig$a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lhig$a;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1152
    iget-object v1, p0, Lhig$2;->b:Lhig$a;

    iget-object v2, p0, Lhig$2;->c:Lorg/json/JSONObject;

    const-string/jumbo v3, "ERR_JSON"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cannot parse result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lhig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lhig$a;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 164
    const-string/jumbo v0, "dd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lhig$2;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeWeexStatistics;->mtopLoadTime(Ljava/lang/String;J)V

    .line 165
    iget-object v0, p0, Lhig$2;->b:Lhig$a;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lhig$2;->b:Lhig$a;

    iget-object v1, p0, Lhig$2;->c:Lorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lhig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhig$a;->onResult(Ljava/lang/Object;)V

    .line 168
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 160
    return-void
.end method
