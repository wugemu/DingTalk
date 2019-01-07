.class public Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "FilePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$b;,
        Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;,
        Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;,
        Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lgcy;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lgda;->a()Lgda;

    move-result-object v0

    .line 1071
    iget-object v0, v0, Lgda;->b:Ljava/util/Hashtable;

    .line 49
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->b:Ljava/util/Hashtable;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;Lgcy;)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;
    .param p1, "x1"    # Lgcy;

    .prologue
    .line 41
    .line 1132
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->b:Ljava/util/Hashtable;

    iget-object v1, p1, Lgcy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    return v0
.end method


# virtual methods
.method final a(Landroid/widget/ListView;ZLjava/lang/String;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "isSelected"    # Z
    .param p3, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 115
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 116
    .local v0, "selectView":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 118
    if-eqz p2, :cond_1

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 125
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->b:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_1
    return-void

    .line 121
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcy;

    .line 97
    .local v0, "item":Lgcy;
    if-nez v0, :cond_0

    .line 98
    const/4 v1, 0x0

    .line 100
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lgcy;->d:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->getItemViewType(I)I

    move-result v2

    .line 55
    .local v2, "viewType":I
    const/4 v1, 0x0

    .line 56
    .local v1, "viewHolder":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    check-cast v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;

    .line 59
    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    iget v3, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;->a:I

    if-eq v3, v2, :cond_0

    .line 60
    const/4 p2, 0x0

    .line 61
    const/4 v1, 0x0

    .line 65
    :cond_0
    if-nez v1, :cond_1

    .line 66
    packed-switch v2, :pswitch_data_0

    .line 75
    new-instance v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;

    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;)V

    .line 80
    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 81
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->m:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 82
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcy;

    .line 87
    .local v0, "dataItem":Lgcy;
    if-eqz v0, :cond_3

    .line 88
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->m:Landroid/content/Context;

    invoke-virtual {v1, v3, p1, v0, p3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;->a(Landroid/content/Context;ILgcy;Landroid/view/ViewGroup;)V

    .line 91
    :cond_3
    return-object p2

    .line 68
    .end local v0    # "dataItem":Lgcy;
    :pswitch_0
    new-instance v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;

    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;)V

    .line 69
    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    goto :goto_0

    .line 71
    :pswitch_1
    new-instance v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$b;

    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$b;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;)V

    .line 72
    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x3

    return v0
.end method
