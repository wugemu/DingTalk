.class public final Lbxv;
.super Landroid/widget/BaseAdapter;
.source "LinkMicCallListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbxv$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/view/View$OnClickListener;

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lbxv;->d:Landroid/content/Context;

    .line 35
    iput p2, p0, Lbxv;->c:I

    .line 36
    return-void
.end method

.method static synthetic a(Lbxv;)I
    .locals 1
    .param p0, "x0"    # Lbxv;

    .prologue
    .line 26
    iget v0, p0, Lbxv;->c:I

    return v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbxv;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbxv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lbxv;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lbxv;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 69
    iget-object v4, p0, Lbxv;->d:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lbtp$f;->layout_live_link_mic_item:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v1, Lbxv$a;

    invoke-direct {v1, p2, v6}, Lbxv$a;-><init>(Landroid/view/View;B)V

    .line 1108
    .local v1, "viewHolder":Lbxv$a;
    iget-object v4, v1, Lbxv$a;->a:Landroid/widget/Button;

    .line 72
    iget-object v5, p0, Lbxv;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_0
    iget-object v4, p0, Lbxv;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    .line 2108
    .local v2, "uid":J
    iget-object v4, v1, Lbxv$a;->a:Landroid/widget/Button;

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 81
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_1

    .line 82
    iget v4, p0, Lbxv;->c:I

    invoke-static {v1, v0, v4}, Lbxv$a;->a(Lbxv$a;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V

    .line 105
    :goto_1
    return-object p2

    .line 74
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v1    # "viewHolder":Lbxv$a;
    .end local v2    # "uid":J
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxv$a;

    .restart local v1    # "viewHolder":Lbxv$a;
    goto :goto_0

    .line 84
    .restart local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local v2    # "uid":J
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    new-instance v5, Lbxv$1;

    invoke-direct {v5, p0, v2, v3, v1}, Lbxv$1;-><init>(Lbxv;JLbxv$a;)V

    invoke-virtual {v4, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_1
.end method
