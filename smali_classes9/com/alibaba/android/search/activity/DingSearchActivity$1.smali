.class final Lcom/alibaba/android/search/activity/DingSearchActivity$1;
.super Ljava/lang/Object;
.source "DingSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/DingSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/DingSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/DingSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/DingSearchActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity$1;->a:Lcom/alibaba/android/search/activity/DingSearchActivity;

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
    .line 50
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity$1;->a:Lcom/alibaba/android/search/activity/DingSearchActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/search/activity/DingSearchActivity;->a()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "searchKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity$1;->a:Lcom/alibaba/android/search/activity/DingSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/search/activity/DingSearchActivity;->a(Lcom/alibaba/android/search/activity/DingSearchActivity;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/activity/DingSearchActivity$1;->a:Lcom/alibaba/android/search/activity/DingSearchActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/search/activity/DingSearchActivity;->a(Lcom/alibaba/android/search/activity/DingSearchActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
