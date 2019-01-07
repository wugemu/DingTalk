.class public final Lfkl$1;
.super Ljava/lang/Object;
.source "VideoDevicePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkl;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfkl;


# direct methods
.method public constructor <init>(Lfkl;)V
    .locals 0
    .param p1, "this$0"    # Lfkl;

    .prologue
    .line 36
    iput-object p1, p0, Lfkl$1;->a:Lfkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 36
    check-cast p1, Ljava/util/List;

    .line 2040
    iget-object v0, p0, Lfkl$1;->a:Lfkl;

    .line 3017
    iput-object p1, v0, Lfkl;->c:Ljava/util/List;

    .line 2041
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "presenter device list size:"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lfkl$1;->a:Lfkl;

    .line 4017
    iget-object v3, v3, Lfkl;->c:Ljava/util/List;

    .line 2041
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lfxo;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2042
    iget-object v0, p0, Lfkl$1;->a:Lfkl;

    .line 5017
    iget-object v0, v0, Lfkl;->a:Lfir;

    .line 2042
    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lfkl$1;->a:Lfkl;

    .line 6017
    iget-object v2, v0, Lfkl;->a:Lfir;

    .line 2046
    iget-object v0, p0, Lfkl$1;->a:Lfkl;

    .line 7017
    iget-object v0, v0, Lfkl;->c:Ljava/util/List;

    .line 2046
    if-eqz v0, :cond_1

    iget-object v0, p0, Lfkl$1;->a:Lfkl;

    .line 8017
    iget-object v0, v0, Lfkl;->c:Ljava/util/List;

    .line 2046
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {v2, v1, v0}, Lfir;->a(ZI)V

    .line 36
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2046
    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lfkl$1;->a:Lfkl;

    .line 1017
    iget-object v0, v0, Lfkl;->b:Lfis;

    .line 57
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lfkl$1;->a:Lfkl;

    .line 2017
    iget-object v0, v0, Lfkl;->b:Lfis;

    .line 60
    invoke-interface {v0, p2}, Lfis;->b(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "code :"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 52
    return-void
.end method
