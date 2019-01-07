.class final Lcom/alibaba/android/search/fragment/GroupSearchFragment$2;
.super Ljava/lang/Object;
.source "GroupSearchFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/GroupSearchFragment;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/GroupSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GroupSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GroupSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

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
    .line 142
    const-string/jumbo v0, "intent_key_search_query_log_entry"

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string/jumbo v0, "intent_key_search_group_type"

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->PUBLIC_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string/jumbo v0, "keyword"

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GroupSearchFragment$2;->a:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    iget-object v1, v1, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    return-object p1
.end method
