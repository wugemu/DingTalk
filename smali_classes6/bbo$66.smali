.class final Lbbo$66;
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
        "Lbgh;",
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
    .line 4703
    iput-object p1, p0, Lbbo$66;->b:Lbbo;

    iput-object p2, p0, Lbbo$66;->a:Lcma;

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
    .line 4703
    check-cast p1, Lbgh;

    .line 5706
    if-eqz p1, :cond_1

    .line 5707
    iget-object v0, p0, Lbbo$66;->b:Lbbo;

    const/4 v1, 0x1

    new-array v1, v1, [Lbfb;

    const/4 v2, 0x0

    .line 6021
    iget-object v3, p1, Lbgh;->a:Lbfb;

    .line 5707
    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6139
    invoke-virtual {v0, v1}, Lbbo;->c(Ljava/util/List;)Z

    .line 5708
    iget-object v0, p0, Lbbo$66;->a:Lcma;

    if-eqz v0, :cond_0

    .line 5709
    iget-object v0, p0, Lbbo$66;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 5712
    :cond_1
    iget-object v0, p0, Lbbo$66;->a:Lcma;

    if-eqz v0, :cond_0

    .line 5713
    iget-object v0, p0, Lbbo$66;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4724
    iget-object v0, p0, Lbbo$66;->a:Lcma;

    if-eqz v0, :cond_0

    .line 4725
    iget-object v0, p0, Lbbo$66;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4727
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4720
    return-void
.end method
