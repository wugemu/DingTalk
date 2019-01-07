.class final Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6$1;
.super Ljava/lang/Object;
.source "FocusDevicesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6$1;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;

    iput p2, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 182
    iget v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6$1;->a:I

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6$1;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->c(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6$1;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->d(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6$1;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->e(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6$1;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Z)V

    goto :goto_0
.end method
