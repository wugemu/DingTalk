.class final Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$2;
.super Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
.source "OrgApplyDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;Landroid/content/Context;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$2;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    iput-wide p3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$2;->a:J

    invoke-direct {p0, p2}, Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "textView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$2;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$2;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;J)V

    .line 212
    return-void
.end method
