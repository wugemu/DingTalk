.class final Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$3;
.super Ljava/lang/Object;
.source "DingSelectRepeatModeActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$3;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "timeMillis"    # J

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity$3;->a:Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;->a(Lcom/alibaba/android/ding/activity/DingSelectRepeatModeActivity;)Lbba$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbba$a;->a(J)V

    .line 170
    return-void
.end method
