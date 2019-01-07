.class final Ljjx$c$2;
.super Ljava/lang/Object;
.source "PushInstance.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljjx$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljjx$c;


# direct methods
.method constructor <init>(Ljjx$c;)V
    .locals 0
    .param p1, "this$1"    # Ljjx$c;

    .prologue
    .line 693
    iput-object p1, p0, Ljjx$c$2;->a:Ljjx$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 703
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "LinkMicUtils.cmd failed, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 693
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 693
    check-cast p1, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;

    .line 1696
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;->data:[B

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Ljjx$c$2;->a:Ljjx$c;

    iget-object v0, v0, Ljjx$c;->a:Ljjx;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/ArtcResultObject;->data:[B

    invoke-virtual {v0, v1}, Ljjx;->a([B)V

    .line 693
    :cond_0
    return-void
.end method
