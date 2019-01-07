.class public final Lfxx;
.super Landroid/widget/BaseAdapter;
.source "UserManagerAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lfxw;

.field public c:I

.field public d:I

.field public e:Z

.field private f:Landroid/app/Activity;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;>;"
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lfxx;->c:I

    .line 48
    iput v1, p0, Lfxx;->d:I

    .line 50
    iput-boolean v1, p0, Lfxx;->e:Z

    .line 52
    const/16 v0, 0x270f

    iput v0, p0, Lfxx;->g:I

    .line 55
    iput-object p1, p0, Lfxx;->f:Landroid/app/Activity;

    .line 56
    iput-object p2, p0, Lfxx;->a:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lfxx;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfxx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lfxx;->g:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lfxx;->g:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfxx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lfxx;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfxx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lfxx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lfxx;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    .line 84
    .local v0, "user":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;
    if-eqz v0, :cond_0

    .line 1067
    iget-object v1, v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;->a:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 85
    invoke-virtual {v1}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->getValue()I

    move-result v1

    .line 87
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 104
    if-nez p2, :cond_7

    .line 105
    invoke-virtual {p0, p1}, Lfxx;->getItemViewType(I)I

    move-result v3

    .line 106
    .local v3, "type":I
    iget-object v5, p0, Lfxx;->f:Landroid/app/Activity;

    invoke-static {v3}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->valueOf(I)Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    move-result-object v6

    iget v7, p0, Lfxx;->d:I

    .line 2033
    sget-object v8, Lfyf$1;->a:[I

    invoke-virtual {v6}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->ordinal()I

    move-result v6

    aget v6, v8, v6

    packed-switch v6, :pswitch_data_0

    .line 2063
    if-nez v7, :cond_6

    .line 2064
    new-instance v1, Lfyb;

    sget v6, Lfxs$b;->user_kit_manager_item_add_button_small:I

    invoke-direct {v1, v5, v6}, Lfyb;-><init>(Landroid/app/Activity;I)V

    .line 107
    .local v1, "holder":Lfya;
    :goto_0
    iget-object v5, p0, Lfxx;->b:Lfxw;

    invoke-virtual {v1, v5}, Lfya;->a(Lfxw;)V

    .line 108
    invoke-virtual {v1}, Lfya;->a()Landroid/view/View;

    move-result-object p2

    .line 109
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    .end local v3    # "type":I
    :goto_1
    iget-object v5, p0, Lfxx;->a:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;

    .line 114
    .local v2, "model":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;
    invoke-virtual {v1, v2}, Lfya;->a(Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;)V

    .line 116
    invoke-virtual {p0, p1}, Lfxx;->getItemViewType(I)I

    move-result v3

    .line 117
    .restart local v3    # "type":I
    sget-object v5, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->UserItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    invoke-virtual {v5}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->getValue()I

    move-result v5

    if-ne v3, v5, :cond_0

    move-object v4, v1

    .line 118
    check-cast v4, Lfye;

    .line 119
    .local v4, "userItemViewHolder":Lfye;
    iget v5, p0, Lfxx;->c:I

    sub-int v5, p1, v5

    .line 2091
    iput v5, v4, Lfye;->d:I

    .line 120
    iget-boolean v5, p0, Lfxx;->e:Z

    .line 3087
    iput-boolean v5, v4, Lfye;->c:Z

    .line 122
    .end local v4    # "userItemViewHolder":Lfye;
    :cond_0
    sget-object v5, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->DeptItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    invoke-virtual {v5}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->getValue()I

    move-result v5

    if-ne v3, v5, :cond_1

    move-object v0, v1

    .line 123
    check-cast v0, Lfyd;

    .line 124
    .local v0, "deptItemViewHolder":Lfyd;
    iget v5, p0, Lfxx;->c:I

    sub-int v5, p1, v5

    .line 4084
    iput v5, v0, Lfyd;->d:I

    .line 125
    iget-boolean v5, p0, Lfxx;->e:Z

    .line 5080
    iput-boolean v5, v0, Lfyd;->c:Z

    .line 128
    .end local v0    # "deptItemViewHolder":Lfyd;
    :cond_1
    return-object p2

    .line 2035
    .end local v1    # "holder":Lfya;
    .end local v2    # "model":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;
    :pswitch_0
    if-nez v7, :cond_2

    .line 2036
    new-instance v1, Lfyb;

    sget v6, Lfxs$b;->user_kit_manager_item_add_button_small:I

    invoke-direct {v1, v5, v6}, Lfyb;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2038
    :cond_2
    new-instance v1, Lfyb;

    sget v6, Lfxs$b;->user_kit_manager_item_add_button_large:I

    invoke-direct {v1, v5, v6}, Lfyb;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2042
    :pswitch_1
    if-nez v7, :cond_3

    .line 2043
    new-instance v1, Lfyc;

    sget v6, Lfxs$b;->user_kit_manager_item_delete_button_small:I

    invoke-direct {v1, v5, v6}, Lfyc;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2045
    :cond_3
    new-instance v1, Lfyc;

    sget v6, Lfxs$b;->user_kit_manager_item_delete_button_large:I

    invoke-direct {v1, v5, v6}, Lfyc;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2049
    :pswitch_2
    if-nez v7, :cond_4

    .line 2050
    new-instance v1, Lfye;

    sget v6, Lfxs$b;->user_kit_manager_item_user_item_small:I

    invoke-direct {v1, v5, v6}, Lfye;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2052
    :cond_4
    new-instance v1, Lfye;

    sget v6, Lfxs$b;->user_kit_manager_item_user_item_large:I

    invoke-direct {v1, v5, v6}, Lfye;-><init>(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 2056
    :pswitch_3
    if-nez v7, :cond_5

    .line 2057
    new-instance v1, Lfyd;

    sget v6, Lfxs$b;->user_kit_manager_item_dept_item_small:I

    invoke-direct {v1, v5, v6}, Lfyd;-><init>(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 2059
    :cond_5
    new-instance v1, Lfyd;

    sget v6, Lfxs$b;->user_kit_manager_item_dept_item_large:I

    invoke-direct {v1, v5, v6}, Lfyd;-><init>(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 2066
    :cond_6
    new-instance v1, Lfyb;

    sget v6, Lfxs$b;->user_kit_manager_item_add_button_large:I

    invoke-direct {v1, v5, v6}, Lfyb;-><init>(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 111
    .end local v3    # "type":I
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfya;

    .restart local v1    # "holder":Lfya;
    goto/16 :goto_1

    .line 2033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->values()[Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->values()[Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method
