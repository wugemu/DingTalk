.class final Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$1;
.super Ljava/lang/Object;
.source "DingReceiverCheckInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity$1;->a:Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverCheckInActivity;)Lbak$a;

    move-result-object v0

    invoke-interface {v0}, Lbak$a;->a()V

    .line 96
    return-void
.end method
