.class final Lcom/alibaba/android/search/activity/SearchJournalActivity$1;
.super Ljava/lang/Object;
.source "SearchJournalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/activity/SearchJournalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/activity/SearchJournalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/activity/SearchJournalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/activity/SearchJournalActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity$1;->a:Lcom/alibaba/android/search/activity/SearchJournalActivity;

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
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity$1;->a:Lcom/alibaba/android/search/activity/SearchJournalActivity;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/SearchJournalActivity$1;->a:Lcom/alibaba/android/search/activity/SearchJournalActivity;

    iget-object v1, v1, Lcom/alibaba/android/search/activity/SearchJournalActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/activity/SearchJournalActivity;->b(Ljava/lang/String;)V

    .line 89
    return-void
.end method
