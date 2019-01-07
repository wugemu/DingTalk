.class final Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;
.super Ljava/lang/Object;
.source "ConnectionGuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->d:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

    iput-object p3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 161
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

    iget-object v5, v5, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

    iget-object v5, v5, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

    iget-object v5, v5, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v3

    .line 166
    .local v3, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v1

    .line 168
    .local v1, "imageHeight":I
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v2

    .line 169
    .local v2, "imageWidth":I
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 170
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    .local v0, "btnParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 172
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    mul-int/2addr v5, v1

    div-int/2addr v5, v2

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 173
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 179
    .end local v0    # "btnParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "imageHeight":I
    .end local v2    # "imageWidth":I
    :cond_0
    const-string/jumbo v5, "IMAGE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v6, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->b:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v3    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Error decode mediaId "

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$a$1;->a:Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;

    iget-object v7, v7, Lcom/alibaba/android/user/connection/activity/ConnectionGuideActivity$b;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
