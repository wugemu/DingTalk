.class final Lcom/alibaba/android/user/external/list/ExternalListFragment$14;
.super Ljava/lang/Object;
.source "ExternalListFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$14;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

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
    .line 631
    check-cast p1, Ljava/util/List;

    .line 1634
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$14;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1638
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1639
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$14;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Lcom/alibaba/android/user/external/list/ExternalListFragment;[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;)[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    .line 1641
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$14;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i(Lcom/alibaba/android/user/external/list/ExternalListFragment;)[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 1642
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$14;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i(Lcom/alibaba/android/user/external/list/ExternalListFragment;)[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->valueOf(I)Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    move-result-object v0

    aput-object v0, v2, v1

    .line 1641
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$14;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i(Lcom/alibaba/android/user/external/list/ExternalListFragment;)[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    aput-object v2, v0, v1

    goto :goto_1

    .line 1650
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$14;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->j(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V

    .line 631
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 659
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 655
    return-void
.end method
