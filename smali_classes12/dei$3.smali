.class final Ldei$3;
.super Ljava/lang/Object;
.source "FaceToFaceCreatePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldei;->a(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ldei;


# direct methods
.method constructor <init>(Ldei;)V
    .locals 0
    .param p1, "this$0"    # Ldei;

    .prologue
    .line 97
    iput-object p1, p0, Ldei$3;->a:Ldei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 97
    .line 2100
    iget-object v0, p0, Ldei$3;->a:Ldei;

    .line 3019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 2100
    invoke-interface {v0}, Ldeg$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, p0, Ldei$3;->a:Ldei;

    .line 4019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 2101
    invoke-interface {v0}, Ldeg$b;->a()V

    .line 97
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Ldei$3;->a:Ldei;

    .line 1019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 112
    invoke-interface {v0}, Ldeg$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Ldei$3;->a:Ldei;

    .line 2019
    iget-object v0, v0, Ldei;->a:Ldeg$b;

    .line 113
    invoke-interface {v0, p1, p2}, Ldeg$b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 108
    return-void
.end method
