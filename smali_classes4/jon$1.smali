.class final Ljon$1;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljon;
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
    .line 110
    iput-object p1, p0, Ljon$1;->a:Ljon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Ljon$1;->a:Ljon;

    invoke-static {v0}, Ljon;->a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Ljon$1;->a:Ljon;

    invoke-static {v0}, Ljon;->a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 115
    iget-object v0, p0, Ljon$1;->a:Ljon;

    invoke-static {v0}, Ljon;->b(Ljon;)Ljol;

    move-result-object v0

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon$1;->a:Ljon;

    invoke-static {v1}, Ljon;->b(Ljon;)Ljol;

    move-result-object v1

    iget v1, v1, Ljol;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Ljon$1;->a:Ljon;

    invoke-static {v0}, Ljon;->a(Ljon;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 119
    iget-object v0, p0, Ljon$1;->a:Ljon;

    invoke-static {v0}, Ljon;->b(Ljon;)Ljol;

    move-result-object v0

    iget-object v0, v0, Ljol;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Ljon$1;->a:Ljon;

    invoke-static {v1}, Ljon;->b(Ljon;)Ljol;

    move-result-object v1

    iget v1, v1, Ljol;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
