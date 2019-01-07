.class final Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$1;
.super Ljava/lang/Object;
.source "AttendanceDetailActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lefy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 139
    check-cast p1, Lefy;

    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->dismissLoadingDialog()V

    .line 1143
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;Lefy;)V

    .line 139
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->dismissLoadingDialog()V

    .line 154
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity$1;->a:Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceDetailActivity;)V

    .line 156
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 149
    return-void
.end method
