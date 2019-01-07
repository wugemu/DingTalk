.class final Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;
.super Ljava/lang/Object;
.source "FocusDevicesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusDevicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

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
    .line 156
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Lego;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Lego;

    move-result-object v1

    invoke-virtual {v1}, Lego;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Lego;

    move-result-object v1

    invoke-virtual {v1, p3}, Lego;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    .line 160
    .local v0, "deviceObject":Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->b(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->b(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;)V

    goto :goto_0
.end method
