.class public final Lfwk;
.super Ljava/lang/Object;
.source "NewRequestViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:I

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field public h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public n:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 213
    const-string/jumbo v0, "click on newFriend cell"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const-string/jumbo v0, "contacts_notifications_enter"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->aj:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->setWidgetHiden(Ljava/lang/String;Z)V

    .line 216
    const-string/jumbo v0, "NewFriend"

    const/4 v1, 0x0

    const-string/jumbo v2, "a2o5v.12302328.1.NewFriend"

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lfwk;->n:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 219
    iget v0, p0, Lfwk;->a:I

    packed-switch v0, :pswitch_data_0

    .line 242
    :pswitch_0
    const-string/jumbo v0, "illegal type"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :goto_0
    return-void

    .line 222
    :pswitch_1
    const-string/jumbo v0, "new request click ,none request"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lfwk;->n:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string/jumbo v1, "IM"

    invoke-static {v0, v1}, Lfls;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_2
    const-string/jumbo v0, "new request click ,has friend request"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfwk;->n:Landroid/content/Context;

    .line 229
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/friend_request_more.html"

    .line 230
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lfls;->h()V

    goto :goto_0

    .line 235
    :pswitch_3
    const-string/jumbo v0, "new request click ,has recommend request"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfwk;->n:Landroid/content/Context;

    .line 237
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/friend_recommend.html"

    .line 238
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lfls;->h()V

    goto :goto_0

    .line 246
    :cond_0
    const-string/jumbo v0, "mContext is not Activity"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
