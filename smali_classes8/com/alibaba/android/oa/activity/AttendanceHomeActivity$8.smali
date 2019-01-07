.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$8;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$8;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$8;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->d(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V

    .line 208
    return-void
.end method
