.class final Lgar$4$1;
.super Ljava/lang/Object;
.source "FavoriteNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgar$4;->a(Ljava/lang/Void;)V
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
.field final synthetic a:Lgar$4;


# direct methods
.method constructor <init>(Lgar$4;)V
    .locals 0
    .param p1, "this$0"    # Lgar$4;

    .prologue
    .line 205
    iput-object p1, p0, Lgar$4$1;->a:Lgar$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 205
    check-cast p1, Ljava/lang/String;

    .line 1208
    iget-object v0, p0, Lgar$4$1;->a:Lgar$4;

    iget-object v0, v0, Lgar$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lgar$4$1;->a:Lgar$4;

    iget-object v0, v0, Lgar$4;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lgar$4$1;->a:Lgar$4;

    iget-object v0, v0, Lgar$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lgar$4$1;->a:Lgar$4;

    iget-object v0, v0, Lgar$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "fav"

    const-string/jumbo v2, "checkAccountLogin"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 216
    return-void
.end method
