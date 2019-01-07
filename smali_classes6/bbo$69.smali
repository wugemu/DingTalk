.class final Lbbo$69;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 1206
    iput-object p1, p0, Lbbo$69;->b:Lbbo;

    iput-object p2, p0, Lbbo$69;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1206
    .line 2209
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[confirmAllDing] confirm success."

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2211
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v0

    iget-object v1, p0, Lbbo$69;->b:Lbbo;

    .line 3139
    iget-object v1, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 2211
    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbs;->j(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2212
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2214
    if-eqz v0, :cond_0

    .line 2218
    invoke-static {v0}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2219
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 2222
    :cond_1
    iget-object v2, p0, Lbbo$69;->b:Lbbo;

    .line 4139
    iget-object v2, v2, Lbbo;->f:Lbgp;

    .line 2222
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-interface {v2, v0, v3}, Lbgp;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)I

    goto :goto_0

    .line 2224
    :cond_2
    iget-object v0, p0, Lbbo$69;->b:Lbbo;

    invoke-virtual {v0}, Lbbo;->e()V

    .line 2226
    :cond_3
    iget-object v0, p0, Lbbo$69;->b:Lbbo;

    iget-object v1, p0, Lbbo$69;->a:Lcom/alibaba/wukong/Callback;

    .line 5139
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1206
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1235
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[confirmAllDing] failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lbbo$69;->b:Lbbo;

    iget-object v1, p0, Lbbo$69;->a:Lcom/alibaba/wukong/Callback;

    .line 2139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1231
    return-void
.end method
