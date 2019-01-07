.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$3;
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
    .line 814
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$3;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$3;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->dismiss()V

    .line 818
    return-void
.end method
