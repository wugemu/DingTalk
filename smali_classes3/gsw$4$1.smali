.class final Lgsw$4$1;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgsw$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgsw$4;


# direct methods
.method constructor <init>(Lgsw$4;)V
    .locals 0
    .param p1, "this$1"    # Lgsw$4;

    .prologue
    .line 389
    iput-object p1, p0, Lgsw$4$1;->a:Lgsw$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 392
    iget-object v0, p0, Lgsw$4$1;->a:Lgsw$4;

    iget-object v0, v0, Lgsw$4;->f:Lgsw;

    .line 1048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 392
    invoke-interface {v0}, Lgsv$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lgsw$4$1;->a:Lgsw$4;

    iget-object v0, v0, Lgsw$4;->f:Lgsw;

    .line 2048
    iget-object v0, v0, Lgsw;->d:Lgsv$b;

    .line 395
    const-string/jumbo v1, "save_file_error"

    const-string/jumbo v2, "save face image error"

    invoke-interface {v0, v1, v2}, Lgsv$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
