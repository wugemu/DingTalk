.class final Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;
.super Ljava/lang/Object;
.source "DingNewTabActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingNewTabItemView;

.field final synthetic b:Lbks;

.field final synthetic c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Lcom/alibaba/android/ding/widget/DingNewTabItemView;Lbks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->a:Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->b:Lbks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->a:Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->getCurrentTabIndex()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v1

    .line 201
    .local v1, "newTabIndex":Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v3

    if-eq v1, v3, :cond_4

    .line 203
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-static {}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->values()[Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    .line 210
    .local v2, "oldDingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a(Z)V

    .line 213
    .end local v2    # "oldDingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    if-eqz v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    .line 215
    .local v0, "dingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a(Z)V

    .line 217
    .end local v0    # "dingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3, v1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 218
    const-string/jumbo v3, "sp_selected_current_tab_index"

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v4

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;I)V

    .line 219
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->f(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    .line 221
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->g(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    .line 222
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    .line 224
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;->b:Lbks;

    .line 1020
    iget-object v4, v4, Lbks;->a:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 224
    invoke-static {v3, v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)V

    goto :goto_0
.end method
