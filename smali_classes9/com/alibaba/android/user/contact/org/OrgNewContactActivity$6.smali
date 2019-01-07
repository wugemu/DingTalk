.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .line 285
    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 287
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    .line 288
    :cond_0
    const/16 v0, 0x43

    if-ne p2, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->f(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lfhx;

    move-result-object v0

    invoke-interface {v0}, Lfhx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .line 290
    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lfhx;

    move-result-object v0

    invoke-interface {v0}, Lfhx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->b()V

    .line 294
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
