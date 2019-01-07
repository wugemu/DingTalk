.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;
.super Landroid/os/Handler;
.source "FavoriteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 208
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 209
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v4, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b:Ljava/util/List;

    .line 212
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->h()V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->d(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 216
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lxg;

    if-eqz v3, :cond_4

    .line 217
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lxg;

    .line 218
    .local v2, "syncResult":Lxg;
    if-eqz v2, :cond_3

    .line 1026
    iget-boolean v3, v2, Lxg;->b:Z

    .line 219
    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->e(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    .line 2018
    :cond_2
    iget-boolean v3, v2, Lxg;->a:Z

    .line 222
    if-eqz v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcms;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-static {}, Lgas;->a()Lgas;

    move-result-object v3

    invoke-virtual {v3}, Lgas;->c()V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->e(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    goto :goto_0

    .line 233
    .end local v2    # "syncResult":Lxg;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->e(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->d(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 240
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    sget v4, Lfzs$h;->favorite_sync_error:I

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->e(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    goto/16 :goto_0

    .line 246
    :pswitch_3
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    iput-boolean v4, v3, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->f:Z

    .line 247
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lxe;

    if-eqz v3, :cond_0

    .line 248
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lxe;

    invoke-static {v4, v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;Lxe;)Lxe;

    .line 249
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->f(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)V

    goto/16 :goto_0

    .line 253
    :pswitch_4
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    iput-boolean v4, v3, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->f:Z

    .line 254
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    goto/16 :goto_0

    .line 257
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 258
    .local v0, "id":J
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->a(J)V

    goto/16 :goto_0

    .line 261
    .end local v0    # "id":J
    :pswitch_6
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;->g(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteListFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    sget v3, Lfzs$h;->delete_error:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
