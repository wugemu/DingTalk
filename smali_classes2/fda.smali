.class public Lfda;
.super Lfcy;
.source "TimelineViewHolderFactory.java"


# instance fields
.field private a:Lfdc;

.field private c:Lfdf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lfcy;-><init>()V

    return-void
.end method

.method private k()Lfdf;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lfda;->c:Lfdf;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lfda;->b()Lfdf;

    move-result-object v0

    iput-object v0, p0, Lfda;->c:Lfdf;

    .line 46
    :cond_0
    iget-object v0, p0, Lfda;->c:Lfdf;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lfcm;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 65
    .local v6, "layoutInflater":Landroid/view/LayoutInflater;
    sparse-switch p3, :sswitch_data_0

    .line 1094
    new-instance v0, Lfcv;

    invoke-virtual {p0}, Lfda;->e()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lfda;->k()Lfdf;

    move-result-object v2

    invoke-virtual {p0}, Lfda;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lfcv;-><init>(Landroid/view/View;Lfdf;Z)V

    iget-object v1, p0, Lfda;->b:Lfcm$b;

    .line 1247
    iput-object v1, v0, Lfcm;->h:Lfcm$b;

    .line 81
    :goto_0
    return-object v0

    .line 2099
    :sswitch_0
    new-instance v0, Lfct;

    invoke-virtual {p0}, Lfda;->g()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3036
    iget-object v2, p0, Lfda;->a:Lfdc;

    if-nez v2, :cond_0

    .line 3037
    invoke-virtual {p0}, Lfda;->c()Lfdc;

    move-result-object v2

    iput-object v2, p0, Lfda;->a:Lfdc;

    .line 3039
    :cond_0
    iget-object v2, p0, Lfda;->a:Lfdc;

    .line 2099
    invoke-direct {p0}, Lfda;->k()Lfdf;

    move-result-object v3

    invoke-virtual {p0}, Lfda;->a()Z

    move-result v4

    invoke-virtual {p0}, Lfda;->d()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lfct;-><init>(Landroid/view/View;Lfdc;Lfdf;ZZ)V

    iget-object v1, p0, Lfda;->b:Lfcm$b;

    .line 3247
    iput-object v1, v0, Lfcm;->h:Lfcm$b;

    goto :goto_0

    .line 4109
    :sswitch_1
    new-instance v0, Lfcq;

    invoke-virtual {p0}, Lfda;->f()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lfda;->k()Lfdf;

    move-result-object v2

    invoke-virtual {p0}, Lfda;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lfcq;-><init>(Landroid/view/View;Lfdf;Z)V

    iget-object v1, p0, Lfda;->b:Lfcm$b;

    .line 4247
    iput-object v1, v0, Lfcm;->h:Lfcm$b;

    goto :goto_0

    .line 5114
    :sswitch_2
    new-instance v0, Lfcx;

    invoke-virtual {p0}, Lfda;->i()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lfda;->k()Lfdf;

    move-result-object v2

    invoke-virtual {p0}, Lfda;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lfcx;-><init>(Landroid/view/View;Lfdf;Z)V

    iget-object v1, p0, Lfda;->b:Lfcm$b;

    .line 5247
    iput-object v1, v0, Lfcm;->h:Lfcm$b;

    goto :goto_0

    .line 6104
    :sswitch_3
    new-instance v0, Lfcw;

    invoke-virtual {p0}, Lfda;->j()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lfda;->k()Lfdf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfcw;-><init>(Landroid/view/View;Lfdf;)V

    iget-object v1, p0, Lfda;->b:Lfcm$b;

    .line 6247
    iput-object v1, v0, Lfcm;->h:Lfcm$b;

    goto :goto_0

    .line 79
    :sswitch_4
    new-instance v0, Lfcu;

    sget v1, Lezg$j;->item_connection_usr_take_photo_layout:I

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lfcu;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 7119
    :sswitch_5
    new-instance v0, Lfcr;

    invoke-virtual {p0}, Lfda;->h()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lfda;->k()Lfdf;

    move-result-object v2

    invoke-virtual {p0}, Lfda;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lfcr;-><init>(Landroid/view/View;Lfdf;Z)V

    iget-object v1, p0, Lfda;->b:Lfcm$b;

    .line 7247
    iput-object v1, v0, Lfcm;->h:Lfcm$b;

    goto/16 :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x6 -> :sswitch_2
        0x64 -> :sswitch_5
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lfcm;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p3}, Lfda;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lfda;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lfcm;

    move-result-object v0

    return-object v0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected b()Lfdf;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lfdg;

    invoke-direct {v0}, Lfdg;-><init>()V

    return-object v0
.end method

.method protected c()Lfdc;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lfdd;

    invoke-direct {v0}, Lfdd;-><init>()V

    return-object v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lezg$j;->item_connection_txt_layout:I

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 136
    sget v0, Lezg$j;->item_connection_link_layout:I

    return v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lezg$j;->item_connection_pic_and_txt_layout:I

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lezg$j;->item_connection_misc_layout:I

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lezg$j;->item_connection_annex_layout:I

    return v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 132
    sget v0, Lezg$j;->item_connection_video_layout:I

    return v0
.end method
