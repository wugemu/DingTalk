.class public Lcom/im/av/view/WxAlertDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "WxAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/av/view/WxAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/im/av/view/WxAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    new-instance v0, Lcom/im/av/view/WxAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/im/av/view/WxAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    .line 282
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 794
    new-instance v13, Lcom/im/av/view/WxAlertDialog;

    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    invoke-direct {v13, v0}, Lcom/im/av/view/WxAlertDialog;-><init>(Landroid/content/Context;)V

    .line 795
    .local v13, "dialog":Lcom/im/av/view/WxAlertDialog;
    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    invoke-static {v13}, Lcom/im/av/view/WxAlertDialog;->a(Lcom/im/av/view/WxAlertDialog;)Lcom/im/av/view/WxAlertController;

    move-result-object v14

    .line 1785
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->f:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1786
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->f:Landroid/view/View;

    .line 2229
    iput-object v0, v14, Lcom/im/av/view/WxAlertController;->D:Landroid/view/View;

    .line 1798
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1799
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->g:Ljava/lang/CharSequence;

    invoke-virtual {v14, v0}, Lcom/im/av/view/WxAlertController;->b(Ljava/lang/CharSequence;)V

    .line 1801
    :cond_1
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1802
    const/4 v0, -0x1

    iget-object v2, v1, Lcom/im/av/view/WxAlertController$AlertParams;->h:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/im/av/view/WxAlertController$AlertParams;->i:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    invoke-virtual {v14, v0, v2, v3, v4}, Lcom/im/av/view/WxAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1805
    :cond_2
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1806
    const/4 v0, -0x2

    iget-object v2, v1, Lcom/im/av/view/WxAlertController$AlertParams;->j:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/im/av/view/WxAlertController$AlertParams;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    invoke-virtual {v14, v0, v2, v3, v4}, Lcom/im/av/view/WxAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1809
    :cond_3
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->l:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1810
    const/4 v0, -0x3

    iget-object v2, v1, Lcom/im/av/view/WxAlertController$AlertParams;->l:Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/im/av/view/WxAlertController$AlertParams;->m:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    invoke-virtual {v14, v0, v2, v3, v4}, Lcom/im/av/view/WxAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1813
    :cond_4
    iget-boolean v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->D:Z

    if-eqz v0, :cond_5

    .line 1814
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lcom/im/av/view/WxAlertController;->a(Z)V

    .line 1818
    :cond_5
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->q:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->A:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->r:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    .line 2838
    :cond_6
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    sget v2, Ljou$d;->im_select_dialog:I

    const/4 v3, 0x0

    .line 2839
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/im/av/view/WxAlertController$RecycleListView;

    .line 2842
    iget-boolean v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->w:Z

    if-eqz v0, :cond_11

    .line 2843
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->A:Landroid/database/Cursor;

    if-nez v0, :cond_10

    .line 2844
    new-instance v0, Lcom/im/av/view/WxAlertController$AlertParams$1;

    iget-object v2, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    sget v3, Ljou$d;->im_select_dialog_multichoice:I

    const v4, 0x1020014

    iget-object v5, v1, Lcom/im/av/view/WxAlertController$AlertParams;->q:[Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/im/av/view/WxAlertController$AlertParams$1;-><init>(Lcom/im/av/view/WxAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/im/av/view/WxAlertController$RecycleListView;)V

    .line 3057
    :goto_1
    iput-object v0, v14, Lcom/im/av/view/WxAlertController;->F:Landroid/widget/ListAdapter;

    .line 2917
    iget v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->y:I

    .line 4057
    iput v0, v14, Lcom/im/av/view/WxAlertController;->G:I

    .line 2919
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_15

    .line 2920
    new-instance v0, Lcom/im/av/view/WxAlertController$AlertParams$3;

    invoke-direct {v0, v1, v14}, Lcom/im/av/view/WxAlertController$AlertParams$3;-><init>(Lcom/im/av/view/WxAlertController$AlertParams;Lcom/im/av/view/WxAlertController;)V

    invoke-virtual {v6, v0}, Lcom/im/av/view/WxAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2948
    :cond_7
    :goto_2
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->E:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_8

    .line 2949
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->E:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v0}, Lcom/im/av/view/WxAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2952
    :cond_8
    iget-boolean v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->x:Z

    if-eqz v0, :cond_16

    .line 2953
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/im/av/view/WxAlertController$RecycleListView;->setChoiceMode(I)V

    .line 2957
    :cond_9
    :goto_3
    iget-boolean v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->F:Z

    iput-boolean v0, v6, Lcom/im/av/view/WxAlertController$RecycleListView;->a:Z

    .line 5057
    iput-object v6, v14, Lcom/im/av/view/WxAlertController;->h:Landroid/widget/ListView;

    .line 1821
    :cond_a
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->t:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1826
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->t:Landroid/view/View;

    invoke-virtual {v14, v0}, Lcom/im/av/view/WxAlertController;->b(Landroid/view/View;)V

    .line 796
    :cond_b
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->n:Z

    invoke-virtual {v13, v0}, Lcom/im/av/view/WxAlertDialog;->setCancelable(Z)V

    .line 797
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->o:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v13, v0}, Lcom/im/av/view/WxAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 798
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->p:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_c

    .line 799
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v0, v0, Lcom/im/av/view/WxAlertController$AlertParams;->p:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v0}, Lcom/im/av/view/WxAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 801
    :cond_c
    return-object v13

    .line 1788
    :cond_d
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 1789
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->e:Ljava/lang/CharSequence;

    invoke-virtual {v14, v0}, Lcom/im/av/view/WxAlertController;->a(Ljava/lang/CharSequence;)V

    .line 1791
    :cond_e
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 1792
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v0}, Lcom/im/av/view/WxAlertController;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1794
    :cond_f
    iget v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->c:I

    if-ltz v0, :cond_0

    .line 1795
    iget v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->c:I

    invoke-virtual {v14, v0}, Lcom/im/av/view/WxAlertController;->a(I)V

    goto/16 :goto_0

    .line 2862
    :cond_10
    new-instance v0, Lcom/im/av/view/WxAlertController$AlertParams$2;

    iget-object v2, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/im/av/view/WxAlertController$AlertParams;->A:Landroid/database/Cursor;

    const/4 v4, 0x0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/im/av/view/WxAlertController$AlertParams$2;-><init>(Lcom/im/av/view/WxAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/im/av/view/WxAlertController$RecycleListView;)V

    goto :goto_1

    .line 2895
    :cond_11
    iget-boolean v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->x:Z

    if-eqz v0, :cond_12

    sget v9, Ljou$d;->im_select_dialog_singlechoice:I

    .line 2897
    :goto_4
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->A:Landroid/database/Cursor;

    if-nez v0, :cond_14

    .line 2898
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->r:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->r:Landroid/widget/ListAdapter;

    goto/16 :goto_1

    .line 2895
    :cond_12
    sget v9, Ljou$d;->im_select_dialog_item:I

    goto :goto_4

    .line 2898
    :cond_13
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    const v3, 0x1020014

    iget-object v4, v1, Lcom/im/av/view/WxAlertController$AlertParams;->q:[Ljava/lang/CharSequence;

    invoke-direct {v0, v2, v9, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2902
    :cond_14
    new-instance v7, Landroid/widget/SimpleCursorAdapter;

    iget-object v8, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v10, v1, Lcom/im/av/view/WxAlertController$AlertParams;->A:Landroid/database/Cursor;

    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/im/av/view/WxAlertController$AlertParams;->B:Ljava/lang/String;

    aput-object v2, v11, v0

    const/4 v0, 0x1

    new-array v12, v0, [I

    const/4 v0, 0x0

    const v2, 0x1020014

    aput v2, v12, v0

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v0, v7

    goto/16 :goto_1

    .line 2931
    :cond_15
    iget-object v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->z:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_7

    .line 2932
    new-instance v0, Lcom/im/av/view/WxAlertController$AlertParams$4;

    invoke-direct {v0, v1, v6, v14}, Lcom/im/av/view/WxAlertController$AlertParams$4;-><init>(Lcom/im/av/view/WxAlertController$AlertParams;Lcom/im/av/view/WxAlertController$RecycleListView;Lcom/im/av/view/WxAlertController;)V

    invoke-virtual {v6, v0}, Lcom/im/av/view/WxAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    .line 2954
    :cond_16
    iget-boolean v0, v1, Lcom/im/av/view/WxAlertController$AlertParams;->w:Z

    if-eqz v0, :cond_9

    .line 2955
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/im/av/view/WxAlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_3
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 16504
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->r:Landroid/widget/ListAdapter;

    .line 16505
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setCancelable(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 21444
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->n:Z

    .line 273
    return-object p0
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 15523
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->A:Landroid/database/Cursor;

    .line 15524
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p3, v0, Lcom/im/av/view/WxAlertController$AlertParams;->B:Ljava/lang/String;

    .line 15525
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 32316
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->f:Landroid/view/View;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 29346
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->c:I

    .line 273
    return-object p0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 28356
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 5774
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->D:Z

    .line 273
    return-object p0
.end method

.method public synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 18476
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->q:[Ljava/lang/CharSequence;

    .line 18477
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 17488
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->q:[Ljava/lang/CharSequence;

    .line 17489
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 31326
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->g:Ljava/lang/CharSequence;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 30336
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->g:Ljava/lang/CharSequence;

    .line 273
    return-object p0
.end method

.method public synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 14549
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->q:[Ljava/lang/CharSequence;

    .line 14550
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p3, v0, Lcom/im/av/view/WxAlertController$AlertParams;->z:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 14551
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->v:[Z

    .line 14552
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->w:Z

    .line 273
    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 12603
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->A:Landroid/database/Cursor;

    .line 12604
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p4, v0, Lcom/im/av/view/WxAlertController$AlertParams;->z:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 12605
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->C:Ljava/lang/String;

    .line 12606
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p3, v0, Lcom/im/av/view/WxAlertController$AlertParams;->B:Ljava/lang/String;

    .line 12607
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->w:Z

    .line 273
    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 13575
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->q:[Ljava/lang/CharSequence;

    .line 13576
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p3, v0, Lcom/im/av/view/WxAlertController$AlertParams;->z:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 13577
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->v:[Z

    .line 13578
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->w:Z

    .line 273
    return-object p0
.end method

.method public synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 25394
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->j:Ljava/lang/CharSequence;

    .line 25395
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 24407
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->j:Ljava/lang/CharSequence;

    .line 24408
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 23420
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->l:Ljava/lang/CharSequence;

    .line 23421
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 22433
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->l:Ljava/lang/CharSequence;

    .line 22434
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 20455
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->o:Landroid/content/DialogInterface$OnCancelListener;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 7714
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->E:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 19465
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->p:Landroid/content/DialogInterface$OnKeyListener;

    .line 273
    return-object p0
.end method

.method public synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 27368
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->h:Ljava/lang/CharSequence;

    .line 27369
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 26381
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->h:Ljava/lang/CharSequence;

    .line 26382
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 273
    return-object p0
.end method

.method public synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 11628
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->q:[Ljava/lang/CharSequence;

    .line 11629
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p3, v0, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 11630
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->y:I

    .line 11631
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->x:Z

    .line 273
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 10653
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->A:Landroid/database/Cursor;

    .line 10654
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p4, v0, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 10655
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->y:I

    .line 10656
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p3, v0, Lcom/im/av/view/WxAlertController$AlertParams;->B:Ljava/lang/String;

    .line 10657
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->x:Z

    .line 273
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 8698
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->r:Landroid/widget/ListAdapter;

    .line 8699
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p3, v0, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 8700
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->y:I

    .line 8701
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->x:Z

    .line 273
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 9676
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->q:[Ljava/lang/CharSequence;

    .line 9677
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p3, v0, Lcom/im/av/view/WxAlertController$AlertParams;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 9678
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput p2, v0, Lcom/im/av/view/WxAlertController$AlertParams;->y:I

    .line 9679
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->x:Z

    .line 273
    return-object p0
.end method

.method public synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 34290
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iget-object v1, v1, Lcom/im/av/view/WxAlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->e:Ljava/lang/CharSequence;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 273
    .line 33300
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->e:Ljava/lang/CharSequence;

    .line 273
    return-object p0
.end method

.method public bridge synthetic setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    .line 6727
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    iput-object p1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->t:Landroid/view/View;

    .line 6728
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog$Builder;->a:Lcom/im/av/view/WxAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/im/av/view/WxAlertController$AlertParams;->u:Z

    .line 273
    return-object p0
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/im/av/view/WxAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 810
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 811
    return-object v0
.end method
