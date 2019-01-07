.class Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$2;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;->createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2$2;->this$1:Lcom/alipay/android/phone/mrpc/core/AndroidHttpClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method
