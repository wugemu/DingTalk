.class final Lfln$3;
.super Ljava/lang/Object;
.source "ConcernService.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfln;->b(JLcma;)V
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
        "Lcom/alibaba/wukong/im/Follow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfln;


# direct methods
.method constructor <init>(Lfln;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfln;

    .prologue
    .line 146
    iput-object p1, p0, Lfln$3;->b:Lfln;

    iput-object p2, p0, Lfln$3;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lfln$3;->a:Lcma;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lfln$3;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 146
    check-cast p1, Lcom/alibaba/wukong/im/Follow;

    .line 1154
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfln$3;->b:Lfln;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Follow;->getStatus()Lcom/alibaba/wukong/im/Follow$FollowStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lfln;->a(Lfln;Lcom/alibaba/wukong/im/Follow$FollowStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    invoke-static {}, Lflm;->a()Lflm;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Follow;->getOpenId()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lflm;->a(JZ)V

    .line 1160
    iget-object v0, p0, Lfln$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lfln$3;->a:Lcma;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
