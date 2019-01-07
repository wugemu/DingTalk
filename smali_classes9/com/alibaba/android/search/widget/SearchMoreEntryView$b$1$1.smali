.class final Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1$1;
.super Ljava/lang/Object;
.source "SearchMoreEntryView.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 161
    const-string/jumbo v0, "intent_key_search_query_log_entry"

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string/jumbo v0, "intent_key_search_group_type"

    iget-object v1, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;

    iget-object v1, v1, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    iget-object v1, v1, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string/jumbo v0, "keyword"

    iget-object v1, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;

    iget-object v1, v1, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->c:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;

    iget-object v1, v1, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;->c:Lcom/alibaba/android/search/widget/SearchMoreEntryView;

    invoke-static {v1}, Lcom/alibaba/android/search/widget/SearchMoreEntryView;->b(Lcom/alibaba/android/search/widget/SearchMoreEntryView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;

    iget-object v0, v0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->c:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;

    iget-object v1, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;

    iget v1, v1, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->b:I

    iget-object v2, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;

    iget-object v2, v2, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b$1;->a:Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;

    iget-object v2, v2, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;->a(Lcom/alibaba/android/search/widget/SearchMoreEntryView$b;ILcom/alibaba/android/search/SearchGroupType;)V

    .line 166
    return-object p1
.end method
