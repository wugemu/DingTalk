.class public final Lbwq$4;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Lbwf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwq;


# direct methods
.method public constructor <init>(Lbwq;)V
    .locals 0
    .param p1, "this$0"    # Lbwq;

    .prologue
    .line 293
    iput-object p1, p0, Lbwq$4;->a:Lbwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V
    .locals 2
    .param p1, "powerMessage"    # Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 296
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbwq$4;->a:Lbwq;

    invoke-static {v0}, Lbwq;->h(Lbwq;)Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->topic:Ljava/lang/String;

    iget-object v1, p0, Lbwq$4;->a:Lbwq;

    .line 297
    invoke-static {v1}, Lbwq;->h(Lbwq;)Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lbwq$4;->a:Lbwq;

    invoke-static {v0, p1}, Lbwq;->a(Lbwq;Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;

    .prologue
    .line 311
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;>;"
    return-void
.end method

.method public final a([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 306
    return-void
.end method
