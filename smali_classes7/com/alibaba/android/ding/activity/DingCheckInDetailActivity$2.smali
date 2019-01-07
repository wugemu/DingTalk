.class final Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$2;
.super Ljava/lang/Object;
.source "DingCheckInDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$2;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$2;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$2;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbjv;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 139
    return-void
.end method
