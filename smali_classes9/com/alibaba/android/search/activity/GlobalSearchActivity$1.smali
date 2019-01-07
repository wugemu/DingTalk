.class final Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;
.super Ljava/lang/Object;
.source "GlobalSearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/GlobalSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/search/activity/GlobalSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/GlobalSearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->b:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    iput-object p2, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->b:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->b:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->b:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->c(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->b:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->b:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(Lcom/alibaba/android/search/activity/GlobalSearchActivity;Ljava/lang/String;)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->b:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    iget-object v0, v0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 199
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
