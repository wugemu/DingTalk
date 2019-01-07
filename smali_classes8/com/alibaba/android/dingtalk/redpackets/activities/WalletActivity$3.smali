.class final Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$3;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 272
    add-int v3, p2, p3

    .line 273
    .local v3, "lastVisibleItem":I
    if-ge v3, p4, :cond_0

    .line 275
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-static {v5, v9}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;I)V

    .line 291
    :goto_0
    return-void

    .line 279
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 280
    .local v2, "lastChildIndex":I
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 281
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;)I

    move-result v6

    add-int v4, v5, v6

    .line 282
    .local v4, "topMargin":I
    if-gez v4, :cond_1

    .line 283
    const/4 v4, 0x0

    .line 285
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/WalletActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lastChildIndex":I
    .end local v4    # "topMargin":I
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "redpackets"

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "refreshSpace error"

    aput-object v8, v7, v9

    const/4 v8, 0x1

    .line 288
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 287
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 268
    return-void
.end method
