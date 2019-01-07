.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$13;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
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
    .line 482
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$13;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$13;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->finish()V

    .line 486
    return-void
.end method
