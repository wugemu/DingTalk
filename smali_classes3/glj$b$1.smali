.class final Lglj$b$1;
.super Ljava/lang/Object;
.source "SpaceLinkManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lglj$b;->d()V
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
.field final synthetic a:Lgkl;

.field final synthetic b:Lglj$b;


# direct methods
.method constructor <init>(Lglj$b;Lgkl;)V
    .locals 0
    .param p1, "this$0"    # Lglj$b;

    .prologue
    .line 423
    iput-object p1, p0, Lglj$b$1;->b:Lglj$b;

    iput-object p2, p0, Lglj$b$1;->a:Lgkl;

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
    const/4 v1, 0x0

    .line 423
    check-cast p1, Ljava/lang/Boolean;

    .line 1426
    iget-object v0, p0, Lglj$b$1;->b:Lglj$b;

    iget-object v0, v0, Lglj$b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1429
    if-eqz v0, :cond_1

    .line 1431
    iget-object v0, p0, Lglj$b$1;->b:Lglj$b;

    invoke-static {v0, v1}, Lglj$b;->a(Lglj$b;Z)V

    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    iget-object v0, p0, Lglj$b$1;->b:Lglj$b;

    iget-object v1, p0, Lglj$b$1;->a:Lgkl;

    invoke-static {v0, v1}, Lglj$b;->a(Lglj$b;Lgkl;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 444
    iget-object v0, p0, Lglj$b$1;->b:Lglj$b;

    iget-object v0, v0, Lglj$b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 447
    :cond_0
    const-string/jumbo v0, "13020005"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "13020008"

    .line 448
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    :cond_1
    iget-object v0, p0, Lglj$b$1;->b:Lglj$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lglj$b;->a(Lglj$b;Z)V

    goto :goto_0

    .line 453
    :cond_2
    iget-object v0, p0, Lglj$b$1;->b:Lglj$b;

    .line 1387
    const/4 v0, 0x0

    .line 453
    invoke-static {p1, p2, v0}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 440
    return-void
.end method
