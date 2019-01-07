.class final Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$1;
.super Ljava/lang/Object;
.source "GlobalSearchHomepageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)V

    .line 144
    return-void
.end method
