.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;
.super Ljava/lang/Object;
.source "CircleGuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->d:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v3

    .line 163
    .local v3, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v1

    .line 165
    .local v1, "imageHeight":I
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v2

    .line 166
    .local v2, "imageWidth":I
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 167
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    .local v0, "btnParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 169
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    mul-int/2addr v5, v1

    div-int/2addr v5, v2

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 170
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 176
    .end local v0    # "btnParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "imageHeight":I
    .end local v2    # "imageWidth":I
    :cond_0
    const-string/jumbo v5, "IMAGE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->b:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v3    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v5

    const-string/jumbo v5, "Circle"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Error decode mediaId "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$a$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
