.class final Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$1;
.super Ljava/lang/Object;
.source "SimpleEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$1;->a:Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$1;->a:Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->a(Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$1;->a:Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->a(Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 51
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 56
    return-void
.end method
