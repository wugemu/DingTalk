.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$26;
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
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1989
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$26;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$26;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$26;->a:Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/ProjectionSsidAlertDialog;->show()V

    .line 1993
    return-void
.end method
