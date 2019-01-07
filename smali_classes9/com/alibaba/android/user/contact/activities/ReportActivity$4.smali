.class final Lcom/alibaba/android/user/contact/activities/ReportActivity$4;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ReportActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ReportActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$4;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$4;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->c(Lcom/alibaba/android/user/contact/activities/ReportActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$4;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->a(Lcom/alibaba/android/user/contact/activities/ReportActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 168
    const/4 v0, 0x0

    return v0
.end method
