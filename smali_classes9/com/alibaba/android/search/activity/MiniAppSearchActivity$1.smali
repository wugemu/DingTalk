.class final Lcom/alibaba/android/search/activity/MiniAppSearchActivity$1;
.super Ljava/lang/Object;
.source "MiniAppSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$1;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$1;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->a(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$1;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->b(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)Lerh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$1;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->b(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)Lerh;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$1;->a:Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    iget-object v1, v1, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lerh;->a(Ljava/lang/String;Z)V

    .line 67
    :cond_0
    return-void
.end method
