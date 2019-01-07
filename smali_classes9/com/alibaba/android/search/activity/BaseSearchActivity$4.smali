.class final Lcom/alibaba/android/search/activity/BaseSearchActivity$4;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/BaseSearchActivity;
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
    .line 167
    iput-object p1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity$4;->a:Lcom/alibaba/android/search/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity$4;->a:Lcom/alibaba/android/search/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b:Landroid/widget/SearchView;

    return-object v0
.end method
