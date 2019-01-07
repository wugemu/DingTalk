.class final Lcom/alibaba/android/search/activity/SearchMoreListActivity$1$1;
.super Ljava/lang/Object;
.source "SearchMoreListActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;->a(Lcom/alibaba/android/search/SearchGroupType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/SearchGroupType;

.field final synthetic b:Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1$1;->b:Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;

    iput-object p2, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1$1;->a:Lcom/alibaba/android/search/SearchGroupType;

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
    .line 114
    const-string/jumbo v0, "intent_key_search_query_log_entry"

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string/jumbo v0, "intent_key_search_group_type"

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1$1;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const-string/jumbo v0, "keyword"

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1$1;->b:Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/search/activity/SearchMoreListActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMoreListActivity;

    iget-object v1, v1, Lcom/alibaba/android/search/activity/SearchMoreListActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object p1
.end method
