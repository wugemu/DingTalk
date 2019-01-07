.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 666
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

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
    .line 669
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)Z

    .line 670
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65$1;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$65;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method
