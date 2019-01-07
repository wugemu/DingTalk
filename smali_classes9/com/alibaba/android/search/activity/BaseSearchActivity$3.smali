.class final Lcom/alibaba/android/search/activity/BaseSearchActivity$3;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/BaseSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/BaseSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/BaseSearchActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity$3;->a:Lcom/alibaba/android/search/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity$3;->a:Lcom/alibaba/android/search/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity$3;->a:Lcom/alibaba/android/search/activity/BaseSearchActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity$3;->a:Lcom/alibaba/android/search/activity/BaseSearchActivity;

    iget-object v1, v1, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b:Landroid/widget/SearchView;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    return-void
.end method
