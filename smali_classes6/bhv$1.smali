.class final Lbhv$1;
.super Ljava/lang/Object;
.source "UserProfileListFetcher.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhv;->a(ILjava/util/List;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lbhv;


# direct methods
.method constructor <init>(Lbhv;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lbhv;

    .prologue
    .line 47
    iput-object p1, p0, Lbhv$1;->c:Lbhv;

    iput-object p2, p0, Lbhv$1;->a:Ljava/util/List;

    iput p3, p0, Lbhv$1;->b:I

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
    .line 47
    check-cast p1, Ljava/util/List;

    .line 2050
    if-eqz p1, :cond_0

    .line 2051
    iget-object v0, p0, Lbhv$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2053
    :cond_0
    iget-object v0, p0, Lbhv$1;->c:Lbhv;

    iget v1, p0, Lbhv$1;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lbhv$1;->a:Ljava/util/List;

    .line 3018
    invoke-virtual {v0, v1, v2}, Lbhv;->a(ILjava/util/List;)V

    .line 47
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
    .line 62
    iget-object v0, p0, Lbhv$1;->c:Lbhv;

    .line 1112
    iget-object v1, v0, Lbhv;->b:Lbhv$a;

    if-eqz v1, :cond_0

    .line 1113
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbhv$3;

    invoke-direct {v2, v0, p1, p2}, Lbhv$3;-><init>(Lbhv;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 63
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 58
    return-void
.end method
