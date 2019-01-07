.class final Lbbo$43;
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
.field final synthetic a:Lbes;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lbes;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3681
    iput-object p1, p0, Lbbo$43;->c:Lbbo;

    iput-object p2, p0, Lbbo$43;->a:Lbes;

    iput-object p3, p0, Lbbo$43;->b:Lcma;

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
    .line 3681
    .line 4684
    iget-object v0, p0, Lbbo$43;->c:Lbbo;

    iget-object v1, p0, Lbbo$43;->a:Lbes;

    iget-object v2, p0, Lbbo$43;->b:Lcma;

    .line 5139
    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lbes;Lcma;)V

    .line 3681
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
    .line 3693
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DataCenter] checkChangeTaskFinishStatusRemote failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3694
    iget-object v0, p0, Lbbo$43;->c:Lbbo;

    iget-object v1, p0, Lbbo$43;->a:Lbes;

    iget-object v2, p0, Lbbo$43;->b:Lcma;

    .line 4139
    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lbes;Lcma;)V

    .line 3695
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3689
    return-void
.end method
