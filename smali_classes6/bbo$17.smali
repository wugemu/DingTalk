.class final Lbbo$17;
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
.field final synthetic a:Lcma;

.field final synthetic b:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 2166
    iput-object p1, p0, Lbbo$17;->b:Lbbo;

    iput-object p2, p0, Lbbo$17;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2166
    .line 3171
    iget-object v0, p0, Lbbo$17;->b:Lbbo;

    .line 4139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 3171
    invoke-interface {v0}, Lbgp;->g()I

    .line 3174
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v0

    iget-object v1, p0, Lbbo$17;->b:Lbbo;

    .line 5139
    iget-object v1, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 3174
    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbs;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 3175
    if-eqz v0, :cond_0

    .line 3176
    iget-object v1, p0, Lbbo$17;->b:Lbbo;

    .line 6139
    iget-object v1, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 3176
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3179
    :cond_0
    iget-object v0, p0, Lbbo$17;->b:Lbbo;

    iget-object v1, p0, Lbbo$17;->a:Lcma;

    const/4 v2, 0x0

    .line 7139
    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 2166
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2188
    iget-object v0, p0, Lbbo$17;->b:Lbbo;

    iget-object v1, p0, Lbbo$17;->a:Lcma;

    .line 3139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2184
    return-void
.end method
