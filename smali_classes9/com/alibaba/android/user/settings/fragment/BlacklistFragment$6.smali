.class public final Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;
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
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    iput p2, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->a:I

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
    .line 378
    .line 1382
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->g(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->a:I

    if-le v0, v1, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1386
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->m(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Lfwg;

    move-result-object v0

    invoke-virtual {v0}, Lfwg;->notifyDataSetChanged()V

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->k(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->d()V

    .line 378
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
    .line 402
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$6;->b:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->g(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 397
    return-void
.end method
