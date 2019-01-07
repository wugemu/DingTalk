.class final Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$7;
.super Ljava/lang/Object;
.source "DingNotifyCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$7;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$7;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->c(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$7;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->d(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$7;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->e(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    goto :goto_0
.end method
