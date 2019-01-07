.class Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;
.super Ljava/lang/Object;
.source "SignJsonSerializer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;->sortNVPairList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/message/BasicNameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;->this$0:Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Lorg/apache/http/message/BasicNameValuePair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/http/message/BasicNameValuePair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/mrpc/core/gwprotocol/SignJsonSerializer$1;->compare(Lorg/apache/http/message/BasicNameValuePair;Lorg/apache/http/message/BasicNameValuePair;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/message/BasicNameValuePair;Lorg/apache/http/message/BasicNameValuePair;)I
    .locals 2
    .param p1, "lhs"    # Lorg/apache/http/message/BasicNameValuePair;
    .param p2, "rhs"    # Lorg/apache/http/message/BasicNameValuePair;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 87
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
