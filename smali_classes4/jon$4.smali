.class final Ljon$4;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljon;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljon;


# direct methods
.method constructor <init>(Ljon;)V
    .locals 0
    .param p1, "this$0"    # Ljon;

    .prologue
    .line 466
    iput-object p1, p0, Ljon$4;->a:Ljon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 469
    iget-object v0, p0, Ljon$4;->a:Ljon;

    invoke-static {v0}, Ljon;->b(Ljon;)Ljol;

    move-result-object v0

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon$4;->a:Ljon;

    invoke-static {v1}, Ljon;->b(Ljon;)Ljol;

    move-result-object v1

    iget v1, v1, Ljol;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 470
    return-void
.end method
