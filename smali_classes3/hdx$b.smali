.class final Lhdx$b;
.super Ljava/lang/Object;
.source "DrawerDelegate.java"

# interfaces
.implements Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lhdx;


# direct methods
.method constructor <init>(Lhdx;)V
    .locals 0
    .param p1, "this$0"    # Lhdx;

    .prologue
    .line 241
    iput-object p1, p0, Lhdx$b;->a:Lhdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 245
    const-string/jumbo v4, "callHandler"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    :try_start_0
    const-string/jumbo v4, "api"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "apiName":Ljava/lang/String;
    const-string/jumbo v4, "jsonArgs"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "jsonArgs":Ljava/lang/String;
    const-string/jumbo v4, "callbackId"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1260
    .local v1, "callbackId":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lhdx$b$1;

    invoke-direct {v5, p0, v0, v3, v1}, Lhdx$b$1;-><init>(Lhdx$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "apiName":Ljava/lang/String;
    .end local v1    # "callbackId":Ljava/lang/String;
    .end local v3    # "jsonArgs":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v4, ""

    return-object v4

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
