.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$29;
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
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 2247
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$29;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$29;->a:Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$29;->a:Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionDetailFailDialog;->dismiss()V

    .line 2251
    return-void
.end method
