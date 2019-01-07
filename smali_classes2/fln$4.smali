.class final Lfln$4;
.super Ljava/lang/Object;
.source "ConcernService.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfln;->a(IILcma;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Follow;",
        ">;>;"
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
    .line 197
    iput-object p1, p0, Lfln$4;->b:Lfln;

    iput-object p2, p0, Lfln$4;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lfln$4;->a:Lcma;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lfln$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 197
    check-cast p1, Ljava/util/List;

    .line 1200
    iget-object v0, p0, Lfln$4;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1207
    :cond_0
    iget-object v0, p0, Lfln$4;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1208
    :cond_1
    :goto_0
    return-void

    .line 1211
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Follow;

    .line 1212
    if-eqz v0, :cond_3

    iget-object v3, p0, Lfln$4;->b:Lfln;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Follow;->getStatus()Lcom/alibaba/wukong/im/Follow$FollowStatus;

    move-result-object v4

    invoke-static {v3, v4}, Lfln;->a(Lfln;Lcom/alibaba/wukong/im/Follow$FollowStatus;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1213
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Follow;->getOpenId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1217
    :cond_4
    iget-object v0, p0, Lfln$4;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
