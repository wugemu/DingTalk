.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$a$2;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$2;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 844
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$2;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$2;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 846
    .local v0, "spanText":Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 847
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$2;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 848
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$2;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v2, v2, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->b(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 850
    .end local v0    # "spanText":Landroid/text/Spannable;
    :cond_0
    return-void
.end method
