.class final Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;
.super Ljava/lang/Object;
.source "ContactDetailSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

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
    const/4 v4, 0x0

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iput v4, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->o:I

    .line 204
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iput v4, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->r:I

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-wide v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;I)I

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->n:Z

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->h:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->HP_MORE_CONTACTS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->SOURCE_HYBRID:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    iput-object v1, v0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->p:Leoe;

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->j()V

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->b(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;)V

    .line 219
    :cond_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment$1;->a:Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;

    invoke-static {v0, v4}, Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;->a(Lcom/alibaba/android/search/old/fragment/ContactDetailSearchFragment;I)I

    goto :goto_0
.end method
