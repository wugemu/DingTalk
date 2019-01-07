.class final Lcom/alibaba/android/search/activity/GlobalSearchActivity$3;
.super Ljava/lang/Object;
.source "GlobalSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/activity/GlobalSearchActivity;->a(ZZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/GlobalSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$3;->a:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$3;->a:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->b(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/search/activity/GlobalSearchActivity$3;->a:Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/GlobalSearchActivity;->c(Lcom/alibaba/android/search/activity/GlobalSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 345
    :cond_0
    return-void
.end method
