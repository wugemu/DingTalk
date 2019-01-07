.class public final Lcom/mybank/android/api/RpcTask$a;
.super Ljava/lang/Object;
.source "RpcTask.java"

# interfaces
.implements Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankBridgeContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/api/RpcTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljfa;

.field final synthetic b:Lcom/mybank/android/api/RpcTask;


# direct methods
.method public constructor <init>(Lcom/mybank/android/api/RpcTask;Ljfa;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/api/RpcTask;
    .param p2, "listener"    # Ljfa;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mybank/android/api/RpcTask$a;->b:Lcom/mybank/android/api/RpcTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/mybank/android/api/RpcTask$a;->a:Ljfa;

    .line 37
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mybank/android/api/RpcTask$a;->b:Lcom/mybank/android/api/RpcTask;

    invoke-static {v0}, Lcom/mybank/android/api/RpcTask;->a(Lcom/mybank/android/api/RpcTask;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final sendBridgeResult(ZLorg/json/JSONObject;)Z
    .locals 3
    .param p1, "succ"    # Z
    .param p2, "result"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    move v1, p1

    .line 43
    .local v1, "success":Z
    :try_start_0
    const-string/jumbo v2, "success"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/mybank/android/api/RpcTask$a;->a:Ljfa;

    invoke-interface {v2, v1, p2}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 49
    const/4 v2, 0x1

    return v2

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
