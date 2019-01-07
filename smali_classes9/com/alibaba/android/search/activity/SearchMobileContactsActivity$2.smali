.class final Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$2;
.super Ljava/lang/Object;
.source "SearchMobileContactsActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$2;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$2;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->b(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "mobile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$2;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->a(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;Ljava/lang/String;)V

    .line 109
    .end local v0    # "mobile":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
