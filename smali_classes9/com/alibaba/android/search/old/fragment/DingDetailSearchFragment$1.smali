.class final Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "DingDetailSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

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
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->o:I

    .line 39
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->n:Z

    .line 40
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v1, v0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->p:Leoe;

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/DingDetailSearchFragment;->j()V

    .line 43
    return-void
.end method
