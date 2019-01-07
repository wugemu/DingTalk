.class public final Lbhq;
.super Ljava/lang/Object;
.source "DingReceiverUidsEvent.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field private c:I

.field private d:Lbhq$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILbhq$a;)V
    .locals 1
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "dingReceiverUidsEventCallback"    # Lbhq$a;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lbhq;->b:Ljava/lang/String;

    .line 22
    const/16 v0, 0x1f4

    iput v0, p0, Lbhq;->c:I

    .line 23
    iput-object p3, p0, Lbhq;->d:Lbhq$a;

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 13
    check-cast p1, Ljava/util/List;

    .line 1028
    iget-boolean v0, p0, Lbhq;->a:Z

    if-nez v0, :cond_0

    .line 1031
    if-nez p1, :cond_1

    .line 1032
    iget-object v0, p0, Lbhq;->d:Lbhq$a;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lbhq;->d:Lbhq$a;

    invoke-interface {v0}, Lbhq$a;->a()V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lbhq;->c:I

    if-lt v0, v1, :cond_2

    .line 1038
    const/4 v0, 0x0

    iget v1, p0, Lbhq;->c:I

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 1040
    :cond_2
    iget-object v0, p0, Lbhq;->d:Lbhq$a;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lbhq;->d:Lbhq$a;

    invoke-interface {v0, p1}, Lbhq$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-boolean v0, p0, Lbhq;->a:Z

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lbhq;->d:Lbhq$a;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lbhq;->d:Lbhq$a;

    invoke-interface {v0}, Lbhq$a;->a()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 47
    return-void
.end method
