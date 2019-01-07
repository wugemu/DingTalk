.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$21;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Lali/mmpc/pwp/LogCallback;


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
    .line 1856
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$21;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logLevel"    # Lali/mmpc/pwp/LogCallback$LogLevel;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/String;

    .prologue
    .line 1860
    const-string/jumbo v0, "focus"

    invoke-static {v0, p2, p3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$21;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->M(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$21;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1864
    :cond_0
    return-void
.end method
