.class public final Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;
.super Landroid/widget/BaseAdapter;
.source "GuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;-><init>(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->a(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->a(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->a(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 110
    if-nez p2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->b(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbtp$f;->layout_item_guide:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 112
    new-instance v1, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    invoke-direct {v1, v2, p2, v4}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;-><init>(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;Landroid/view/View;B)V

    .line 117
    .local v1, "viewHolder":Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;
    :goto_0
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "object":Ljava/lang/Object;
    instance-of v2, v0, Lbxi;

    if-eqz v2, :cond_0

    .line 120
    check-cast v0, Lbxi;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;->a(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;Lbxi;)V

    .line 124
    :cond_0
    return-object p2

    .line 114
    .end local v1    # "viewHolder":Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;

    .restart local v1    # "viewHolder":Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;
    goto :goto_0
.end method
