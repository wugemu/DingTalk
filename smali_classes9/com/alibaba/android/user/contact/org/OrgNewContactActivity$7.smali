.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$7;
.super Ljava/lang/Object;
.source "OrgNewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$7;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 301
    if-eqz p2, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$7;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    sget v1, Lezg$h;->search_container:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$g;->edit_bg_focus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$7;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    sget v1, Lezg$h;->search_container:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$g;->edit_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
