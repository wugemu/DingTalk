.class final Lcwl$1$1;
.super Ljava/lang/Object;
.source "MultiLinkViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwl$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

.field final synthetic d:Lcwl$1;


# direct methods
.method constructor <init>(Lcwl$1;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Landroid/view/View;Lcom/alibaba/wukong/im/MessageContent$LinkedContent;)V
    .locals 0
    .param p1, "this$1"    # Lcwl$1;

    .prologue
    .line 190
    iput-object p1, p0, Lcwl$1$1;->d:Lcwl$1;

    iput-object p2, p0, Lcwl$1$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iput-object p3, p0, Lcwl$1$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcwl$1$1;->c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcwl$1$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcwl$1$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcng;

    .line 195
    .local v7, "menuObject1":Lcng;
    iget v0, v7, Lcng;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 196
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v0

    iget-object v1, p0, Lcwl$1$1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcwl$1$1;->c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 197
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcwl$1$1;->c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcwl$1$1;->c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcwl$1$1;->c:Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v7    # "menuObject1":Lcng;
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local v7    # "menuObject1":Lcng;
    :cond_1
    iget v0, v7, Lcng;->a:I

    if-nez v0, :cond_0

    .line 199
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcwl$1$1;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/forward.html"

    new-instance v2, Lcwl$1$1$1;

    invoke-direct {v2, p0}, Lcwl$1$1$1;-><init>(Lcwl$1$1;)V

    .line 200
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
