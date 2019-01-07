.class final Lbbo$11;
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
        "Lbfm;",
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
    .line 1978
    iput-object p1, p0, Lbbo$11;->b:Lbbo;

    iput-object p2, p0, Lbbo$11;->a:Lcma;

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
    .line 1978
    check-cast p1, Lbfm;

    .line 2981
    const/4 v0, 0x0

    .line 2982
    if-eqz p1, :cond_0

    .line 3039
    iget-object v0, p1, Lbfm;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2985
    :cond_0
    iget-object v1, p0, Lbbo$11;->b:Lbbo;

    iget-object v2, p0, Lbbo$11;->a:Lcma;

    .line 3139
    invoke-virtual {v1, v2, v0}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 1978
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
    .line 1995
    iget-object v0, p0, Lbbo$11;->b:Lbbo;

    iget-object v1, p0, Lbbo$11;->a:Lcma;

    .line 2139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1991
    return-void
.end method
