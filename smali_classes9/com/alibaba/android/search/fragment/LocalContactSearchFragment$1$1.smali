.class final Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1$1;
.super Ljava/lang/Object;
.source "LocalContactSearchFragment.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;

    iget-object v1, v1, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    .line 133
    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->H:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    .line 134
    .local v0, "detailFragment":Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->b(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment$1;->a:Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->c(Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;)I

    move-result v5

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZI)V

    .line 135
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 141
    return-void
.end method
