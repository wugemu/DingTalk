.class public final Lgvq;
.super Landroid/widget/BaseAdapter;
.source "InviteGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgvq$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "units":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lgvq;->a:Landroid/view/LayoutInflater;

    .line 29
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 30
    .local v0, "size":I
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lgvq;->b:Ljava/util/List;

    .line 31
    if-eqz p2, :cond_0

    .line 32
    iget-object v1, p0, Lgvq;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_0
    return-void

    .line 29
    .end local v0    # "size":I
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgvq;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgvq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lgvq;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lgvq;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 49
    iget-object v0, p0, Lgvq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 60
    if-nez p2, :cond_1

    .line 61
    new-instance v1, Lgvq$a;

    invoke-direct {v1, v4}, Lgvq$a;-><init>(B)V

    .line 62
    .local v1, "viewHolder":Lgvq$a;
    iget-object v2, p0, Lgvq;->a:Landroid/view/LayoutInflater;

    sget v3, Lgvn$g;->view_share_item:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    sget v2, Lgvn$e;->txt_gv_item:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lgvq$a;->a:Landroid/widget/TextView;

    .line 64
    sget v2, Lgvn$e;->img_gv_item:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lgvq$a;->b:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v2, p0, Lgvq;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;

    .line 71
    .local v0, "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    if-eqz v0, :cond_0

    .line 72
    iget-object v2, v1, Lgvq$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v1, Lgvq$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->getIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    :cond_0
    return-object p2

    .line 67
    .end local v0    # "unit":Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
    .end local v1    # "viewHolder":Lgvq$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgvq$a;

    .restart local v1    # "viewHolder":Lgvq$a;
    goto :goto_0
.end method
