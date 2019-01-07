.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$12;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$12;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$12;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 518
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$12;->a:Landroid/app/Activity;

    instance-of v1, v1, Lenw;

    if-eqz v1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$12;->a:Landroid/app/Activity;

    check-cast v0, Lenw;

    .line 520
    .local v0, "watcher":Lenw;
    invoke-interface {v0, p1}, Lenw;->c(Ljava/lang/String;)V

    .line 522
    .end local v0    # "watcher":Lenw;
    :cond_0
    return-void
.end method
