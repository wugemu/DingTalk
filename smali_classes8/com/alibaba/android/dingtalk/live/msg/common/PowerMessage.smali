.class public Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
.super Ljava/lang/Object;
.source "PowerMessage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public bizCode:I

.field public data:[B

.field public from:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public needAck:Z

.field public priority:I

.field public qosLevel:I

.field public sendFullTags:Z

.field public tags:[Ljava/lang/String;

.field public timestamp:J

.field public to:Ljava/lang/String;

.field public topic:Ljava/lang/String;

.field public type:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->type:I

    .line 30
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)I
    .locals 4
    .param p1, "o"    # Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->timestamp:J

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    .line 42
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->timestamp:J

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->timestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 43
    const/4 v0, -0x1

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    check-cast p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->compareTo(Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)I

    move-result v0

    return v0
.end method

.method public fromData()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public toData()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
