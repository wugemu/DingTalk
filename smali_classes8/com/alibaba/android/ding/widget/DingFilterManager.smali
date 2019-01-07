.class public final Lcom/alibaba/android/ding/widget/DingFilterManager;
.super Ljava/lang/Object;
.source "DingFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/DingFilterManager$b;,
        Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;,
        Lcom/alibaba/android/ding/widget/DingFilterManager$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/HorizontalScrollView;

.field public b:Landroid/widget/LinearLayout;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/widget/DingFilterManager$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;",
            "Lcom/alibaba/android/ding/widget/DingTabItemView;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/alibaba/android/ding/widget/DingFilterManager$b;

.field public g:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;


# direct methods
.method public constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 1
    .param p1, "horizontalScrollView"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/DingFilterManager$1;-><init>(Lcom/alibaba/android/ding/widget/DingFilterManager;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->d:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->e:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->a:Landroid/widget/HorizontalScrollView;

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->d:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    sget-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->CALENDAR:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 238
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->d:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    .line 2319
    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;->a:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "curFilter"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    packed-switch p1, :pswitch_data_0

    .line 218
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 220
    .local v0, "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    .line 1319
    iget-object v2, v2, Lcom/alibaba/android/ding/widget/DingFilterManager$a;->a:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 221
    if-ne v2, v0, :cond_1

    .line 222
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 228
    :cond_0
    return-void

    .line 200
    .end local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    .end local v1    # "i":I
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->CALENDAR:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 201
    .restart local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    goto :goto_0

    .line 203
    .end local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 204
    .restart local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    goto :goto_0

    .line 206
    .end local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 207
    .restart local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    goto :goto_0

    .line 209
    .end local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->MEETING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 210
    .restart local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    goto :goto_0

    .line 212
    .end local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->FOCUS:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 213
    .restart local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    goto :goto_0

    .line 215
    .end local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DELETED:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 216
    .restart local v0    # "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    goto :goto_0

    .line 220
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;Z)V
    .locals 3
    .param p1, "dingTabIndex"    # Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    .param p2, "showRedDot"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 189
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingTabItemView;

    .line 190
    .local v0, "dingTabItemView":Lcom/alibaba/android/ding/widget/DingTabItemView;
    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v2, v0, Lcom/alibaba/android/ding/widget/DingTabItemView;->b:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a()Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->CALENDAR:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x7

    .line 246
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->d:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager;->c:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 262
    :goto_0
    :pswitch_0
    return v1

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingFilterManager;->a()Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    move-result-object v0

    .line 250
    .local v0, "dingTabIndex":Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    sget-object v2, Lcom/alibaba/android/ding/widget/DingFilterManager$4;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 262
    const/4 v1, 0x0

    goto :goto_0

    .line 254
    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 256
    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    .line 258
    :pswitch_3
    const/4 v1, 0x6

    goto :goto_0

    .line 260
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
