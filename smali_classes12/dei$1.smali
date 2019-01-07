.class final Ldei$1;
.super Ljava/lang/Object;
.source "FaceToFaceCreatePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldei;->a(Ljava/lang/String;DD)V
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
        "Ldel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldei;


# direct methods
.method constructor <init>(Ldei;)V
    .locals 0
    .param p1, "this$0"    # Ldei;

    .prologue
    .line 39
    iput-object p1, p0, Ldei$1;->a:Ldei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 39
    check-cast p1, Ldel;

    .line 2042
    iget-object v0, p0, Ldei$1;->a:Ldei;

    .line 3019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 2042
    invoke-interface {v0}, Ldeg$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Ldei$1;->a:Ldei;

    .line 4019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 2043
    invoke-interface {v0, p1}, Ldeg$b;->a(Ldel;)V

    .line 39
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Ldei$1;->a:Ldei;

    .line 1019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 54
    invoke-interface {v0}, Ldeg$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Ldei$1;->a:Ldei;

    .line 2019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 55
    invoke-interface {v0, p1, p2}, Ldeg$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 50
    return-void
.end method
