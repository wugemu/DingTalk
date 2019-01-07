.class final Lfrk$1;
.super Ljava/lang/Object;
.source "FaceLoginView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrk;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcma;

.field final synthetic d:Lfrk;


# direct methods
.method constructor <init>(Lfrk;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfrk;

    .prologue
    .line 76
    iput-object p1, p0, Lfrk$1;->d:Lfrk;

    iput-object p2, p0, Lfrk$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lfrk$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lfrk$1;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 76
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1080
    iget-object v0, p0, Lfrk$1;->d:Lfrk;

    .line 2029
    iget-object v0, v0, Lfrk;->a:Lfri$a;

    .line 1080
    iget-object v1, p0, Lfrk$1;->a:Ljava/lang/String;

    invoke-static {}, Lfxg;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfrk$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lfrk$1;->c:Lcma;

    invoke-interface/range {v0 .. v5}, Lfri$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 76
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string/jumbo v0, "11093"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string/jumbo v0, ""

    invoke-static {v0}, Lfls;->b(Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lfrk$1;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 86
    return-void
.end method
