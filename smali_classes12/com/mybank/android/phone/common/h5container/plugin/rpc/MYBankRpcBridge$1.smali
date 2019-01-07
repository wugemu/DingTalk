.class Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$1;
.super Ljava/lang/Object;
.source "MYBankRpcBridge.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;->onPreExecute(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankServerParam;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge$1;->this$0:Lcom/mybank/android/phone/common/h5container/plugin/rpc/MYBankRpcBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const-class v0, Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;

    return-object v0
.end method
