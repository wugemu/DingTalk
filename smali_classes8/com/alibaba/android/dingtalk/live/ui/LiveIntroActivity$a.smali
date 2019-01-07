.class final Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;
.super Landroid/widget/BaseAdapter;
.source "LiveIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 91
    .line 4096
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;->b:Ljava/util/List;

    .line 91
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 106
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;->b:Ljava/util/List;

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
    .line 114
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

    .line 120
    if-nez p2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbtp$f;->item_live_intro:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;

    invoke-direct {v1, p2, v4}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;-><init>(Landroid/view/View;B)V

    .line 124
    .local v1, "viewHolder":Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;

    .line 129
    .local v0, "item":Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1142
    :try_start_0
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;->a:Landroid/widget/ImageView;

    .line 1155
    iget v3, v0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;->a:I

    .line 131
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2142
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;->b:Landroid/widget/TextView;

    .line 2155
    iget v3, v0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;->b:I

    .line 132
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3142
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;->c:Landroid/widget/TextView;

    .line 3155
    iget v3, v0, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;->c:I

    .line 133
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_1
    return-object p2

    .line 126
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;
    .end local v1    # "viewHolder":Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;

    .restart local v1    # "viewHolder":Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$c;
    goto :goto_0

    .restart local v0    # "item":Lcom/alibaba/android/dingtalk/live/ui/LiveIntroActivity$b;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
