.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7$1;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->z(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    return-void
.end method
