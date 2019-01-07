.class final Lcws$1;
.super Ljava/lang/Object;
.source "QuickReplyItemAdapter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcws;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcws;


# direct methods
.method constructor <init>(Lcws;)V
    .locals 0
    .param p1, "this$0"    # Lcws;

    .prologue
    .line 247
    iput-object p1, p0, Lcws$1;->a:Lcws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "QuickReplyItemAdapter"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ErrorCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 247
    check-cast p1, Ljava/lang/String;

    .line 1251
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1252
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1253
    if-nez v0, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1257
    if-eqz v0, :cond_0

    .line 1260
    const-string/jumbo v1, "hasNewCoupons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1261
    const-string/jumbo v2, "hasNewGoods"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1262
    const-string/jumbo v3, "hasNewContents"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1264
    iget-object v0, p0, Lcws$1;->a:Lcws;

    invoke-static {v0}, Lcws;->a(Lcws;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1265
    iget-object v0, p0, Lcws$1;->a:Lcws;

    invoke-static {v0}, Lcws;->a(Lcws;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcws$a;

    .line 1266
    if-eqz v0, :cond_2

    .line 1270
    iget v5, v0, Lcws$a;->c:I

    if-ne v5, v6, :cond_3

    .line 1271
    iput-boolean v3, v0, Lcws$a;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1289
    :catch_0
    move-exception v0

    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "QuickReplyItemAdapter"

    aput-object v4, v2, v3

    const-string/jumbo v3, "parseJsonError"

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    :cond_3
    :try_start_1
    iget v5, v0, Lcws$a;->c:I

    if-ne v5, v7, :cond_4

    .line 1273
    iput-boolean v1, v0, Lcws$a;->d:Z

    goto :goto_1

    .line 1274
    :cond_4
    iget v5, v0, Lcws$a;->c:I

    if-nez v5, :cond_2

    .line 1275
    iput-boolean v2, v0, Lcws$a;->d:Z

    goto :goto_1

    .line 1279
    :cond_5
    iget-object v0, p0, Lcws$1;->a:Lcws;

    invoke-static {v0}, Lcws;->b(Lcws;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcws$1;->a:Lcws;

    invoke-static {v0}, Lcws;->b(Lcws;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcws$1$1;

    invoke-direct {v1, p0}, Lcws$1$1;-><init>(Lcws$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
