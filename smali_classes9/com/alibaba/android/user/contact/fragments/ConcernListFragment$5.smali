.class public final Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 353
    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->k(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1358
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->l(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)V

    .line 1359
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->d()V

    .line 1360
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->m(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Lfgh;

    move-result-object v0

    invoke-virtual {v0}, Lfgh;->notifyDataSetChanged()V

    .line 1361
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    const-string/jumbo v1, "com.workapp.concern.list.item.add"

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->a(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Ljava/lang/String;)V

    .line 353
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
    .line 372
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;->b:Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->g(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 367
    return-void
.end method
