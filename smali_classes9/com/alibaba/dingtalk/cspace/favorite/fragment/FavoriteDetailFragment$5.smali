.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;
.super Ljava/lang/Object;
.source "FavoriteDetailFragment.java"

# interfaces
.implements Lgan$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->c:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 5
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 398
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->c:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->d(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    .line 402
    .local v0, "resId":I
    if-lez v0, :cond_1

    .line 403
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->c:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->e(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->c:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->f(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->a:Landroid/widget/TextView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$5;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
