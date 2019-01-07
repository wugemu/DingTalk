.class final Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7$1;
.super Ljava/lang/Object;
.source "FocusDevicesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7$1;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;

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
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7$1;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Lego;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7$1;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;->b:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Lego;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7$1;->a:Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;->a:Ljava/util/List;

    .line 1058
    invoke-virtual {v0, v1}, Legn;->a(Ljava/util/List;)V

    .line 258
    :cond_0
    return-void
.end method
