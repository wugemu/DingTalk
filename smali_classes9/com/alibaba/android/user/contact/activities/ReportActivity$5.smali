.class final Lcom/alibaba/android/user/contact/activities/ReportActivity$5;
.super Lcmi;
.source "ReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ReportActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ReportActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V

    .line 295
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 284
    .line 1287
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V

    .line 1288
    sget v0, Lezg$l;->report_success_toast:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1289
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$5;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->finish()V

    .line 284
    return-void
.end method
