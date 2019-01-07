.class final Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;
.super Ljava/lang/Object;
.source "GlobalSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/GlobalSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/GlobalSearchActivity;Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->c:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    iput-object p2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->a:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    iput-object p3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 229
    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->a:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    invoke-virtual {v1}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->showQuickHintActionBtn()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->c:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->c:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    iget-object v3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->a:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    iget-object v3, v3, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->jumpUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->c:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->b:Ljava/lang/String;

    invoke-static {v1, v5, v5, v0, v2}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(Lcom/alibaba/android/search/activity/GlobalSearchActivity;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->c:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(Lcom/alibaba/android/search/activity/GlobalSearchActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->c:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    iput-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->d:Ljava/lang/String;

    .line 246
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->c:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->b:Ljava/lang/String;

    invoke-static {v1, v5, v2, v3, v4}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(Lcom/alibaba/android/search/activity/GlobalSearchActivity;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 218
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 222
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v0, p2, p4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 223
    add-int v0, p2, p4

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$2;->d:Ljava/lang/String;

    .line 225
    :cond_0
    return-void
.end method
