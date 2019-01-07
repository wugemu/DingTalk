.class public final Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;
.super Ljava/lang/Object;
.source "BlacklistFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
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

.field final synthetic b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

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
    .line 333
    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1338
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->l(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)V

    .line 1339
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d()V

    .line 1340
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->m(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Lfwg;

    move-result-object v0

    invoke-virtual {v0}, Lfwg;->notifyDataSetChanged()V

    .line 333
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
    .line 351
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->g(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 346
    return-void
.end method
