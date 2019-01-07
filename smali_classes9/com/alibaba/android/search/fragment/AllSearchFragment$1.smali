.class final Lcom/alibaba/android/search/fragment/AllSearchFragment$1;
.super Ljava/lang/Object;
.source "AllSearchFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/AllSearchFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/SearchGroupType;

.field final synthetic b:Lcom/alibaba/android/search/fragment/AllSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/AllSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$1;->b:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$1;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    const-string/jumbo v0, "intent_key_search_query_log_entry"

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string/jumbo v0, "intent_key_search_group_type"

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$1;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v0, "keyword"

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/AllSearchFragment$1;->b:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/fragment/AllSearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    return-object p1
.end method
