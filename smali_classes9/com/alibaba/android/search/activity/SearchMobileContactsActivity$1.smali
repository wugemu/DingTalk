.class final Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$1;
.super Ljava/lang/Object;
.source "SearchMobileContactsActivity.java"

# interfaces
.implements Lgd$d;


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
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity$1;->a:Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/search/activity/SearchMobileContactsActivity;->finish()V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
