.class final Lbbo$22;
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
    .line 3001
    iput-object p1, p0, Lbbo$22;->b:Lbbo;

    iput-object p2, p0, Lbbo$22;->a:Lcma;

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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3001
    .line 4004
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "backwardCompletedListener onDataReceived"

    aput-object v1, v0, v2

    .line 4005
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "backwardCompletedListener onDataReceived"

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 4006
    iget-object v0, p0, Lbbo$22;->b:Lbbo;

    iget-object v1, p0, Lbbo$22;->a:Lcma;

    const/4 v2, 0x0

    .line 4139
    invoke-virtual {v0, v1, v2}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 3001
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3015
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "backwardCompletedListener onException"

    aput-object v1, v0, v2

    .line 3016
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "backwardCompletedListener onException"

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3017
    iget-object v0, p0, Lbbo$22;->b:Lbbo;

    iget-object v1, p0, Lbbo$22;->a:Lcma;

    .line 3139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3011
    return-void
.end method
