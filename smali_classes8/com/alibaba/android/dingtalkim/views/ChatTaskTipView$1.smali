.class public final Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;
.super Ljava/lang/Object;
.source "ChatTaskTipView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Laze;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    check-cast p1, Laze;

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;I)I

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1169
    if-eqz p1, :cond_0

    .line 2030
    iget-object v0, p1, Laze;->c:Ljava/util/List;

    .line 1169
    if-eqz v0, :cond_0

    .line 3030
    iget-object v0, p1, Laze;->c:Ljava/util/List;

    .line 1169
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)Ljava/util/List;

    move-result-object v0

    .line 4030
    iget-object v1, p1, Laze;->c:Ljava/util/List;

    .line 1170
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .line 4034
    iget v1, p1, Laze;->d:I

    .line 1171
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;I)I

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 160
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    .line 187
    const-string/jumbo v0, "getSingleChatTaskStat"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getSingleChatTaskStat onException code:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", mUserId="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;->a:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .line 188
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 187
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 181
    return-void
.end method
