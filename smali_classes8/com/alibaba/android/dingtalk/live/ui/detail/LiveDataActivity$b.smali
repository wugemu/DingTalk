.class final Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;
.super Landroid/widget/BaseAdapter;
.source "LiveDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->b:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;-><init>(Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 272
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 273
    :cond_0
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->a:Ljava/util/List;

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
    .line 280
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

    .line 286
    if-nez p2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->b:Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbtp$f;->layout_item_live_data:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 289
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;

    invoke-direct {v1, p2, v4}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;-><init>(Landroid/view/View;B)V

    .line 290
    .local v1, "viewHolder":Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;

    .line 296
    .local v0, "data":Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;->a:Landroid/widget/TextView;

    .line 1314
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;->b:Ljava/lang/String;

    .line 297
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2304
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;->b:Landroid/widget/TextView;

    .line 2314
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;->a:Ljava/lang/String;

    .line 298
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    return-object p2

    .line 292
    .end local v0    # "data":Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$a;
    .end local v1    # "viewHolder":Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;

    .restart local v1    # "viewHolder":Lcom/alibaba/android/dingtalk/live/ui/detail/LiveDataActivity$c;
    goto :goto_0
.end method
