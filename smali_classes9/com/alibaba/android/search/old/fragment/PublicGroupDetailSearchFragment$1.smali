.class final Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "PublicGroupDetailSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->o:I

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->r:I

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->n:Z

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v1, v0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->p:Leoe;

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/PublicGroupDetailSearchFragment;->j()V

    .line 98
    return-void
.end method
