.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$11;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/CreateEventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/CreateEventActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/CreateEventActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/CreateEventActivity;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$11;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$11;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$11;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$11;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$11;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->d(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$11;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$11;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    invoke-interface {v0}, Lbac$a;->b()V

    .line 297
    :cond_0
    return-void
.end method
