.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$6;
.super Landroid/os/Handler;
.source "FavoriteDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$6;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 424
    :goto_0
    return-void

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$6;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->g(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)V

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
