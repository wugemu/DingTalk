.class public final Laut;
.super Landroid/widget/BaseAdapter;
.source "CalendarSettingAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lauz;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:Laus;

.field private d:Laur;

.field private e:Lauq;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Laus;Laur;Lauq;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "onFolderSelectedListener"    # Laus;
    .param p3, "onFolderGroupClickListener"    # Laur;
    .param p4, "onFolderClickListener"    # Lauq;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laut;->a:Ljava/util/List;

    .line 38
    iput-object p1, p0, Laut;->b:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Laut;->c:Laus;

    .line 40
    iput-object p3, p0, Laut;->d:Laur;

    .line 41
    iput-object p4, p0, Laut;->e:Lauq;

    .line 42
    return-void
.end method

.method private a(I)Lauz;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    if-ltz p1, :cond_0

    iget-object v0, p0, Laut;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Laut;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lauz;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lauy;)V
    .locals 6
    .param p1, "headerSetting"    # Lauy;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    iget-object v3, p1, Lauy;->f:Ljava/util/List;

    .line 56
    if-eqz v3, :cond_0

    .line 2052
    iget-object v3, p1, Lauy;->f:Ljava/util/List;

    .line 56
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    iget-object v3, p0, Laut;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 60
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 2056
    iget-boolean v3, p1, Lauy;->a:Z

    .line 63
    if-eqz v3, :cond_3

    .line 64
    iget-object v3, p0, Laut;->a:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    .line 3052
    iget-object v5, p1, Lauy;->f:Ljava/util/List;

    .line 64
    invoke-interface {v3, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 71
    :cond_2
    invoke-virtual {p0}, Laut;->notifyDataSetChanged()V

    goto :goto_0

    .line 4052
    :cond_3
    iget-object v3, p1, Lauy;->f:Ljava/util/List;

    .line 66
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 67
    .local v0, "folderNum":I
    const/4 v2, 0x0

    .local v2, "num":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 68
    iget-object v3, p0, Laut;->a:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Laut;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Laut;->a(I)Lauz;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 95
    invoke-direct {p0, p1}, Laut;->a(I)Lauz;

    move-result-object v0

    .line 96
    .local v0, "setting":Lauz;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lauz;->a()Lcom/alibaba/android/calendar/setting/object/SettingType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v0}, Lauz;->a()Lcom/alibaba/android/calendar/setting/object/SettingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/setting/object/SettingType;->ordinal()I

    move-result v1

    .line 99
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 109
    invoke-direct {p0, p1}, Laut;->a(I)Lauz;

    move-result-object v0

    .line 111
    .local v0, "event":Lauz;
    if-nez p2, :cond_4

    .line 112
    invoke-virtual {p0, p1}, Laut;->getItemViewType(I)I

    move-result v2

    .line 113
    .local v2, "typeValue":I
    iget-object v4, p0, Laut;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alibaba/android/calendar/setting/object/SettingType;->values()[Lcom/alibaba/android/calendar/setting/object/SettingType;

    move-result-object v3

    aget-object v3, v3, v2

    .line 5016
    if-eqz v4, :cond_0

    if-nez v3, :cond_3

    .line 5017
    :cond_0
    const/4 v1, 0x0

    .line 114
    .local v1, "holder":Lauu;
    :goto_0
    if-eqz v1, :cond_1

    .line 5034
    iget-object p2, v1, Lauu;->a:Landroid/view/View;

    .line 116
    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    .end local v2    # "typeValue":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v1, v0}, Lauu;->a(Lauz;)V

    .line 126
    iget-object v3, p0, Laut;->d:Laur;

    .line 5052
    iput-object v3, v1, Lauu;->d:Laur;

    .line 127
    iget-object v3, p0, Laut;->c:Laus;

    .line 6048
    iput-object v3, v1, Lauu;->c:Laus;

    .line 128
    iget-object v3, p0, Laut;->e:Lauq;

    .line 6056
    iput-object v3, v1, Lauu;->e:Lauq;

    .line 131
    :cond_2
    return-object p2

    .line 5021
    .end local v1    # "holder":Lauu;
    .restart local v2    # "typeValue":I
    :cond_3
    sget-object v5, Laux$1;->a:[I

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/setting/object/SettingType;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 5027
    new-instance v3, Lauw;

    invoke-direct {v3}, Lauw;-><init>()V

    .line 5031
    :goto_2
    invoke-virtual {v3, v4, p3}, Lauu;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    move-object v1, v3

    .line 5032
    goto :goto_0

    .line 5023
    :pswitch_0
    new-instance v3, Lauv;

    invoke-direct {v3}, Lauv;-><init>()V

    goto :goto_2

    .line 121
    .end local v2    # "typeValue":I
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lauu;

    .restart local v1    # "holder":Lauu;
    goto :goto_1

    .line 5021
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/alibaba/android/calendar/v2/data/object/EventType;->values()[Lcom/alibaba/android/calendar/v2/data/object/EventType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
