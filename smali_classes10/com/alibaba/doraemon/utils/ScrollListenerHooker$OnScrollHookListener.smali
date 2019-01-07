.class public abstract Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;
.super Ljava/lang/Object;
.source "ScrollListenerHooker.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/utils/ScrollListenerHooker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnScrollHookListener"
.end annotation


# instance fields
.field private mDelegated:Landroid/widget/AbsListView$OnScrollListener;

.field private mIsExam:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->mIsExam:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    iget-boolean v2, p0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->mIsExam:Z

    if-eqz v2, :cond_2

    .line 144
    invoke-static {}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 145
    .local v1, "isExam":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-static {}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 160
    .end local v1    # "isExam":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v1    # "isExam":Ljava/lang/Boolean;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->mIsExam:Z

    .line 152
    .end local v1    # "isExam":Ljava/lang/Boolean;
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "examClz":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-static {}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->mDelegated:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->mDelegated:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->mDelegated:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->mDelegated:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 139
    :cond_0
    return-void
.end method

.method protected setDelegated(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->mDelegated:Landroid/widget/AbsListView$OnScrollListener;

    .line 168
    return-void
.end method

.method public startExam()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->mIsExam:Z

    .line 164
    return-void
.end method
