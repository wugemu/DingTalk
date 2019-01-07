.class final Lbbo$27;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcma;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;ILcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3174
    iput-object p1, p0, Lbbo$27;->c:Lbbo;

    iput p2, p0, Lbbo$27;->a:I

    iput-object p3, p0, Lbbo$27;->b:Lcma;

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
    .line 3174
    .line 4177
    iget-object v0, p0, Lbbo$27;->c:Lbbo;

    iget v1, p0, Lbbo$27;->a:I

    add-int/lit8 v1, v1, -0x32

    iget-object v2, p0, Lbbo$27;->b:Lcma;

    invoke-static {v0, v1, v2}, Lbbo;->a(Lbbo;ILcma;)V

    .line 3174
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
    .line 3186
    iget-object v0, p0, Lbbo$27;->c:Lbbo;

    .line 4139
    iget-object v0, v0, Lbbo;->b:Lbbq;

    .line 3186
    new-instance v1, Lbbo$27$1;

    invoke-direct {v1, p0, p1, p2}, Lbbo$27$1;-><init>(Lbbo$27;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 3195
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3182
    return-void
.end method
