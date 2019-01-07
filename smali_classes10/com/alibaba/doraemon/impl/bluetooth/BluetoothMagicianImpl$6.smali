.class Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$6;
.super Ljava/lang/Object;
.source "BluetoothMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->releaseClient(Ljava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

.field final synthetic val$client:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$6;->val$client:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$6;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$6;->val$client:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->releaseClient(Ljava/lang/Object;)V

    .line 350
    return-void
.end method
