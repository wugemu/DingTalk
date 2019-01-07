.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

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
    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->A(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8$1;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$8;)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    .line 1151
    return-void
.end method
