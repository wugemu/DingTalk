.class public final Laxe;
.super Ljava/lang/Object;
.source "EventHolderFactoryV2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static a(Lawv;)Z
    .locals 2
    .param p0, "event"    # Lawv;

    .prologue
    .line 61
    if-eqz p0, :cond_0

    .line 62
    sget-object v0, Laxe$1;->a:[I

    invoke-interface {p0}, Lawv;->getType()Lcom/alibaba/android/calendar/v2/data/object/EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/v2/data/object/EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 65
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
