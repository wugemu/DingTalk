.class final Lbtw$2;
.super Ljava/lang/Object;
.source "ViewerFloatWindowController.java"

# interfaces
.implements Lbwf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtw;


# direct methods
.method constructor <init>(Lbtw;)V
    .locals 0
    .param p1, "this$0"    # Lbtw;

    .prologue
    .line 162
    iput-object p1, p0, Lbtw$2;->a:Lbtw;

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
    .line 165
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->topic:Ljava/lang/String;

    iget-object v1, p0, Lbtw$2;->a:Lbtw;

    .line 1044
    iget-object v1, v1, Lbtw;->a:Ljava/lang/String;

    .line 165
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lbtw$2;->a:Lbtw;

    invoke-static {v0, p1}, Lbtw;->a(Lbtw;Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;

    .prologue
    .line 178
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
    .line 182
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;>;"
    return-void
.end method

.method public final a([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 173
    return-void
.end method
