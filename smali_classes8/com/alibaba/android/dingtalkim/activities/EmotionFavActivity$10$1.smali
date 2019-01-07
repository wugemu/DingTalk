.class final Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10$1;
.super Ljava/lang/Object;
.source "EmotionFavActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 531
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->dismissLoadingDialog()V

    .line 532
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->k(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;Ljava/util/List;)Ljava/util/List;

    .line 533
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->i(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 534
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->j(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    .line 535
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->dismissLoadingDialog()V

    .line 544
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 539
    return-void
.end method
