.class Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;
.super Ljava/lang/Object;
.source "BluetoothChannelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothClientRef"
.end annotation


# instance fields
.field public mChannel:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;

.field public mRef:I

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager$BluetoothClientRef;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
