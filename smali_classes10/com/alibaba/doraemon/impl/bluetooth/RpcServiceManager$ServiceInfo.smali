.class Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;
.super Ljava/lang/Object;
.source "RpcServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceInfo"
.end annotation


# instance fields
.field public mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Ljava/lang/Object;

.field public mStateListener:Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager$ServiceInfo;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/RpcServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
