.class final Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$4;
.super Ljava/lang/Object;
.source "ConcernListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->e(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;I)I

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$4;->a:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Z)V

    .line 318
    return-void
.end method
