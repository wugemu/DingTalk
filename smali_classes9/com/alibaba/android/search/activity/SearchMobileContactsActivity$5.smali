.class final Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$5;
.super Ljava/lang/Object;
.source "SearchMobileContactsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;
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
    .line 244
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$5;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$5;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->b(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$5;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->b(Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;)Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/LocalContactSearchFragment;->c()V

    .line 250
    :cond_0
    return-void
.end method
