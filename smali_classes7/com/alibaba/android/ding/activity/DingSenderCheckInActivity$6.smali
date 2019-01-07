.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$6;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$6;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

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
    .line 477
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$6;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->p(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$6;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->p(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd$a;

    .line 479
    .local v0, "item":Layd$a;
    if-eqz v0, :cond_0

    .line 1072
    iget v1, v0, Layd$a;->a:I

    .line 480
    packed-switch v1, :pswitch_data_0

    .line 489
    .end local v0    # "item":Layd$a;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$6;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->r(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 490
    return-void

    .line 482
    .restart local v0    # "item":Layd$a;
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$6;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
