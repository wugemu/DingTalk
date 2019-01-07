.class final Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$1;
.super Ljava/lang/Object;
.source "DtPullToRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$1;->a:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    .line 1597
    iget-object v1, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:Lkfa;

    if-eqz v1, :cond_0

    .line 1598
    iget-object v1, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:Lkfa;

    .line 2038
    const/4 v2, 0x0

    iput-byte v2, v1, Lkfa;->b:B

    .line 1601
    :cond_0
    iget v1, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:I

    int-to-long v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .line 1602
    if-gtz v1, :cond_1

    .line 1606
    invoke-virtual {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a()V

    :goto_0
    return-void

    .line 1608
    :cond_1
    iget-object v2, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
