.class final Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "GroupDetailSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

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

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->o:I

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->r:I

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v2, "search_my_group_use_server"

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Remote:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    :goto_0
    invoke-static {v1, v0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;)Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->n:Z

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v1, v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->p:Leoe;

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;->j()V

    .line 133
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Local:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    goto :goto_0
.end method
