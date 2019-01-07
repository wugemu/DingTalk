.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 917
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    sget v0, Laxp$i;->ding_network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 942
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-static {}, Lbbv;->a()Lbbv;

    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbs;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbbv;->a(Ljava/lang/Iterable;)V

    .line 922
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Z)Z

    .line 923
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    sget v2, Laxp$i;->ding_list_cleaning:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Ljava/lang/CharSequence;)V

    .line 924
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9$1;-><init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$9;)V

    invoke-virtual {v0, v1}, Lbbp;->d(Lcma;)V

    goto :goto_0
.end method
