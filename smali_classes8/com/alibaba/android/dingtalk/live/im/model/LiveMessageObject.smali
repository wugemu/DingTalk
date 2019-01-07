.class public Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;
.super Ljava/lang/Object;
.source "LiveMessageObject.java"

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
        "Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5dc4d150a0bf1607L


# instance fields
.field public contentType:I

.field public messageType:I

.field public textContent:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;>;"
    if-nez p0, :cond_1

    .line 58
    const/4 v1, 0x0

    .line 77
    :cond_0
    return-object v1

    .line 61
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v1, "barrages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;

    .line 63
    .local v2, "msg":Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->textContent:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 66
    iget v4, v2, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->contentType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 70
    new-instance v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;-><init>()V

    .line 71
    .local v0, "barrage":Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
    iput-object v2, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->mLiveMessage:Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;

    .line 72
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->timestamp:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->timestamp:J

    .line 73
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->textContent:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromIdl(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbwm;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lbwm;>;"
    if-nez p0, :cond_1

    .line 36
    const/4 v2, 0x0

    .line 53
    :cond_0
    return-object v2

    .line 39
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwm;

    .line 41
    .local v0, "model":Lbwm;
    if-eqz v0, :cond_2

    .line 44
    new-instance v1, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;-><init>()V

    .line 45
    .local v1, "object":Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;
    iget-object v4, v0, Lbwm;->a:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    iput v4, v1, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->messageType:I

    .line 46
    iget-object v4, v0, Lbwm;->b:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    iput v4, v1, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->contentType:I

    .line 47
    iget-object v4, v0, Lbwm;->c:Ljava/lang/Long;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->timestamp:J

    .line 48
    iget-object v4, v0, Lbwm;->d:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->textContent:Ljava/lang/String;

    .line 50
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;)I
    .locals 4
    .param p1, "o"    # Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->timestamp:J

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->timestamp:J

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->timestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 85
    const/4 v0, -0x1

    goto :goto_0

    .line 87
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
    .line 18
    check-cast p1, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->compareTo(Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;)I

    move-result v0

    return v0
.end method
