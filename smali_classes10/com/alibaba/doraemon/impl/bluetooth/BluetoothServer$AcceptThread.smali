.class Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AcceptThread"
.end annotation


# instance fields
.field private mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 196
    const-string/jumbo v0, "Bluetooth-AcceptThread"

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->setName(Ljava/lang/String;)V

    .line 198
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BluetoothServer"

    const-string/jumbo v2, "close() of server failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    const-string/jumbo v4, "BluetoothChatInsecure"

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .line 204
    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/UUID;

    move-result-object v5

    .line 203
    invoke-virtual {v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BEGIN mAcceptThread"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    const-string/jumbo v3, "BluetoothServer"

    const-string/jumbo v4, "ready to connect"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    .line 224
    .local v2, "socket":Landroid/bluetooth/BluetoothSocket;
    const-string/jumbo v3, "BluetoothServer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Socket connected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    if-eqz v2, :cond_0

    .line 233
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    move-result-object v3

    const-string/jumbo v4, "bluetooth_server"

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/UUID;

    move-result-object v5

    const-string/jumbo v6, "NAME_"

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V

    .line 234
    .local v0, "bluetoothChannel":Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->connected(Landroid/bluetooth/BluetoothSocket;Z)V

    .line 235
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;->onBluetoothSocketConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;)V

    goto :goto_0

    .line 205
    .end local v0    # "bluetoothChannel":Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
    .end local v2    # "socket":Landroid/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$500(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;->onBluetoothListenerFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V

    .line 207
    const-string/jumbo v3, "BluetoothServer"

    const-string/jumbo v4, "listen() failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 209
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 210
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$800(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V

    .line 228
    :goto_1
    return-void

    .line 225
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 226
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "BluetoothServer"

    const-string/jumbo v4, "accept() failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->access$800(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V

    goto :goto_1
.end method
