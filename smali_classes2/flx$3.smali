.class final Lflx$3;
.super Ljava/lang/Object;
.source "OrgHomePageHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflx;
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
        "Lfoj;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lflx;


# direct methods
.method constructor <init>(Lflx;I)V
    .locals 0
    .param p1, "this$0"    # Lflx;

    .prologue
    .line 123
    iput-object p1, p0, Lflx$3;->b:Lflx;

    iput p2, p0, Lflx$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 123
    check-cast p1, Ljava/util/List;

    .line 2126
    iget-object v0, p0, Lflx$3;->b:Lflx;

    .line 3026
    iget-object v0, v0, Lflx;->e:Landroid/app/Activity;

    .line 2126
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lflx$3;->b:Lflx;

    .line 4026
    iget-object v0, v0, Lflx;->g:Ljava/util/List;

    .line 2129
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2130
    iget-object v0, p0, Lflx$3;->b:Lflx;

    .line 5026
    iget v1, v0, Lflx;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lflx;->c:I

    .line 2131
    iget-object v0, p0, Lflx$3;->b:Lflx;

    .line 6026
    iget-object v0, v0, Lflx;->b:Landroid/os/Handler;

    .line 2131
    iget v1, p0, Lflx$3;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 140
    const-string/jumbo v0, "OrgHomePageHelper"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lflx$3;->b:Lflx;

    .line 1026
    iget-object v0, v0, Lflx;->e:Landroid/app/Activity;

    .line 141
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lflx$3;->b:Lflx;

    .line 2026
    iget-object v0, v0, Lflx;->b:Landroid/os/Handler;

    .line 145
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 136
    return-void
.end method
