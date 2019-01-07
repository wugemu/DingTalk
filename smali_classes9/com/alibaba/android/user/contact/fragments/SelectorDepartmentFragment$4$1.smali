.class final Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4$1;
.super Ljava/lang/Object;
.source "SelectorDepartmentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->k(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->l(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c()V

    .line 312
    return-void
.end method
