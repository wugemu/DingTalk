.class final Lbjg$7;
.super Ljava/lang/Object;
.source "AddReceiverHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjg;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbjg;


# direct methods
.method constructor <init>(Lbjg;)V
    .locals 0
    .param p1, "this$0"    # Lbjg;

    .prologue
    .line 275
    iput-object p1, p0, Lbjg$7;->a:Lbjg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 275
    check-cast p1, Ljava/util/List;

    .line 1278
    iget-object v0, p0, Lbjg$7;->a:Lbjg;

    invoke-static {v0}, Lbjg;->a(Lbjg;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lbjg$7;->a:Lbjg;

    iget-object v1, p0, Lbjg$7;->a:Lbjg;

    invoke-static {v1}, Lbjg;->b(Lbjg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lbjg;->a(Lbjg;Ljava/lang/String;Ljava/util/Collection;)V

    .line 275
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 289
    iget-object v0, p0, Lbjg$7;->a:Lbjg;

    invoke-static {v0}, Lbjg;->a(Lbjg;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lbjg$7;->a:Lbjg;

    iget-object v1, p0, Lbjg$7;->a:Lbjg;

    invoke-static {v1}, Lbjg;->b(Lbjg;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbjg$7;->a:Lbjg;

    invoke-static {v2}, Lbjg;->c(Lbjg;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbjg;->a(Lbjg;Ljava/lang/String;Ljava/util/Collection;)V

    .line 292
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 285
    return-void
.end method
