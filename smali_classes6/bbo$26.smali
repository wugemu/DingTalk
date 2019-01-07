.class final Lbbo$26;
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
.field final synthetic a:Lcma;

.field final synthetic b:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3142
    iput-object p1, p0, Lbbo$26;->b:Lbbo;

    iput-object p2, p0, Lbbo$26;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3142
    .line 4145
    iget-object v0, p0, Lbbo$26;->b:Lbbo;

    .line 5139
    iget-object v0, v0, Lbbo;->b:Lbbq;

    .line 4145
    new-instance v1, Lbbo$26$1;

    invoke-direct {v1, p0}, Lbbo$26$1;-><init>(Lbbo$26;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 3142
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
    .line 3162
    iget-object v0, p0, Lbbo$26;->b:Lbbo;

    .line 4139
    iget-object v0, v0, Lbbo;->b:Lbbq;

    .line 3162
    new-instance v1, Lbbo$26$2;

    invoke-direct {v1, p0, p1, p2}, Lbbo$26$2;-><init>(Lbbo$26;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 3171
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3158
    return-void
.end method
