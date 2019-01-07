.class final Lcom/alibaba/android/user/contact/activities/ReportActivity$3;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 147
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->b(Lcom/alibaba/android/user/contact/activities/ReportActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    sget v2, Lezg$l;->report_choose:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->b(Lcom/alibaba/android/user/contact/activities/ReportActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->a(Lcom/alibaba/android/user/contact/activities/ReportActivity;I)Lfqg;

    move-result-object v0

    .line 155
    .local v0, "model":Lfqg;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity$3;->a:Lcom/alibaba/android/user/contact/activities/ReportActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->a(Lcom/alibaba/android/user/contact/activities/ReportActivity;Lfqg;)V

    goto :goto_0
.end method
