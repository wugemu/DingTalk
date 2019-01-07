.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$1;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

.field final synthetic b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .prologue
    .line 2509
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$1;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$1;->a:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2512
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[Render]timeout "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$1;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .line 3483
    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 2513
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2512
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 4050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2515
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$1;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a(I)V

    .line 2516
    return-void
.end method
