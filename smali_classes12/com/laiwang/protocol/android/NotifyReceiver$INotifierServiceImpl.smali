.class Lcom/laiwang/protocol/android/NotifyReceiver$INotifierServiceImpl;
.super Lcom/laiwang/protocol/c$a;
.source "NotifyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/NotifyReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "INotifierServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/android/NotifyReceiver;


# direct methods
.method private constructor <init>(Lcom/laiwang/protocol/android/NotifyReceiver;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/laiwang/protocol/android/NotifyReceiver$INotifierServiceImpl;->this$0:Lcom/laiwang/protocol/android/NotifyReceiver;

    invoke-direct {p0}, Lcom/laiwang/protocol/c$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/laiwang/protocol/android/NotifyReceiver;Lcom/laiwang/protocol/android/NotifyReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/laiwang/protocol/android/NotifyReceiver;
    .param p2, "x1"    # Lcom/laiwang/protocol/android/NotifyReceiver$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/NotifyReceiver$INotifierServiceImpl;-><init>(Lcom/laiwang/protocol/android/NotifyReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "message"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/laiwang/protocol/android/NotifyReceiver$INotifierServiceImpl;->this$0:Lcom/laiwang/protocol/android/NotifyReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/NotifyReceiver;->onReceiveFromRemote(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 172
    return-void
.end method
