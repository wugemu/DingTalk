.class final Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$10;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$10;->b:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$10;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1338
    const-string/jumbo v0, "ding_notification_comment_list_readall"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$10;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$10;->b:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->g(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V

    .line 260
    return-void
.end method
