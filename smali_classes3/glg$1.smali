.class final Lglg$1;
.super Ljava/lang/Object;
.source "SpaceCapacityManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lglg;->a()V
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
        "Lgie;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lglg;


# direct methods
.method constructor <init>(Lglg;)V
    .locals 0
    .param p1, "this$0"    # Lglg;

    .prologue
    .line 62
    iput-object p1, p0, Lglg$1;->a:Lglg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 62
    check-cast p1, Lgie;

    .line 1065
    iget-object v0, p0, Lglg$1;->a:Lglg;

    .line 2020
    iget-object v0, v0, Lglg;->a:Lglg$a;

    .line 1065
    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lglg$1;->a:Lglg;

    .line 3020
    iget-object v1, v0, Lglg;->a:Lglg$a;

    .line 1066
    if-eqz p1, :cond_1

    iget-object v0, p1, Lgie;->a:Ljava/util/List;

    :goto_0
    invoke-interface {v1, v0}, Lglg$a;->a(Ljava/util/List;)V

    .line 62
    :cond_0
    return-void

    .line 1066
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lglg$1;->a:Lglg;

    .line 1020
    iget-object v0, v0, Lglg;->a:Lglg$a;

    .line 77
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lglg$a;->a(Ljava/util/List;)V

    .line 78
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 73
    return-void
.end method
