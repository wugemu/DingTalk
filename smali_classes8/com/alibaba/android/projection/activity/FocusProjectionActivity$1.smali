.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$1;
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
    .line 315
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

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
    .line 318
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Local create timeout called"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareComplete:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    if-eq v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const-string/jumbo v1, "timeout"

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const-string/jumbo v1, "start_timeout"

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)V

    .line 326
    :cond_1
    return-void
.end method
