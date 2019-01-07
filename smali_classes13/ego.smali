.class public Lego;
.super Legn;
.source "FocusDeviceAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lego$a;,
        Lego$c;,
        Lego$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Legn",
        "<",
        "Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public c:Lego$a;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lego;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lego;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Legn;-><init>(Landroid/app/Activity;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lego;->f:Ljava/util/List;

    .line 38
    return-void
.end method

.method static synthetic a(Lego;)Lego$a;
    .locals 1
    .param p0, "x0"    # Lego;

    .prologue
    .line 26
    iget-object v0, p0, Lego;->c:Lego$a;

    return-object v0
.end method

.method static synthetic a(Lego;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lego;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lego;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lego;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lego;

    .prologue
    .line 26
    iget-object v0, p0, Lego;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lego;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lego;

    .prologue
    .line 26
    iget-object v0, p0, Lego;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;>;"
    const-string/jumbo v0, "focus"

    sget-object v1, Lego;->d:Ljava/lang/String;

    const-string/jumbo v2, "Update the data list"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lego;->f:Ljava/util/List;

    if-nez v0, :cond_2

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lego;->f:Ljava/util/List;

    .line 156
    :goto_0
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lego;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    :cond_0
    iget-object v0, p0, Lego;->c:Lego$a;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lego;->c:Lego$a;

    iget-object v1, p0, Lego;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lego$a;->a(I)V

    .line 163
    :cond_1
    iget-object v0, p0, Lego;->f:Ljava/util/List;

    invoke-super {p0, v0}, Legn;->a(Ljava/util/List;)V

    .line 164
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lego;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lego$1;

    invoke-direct {v0, p0}, Lego$1;-><init>(Lego;)V

    .line 217
    .local v0, "filter":Landroid/widget/Filter;
    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    const/4 v0, -0x1

    .line 60
    .local v0, "type":I
    iget-object v1, p0, Lego;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lego;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    iget-object v1, v1, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mType:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->ordinal()I

    move-result v0

    .line 63
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "deviceHolder":Lego$b;
    const/4 v1, 0x0

    .line 76
    .local v1, "headHolder":Lego$c;
    invoke-virtual {p0, p1}, Lego;->getItemViewType(I)I

    move-result v4

    .line 78
    .local v4, "type":I
    if-nez p2, :cond_2

    .line 79
    iget-object v5, p0, Lego;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 80
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->device:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    invoke-virtual {v5}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 81
    sget v5, Legm$d;->layout_focus_device_item:I

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance v0, Lego$b;

    .end local v0    # "deviceHolder":Lego$b;
    invoke-direct {v0, p0, v8}, Lego$b;-><init>(Lego;B)V

    .line 83
    .restart local v0    # "deviceHolder":Lego$b;
    sget v5, Legm$c;->device_name:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lego$b;->b:Landroid/widget/TextView;

    .line 84
    sget v5, Legm$c;->device_code:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lego$b;->a:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lego;->a:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    .line 101
    .local v3, "object":Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
    if-eqz v3, :cond_0

    .line 102
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->device:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    invoke-virtual {v5}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 1113
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v5, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-nez v5, :cond_4

    .line 109
    :cond_0
    :goto_1
    return-object p2

    .line 87
    .end local v3    # "object":Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    sget v5, Legm$d;->layout_focus_device_head_item:I

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v1, Lego$c;

    .end local v1    # "headHolder":Lego$c;
    invoke-direct {v1, p0, v8}, Lego$c;-><init>(Lego;B)V

    .line 89
    .restart local v1    # "headHolder":Lego$c;
    sget v5, Legm$c;->device_org_name:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lego$c;->a:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    sget-object v5, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->device:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    invoke-virtual {v5}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deviceHolder":Lego$b;
    check-cast v0, Lego$b;

    .restart local v0    # "deviceHolder":Lego$b;
    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "headHolder":Lego$c;
    check-cast v1, Lego$c;

    .restart local v1    # "headHolder":Lego$c;
    goto :goto_0

    .line 1116
    .restart local v3    # "object":Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;
    :cond_4
    iget-object v5, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v5, v5, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 1117
    iget-object v6, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v6, v6, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 1118
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1119
    iget-object v7, v0, Lego$b;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1120
    iget-object v7, v0, Lego$b;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1122
    iget-object v7, v0, Lego$b;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v6, v0, Lego$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1125
    :cond_5
    iget-object v6, v0, Lego$b;->b:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    iget-object v6, v0, Lego$b;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1128
    iget-object v6, v0, Lego$b;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1133
    :cond_6
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1136
    iget-object v5, v1, Lego$c;->a:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->orgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->values()[Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const/4 v0, -0x1

    .line 48
    .local v0, "type":I
    iget-object v1, p0, Lego;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lego;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    iget-object v1, v1, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mType:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->ordinal()I

    move-result v0

    .line 51
    :cond_0
    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->device:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem$FocusType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 52
    const/4 v1, 0x1

    .line 54
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
