.class final Lcom/alibaba/android/projection/activity/FocusDevicesActivity$3;
.super Ljava/lang/Object;
.source "FocusDevicesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$3;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$3;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->finish()V

    .line 128
    return-void
.end method
