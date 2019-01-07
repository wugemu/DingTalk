.class public final Lict;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "TypingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lcom/alibaba/wukong/idl/typing/models/DeliveryTypingModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-string/jumbo v0, "typing"

    const-class v1, Lcom/alibaba/wukong/idl/typing/models/DeliveryTypingModel;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/alibaba/wukong/idl/typing/models/DeliveryTypingModel;

    .line 1020
    invoke-static {p1}, Liau;->a(Lcom/alibaba/wukong/idl/typing/models/DeliveryTypingModel;)V

    .line 2014
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    .line 13
    return-void
.end method
