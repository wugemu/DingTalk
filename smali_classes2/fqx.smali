.class public final Lfqx;
.super Lfxq;
.source "LabelGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/user/label/LabelExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lfqy;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "multiChoose"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfqx;->b:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfqx;->c:Z

    .line 51
    iput-boolean p2, p0, Lfqx;->c:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfqx;->e:Ljava/util/List;

    .line 53
    return-void
.end method

.method static synthetic a(Lfqx;I)I
    .locals 0
    .param p0, "x0"    # Lfqx;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lfqx;->d:I

    return p1
.end method

.method static synthetic a(Lfqx;)Z
    .locals 1
    .param p0, "x0"    # Lfqx;

    .prologue
    .line 35
    iget-boolean v0, p0, Lfqx;->c:Z

    return v0
.end method

.method static synthetic b(Lfqx;)I
    .locals 1
    .param p0, "x0"    # Lfqx;

    .prologue
    .line 35
    iget v0, p0, Lfqx;->d:I

    return v0
.end method

.method static synthetic c(Lfqx;)Lfqy;
    .locals 1
    .param p0, "x0"    # Lfqx;

    .prologue
    .line 35
    iget-object v0, p0, Lfqx;->a:Lfqy;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 56
    iget-object v1, p0, Lfqx;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/label/LabelExtensionObject;

    .line 57
    .local v0, "obj":Lcom/alibaba/android/user/label/LabelExtensionObject;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/label/LabelExtensionObject;->setIsChecked(Z)V

    goto :goto_0

    .line 59
    .end local v0    # "obj":Lcom/alibaba/android/user/label/LabelExtensionObject;
    :cond_0
    invoke-virtual {p0}, Lfqx;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/label/LabelExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 75
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/label/LabelExtensionObject;>;"
    invoke-super {p0, p1}, Lfxq;->a(Ljava/util/List;)V

    .line 1081
    iget-boolean v0, p0, Lfqx;->c:Z

    if-nez v0, :cond_1

    .line 1085
    const/4 v0, 0x0

    .line 1086
    iget-object v1, p0, Lfqx;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/label/LabelExtensionObject;

    .line 1087
    invoke-virtual {v0}, Lcom/alibaba/android/user/label/LabelExtensionObject;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iput v1, p0, Lfqx;->d:I

    .line 1090
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1091
    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    iget-object v1, p0, Lfqx;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    iget-object v1, p0, Lfqx;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/label/LabelExtensionObject;

    .line 66
    .local v0, "obj":Lcom/alibaba/android/user/label/LabelExtensionObject;
    invoke-virtual {v0}, Lcom/alibaba/android/user/label/LabelExtensionObject;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lfqx;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0    # "obj":Lcom/alibaba/android/user/label/LabelExtensionObject;
    :cond_1
    iget-object v1, p0, Lfqx;->e:Ljava/util/List;

    return-object v1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lfxq;->getCount()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 112
    new-instance v0, Lcom/alibaba/android/user/widget/LabelSelectView;

    invoke-virtual {p0}, Lfqx;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/user/widget/LabelSelectView;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "label":Lcom/alibaba/android/user/widget/LabelSelectView;
    :goto_0
    invoke-virtual {p0, p1}, Lfqx;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/label/LabelExtensionObject;

    .line 118
    .local v1, "labelObject":Lcom/alibaba/android/user/label/LabelExtensionObject;
    iget-object v2, v1, Lcom/alibaba/android/user/label/LabelExtensionObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelSelectView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget v2, v1, Lcom/alibaba/android/user/label/LabelExtensionObject;->color:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelSelectView;->setColor(I)V

    .line 120
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelSelectView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    invoke-virtual {v1}, Lcom/alibaba/android/user/label/LabelExtensionObject;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelSelectView;->setChecked(Z)V

    .line 122
    new-instance v2, Lfqx$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lfqx$1;-><init>(Lfqx;Lcom/alibaba/android/user/label/LabelExtensionObject;Lcom/alibaba/android/user/widget/LabelSelectView;I)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LabelSelectView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    return-object v0

    .end local v0    # "label":Lcom/alibaba/android/user/widget/LabelSelectView;
    .end local v1    # "labelObject":Lcom/alibaba/android/user/label/LabelExtensionObject;
    :cond_0
    move-object v0, p2

    .line 114
    check-cast v0, Lcom/alibaba/android/user/widget/LabelSelectView;

    .restart local v0    # "label":Lcom/alibaba/android/user/widget/LabelSelectView;
    goto :goto_0
.end method
