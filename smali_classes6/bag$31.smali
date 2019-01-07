.class final Lbag$31;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbag;->f()V
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
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 1058
    iput-object p1, p0, Lbag$31;->a:Lbag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1058
    check-cast p1, Ljava/util/List;

    .line 2061
    iget-object v0, p0, Lbag$31;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->H_()V

    .line 2062
    iget-object v0, p0, Lbag$31;->a:Lbag;

    invoke-static {v0, p1}, Lbag;->a(Lbag;Ljava/util/List;)V

    .line 1058
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1071
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "handleMenuModifyMeeting onException code="

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lbag$31;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->H_()V

    .line 1074
    iget-object v0, p0, Lbag$31;->a:Lbag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbag;->a(Lbag;Ljava/util/List;)V

    .line 1075
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1067
    return-void
.end method
