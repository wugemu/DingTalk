.class final Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$5;
.super Ljava/lang/Object;
.source "GlobalSearchHomepageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$5;->b:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$5;->a:Ljava/util/List;

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
    .line 209
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$5;->b:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$5;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;->a(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;Ljava/util/List;)V

    .line 210
    return-void
.end method
