.class public final Lgon$32;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
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
        "Lgkl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgnu;

.field final synthetic c:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2245
    iput-object p1, p0, Lgon$32;->c:Lgon;

    iput-object p2, p0, Lgon$32;->a:Lcma;

    iput-object p3, p0, Lgon$32;->b:Lgnu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2245
    .line 3248
    iget-object v0, p0, Lgon$32;->a:Lcma;

    if-eqz v0, :cond_0

    .line 3249
    iget-object v0, p0, Lgon$32;->a:Lcma;

    iget-object v1, p0, Lgon$32;->b:Lgnu;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2245
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 2260
    iget-object v0, p0, Lgon$32;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2261
    iget-object v0, p0, Lgon$32;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2256
    return-void
.end method
