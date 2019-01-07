.class public final Lcom/taobao/accs/data/Message$a;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 68
    packed-switch p0, :pswitch_data_0

    .line 78
    const-string/jumbo v0, "INVALID"

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    const-string/jumbo v0, "CONTROL"

    goto :goto_0

    .line 72
    :pswitch_1
    const-string/jumbo v0, "DATA"

    goto :goto_0

    .line 74
    :pswitch_2
    const-string/jumbo v0, "PING"

    goto :goto_0

    .line 76
    :pswitch_3
    const-string/jumbo v0, "HANDSHAKE"

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
