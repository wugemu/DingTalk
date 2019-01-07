.class public final Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;
.super Ljava/lang/Object;
.source "ConcernListFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    iput p2, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 400
    .line 1404
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->g(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->a:I

    if-le v0, v1, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1408
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->m(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Lfgh;

    move-result-object v0

    invoke-virtual {v0}, Lfgh;->notifyDataSetChanged()V

    .line 1409
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    const-string/jumbo v1, "com.workapp.concern.list.item.delete"

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Ljava/lang/String;)V

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1413
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d()V

    .line 400
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$6;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->g(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 420
    return-void
.end method
