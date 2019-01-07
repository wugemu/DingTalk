.class public final Lftf$1;
.super Ljava/lang/Object;
.source "NameCardOrgsPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lccm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lftf;


# direct methods
.method public constructor <init>(Lftf;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lftf;

    .prologue
    .line 37
    iput-object p1, p0, Lftf$1;->b:Lftf;

    iput-object p2, p0, Lftf$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 37
    check-cast p1, Lccm;

    .line 1040
    if-eqz p1, :cond_0

    .line 1043
    iget-object v0, p0, Lftf$1;->b:Lftf;

    .line 2022
    iget-object v0, v0, Lftf;->a:Lfsz$a;

    .line 1043
    iget-object v1, p0, Lftf$1;->a:Ljava/lang/String;

    iget-object v2, p1, Lccm;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lfsz$a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lftf$1;->b:Lftf;

    .line 1022
    iget-object v0, v0, Lftf;->a:Lfsz$a;

    .line 53
    invoke-interface {v0, v1, v1}, Lfsz$a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 49
    return-void
.end method
