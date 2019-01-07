.class final Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$4;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

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
    .line 242
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->f:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lemz;->a(Ljava/util/List;)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$4;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->b(Ljava/util/List;)V

    .line 244
    return-void
.end method
