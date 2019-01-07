.class final Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;
.super Ljava/lang/Object;
.source "EmotionFavActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 216
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;

    .line 218
    .local v0, "holder":Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->c:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->g(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->c:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->g(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->c:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->i(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 225
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->j(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V

    .line 228
    .end local v0    # "holder":Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;
    :cond_0
    return-void

    .line 222
    .restart local v0    # "holder":Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->g(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$a;->c:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
