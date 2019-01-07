.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$3;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .prologue
    .line 2544
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$3;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$3;->a:Ljava/util/List;

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
    .line 2547
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$3;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$3;->a:Ljava/util/List;

    .line 3483
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b(Ljava/util/List;)V

    .line 2548
    return-void
.end method
