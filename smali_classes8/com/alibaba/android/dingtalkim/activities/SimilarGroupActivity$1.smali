.class final Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$1;
.super Ljava/lang/Object;
.source "SimilarGroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->a(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Lcxn;

    move-result-object v0

    invoke-virtual {v0}, Lcxn;->getCount()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->a(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Lcxn;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcxn;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->a(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0
.end method
