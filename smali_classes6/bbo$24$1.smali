.class final Lbbo$24$1;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo$24;
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
.field final synthetic a:Lbbo$24;


# direct methods
.method constructor <init>(Lbbo$24;)V
    .locals 0
    .param p1, "this$1"    # Lbbo$24;

    .prologue
    .line 3034
    iput-object p1, p0, Lbbo$24$1;->a:Lbbo$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 3034
    .line 4037
    iget-object v0, p0, Lbbo$24$1;->a:Lbbo$24;

    .line 5021
    invoke-virtual {v0}, Lbbo$24;->a()V

    .line 3034
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "resaon"    # Ljava/lang/String;

    .prologue
    .line 3046
    iget-object v0, p0, Lbbo$24$1;->a:Lbbo$24;

    iget-object v0, v0, Lbbo$24;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3042
    return-void
.end method
