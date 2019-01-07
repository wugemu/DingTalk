.class final Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "ExternalContactDetailSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

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

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->o:I

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iput v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->q:I

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->n:Z

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_EXTERNAL_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v1, v0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->p:Leoe;

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ExternalContactDetailSearchFragment;->j()V

    .line 113
    return-void
.end method
