.class final Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;
.super Ljava/lang/Object;
.source "GlobalSearchHomepageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/alibaba/android/search/SearchGroupType;

.field final synthetic d:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;ILjava/lang/String;Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 0
    .param p2, "iconResId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "searchGroupType"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;->d:Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput p2, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;->a:I

    .line 363
    iput-object p3, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;->b:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/alibaba/android/search/old/fragment/GlobalSearchHomepageFragment$b;->c:Lcom/alibaba/android/search/SearchGroupType;

    .line 365
    return-void
.end method
