.class final Lgpr$4;
.super Ljava/lang/Object;
.source "CSpaceUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpr;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lgpr$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lgpr$4;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1200
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p0, Lgpr$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfzv;->a(Ljava/lang/String;Z)V

    .line 1201
    iget-object v1, p0, Lgpr$4;->b:Lcma;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lgpr$4;->b:Lcma;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 207
    return-void
.end method
