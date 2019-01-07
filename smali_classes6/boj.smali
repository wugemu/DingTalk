.class public Lboj;
.super Lboh;
.source "TimelineViewHolderFactory.java"


# instance fields
.field private a:Lbol;

.field private c:Lboq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lboh;-><init>()V

    return-void
.end method

.method private k()Lboq;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lboj;->c:Lboq;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lboj;->b()Lboq;

    move-result-object v0

    iput-object v0, p0, Lboj;->c:Lboq;

    .line 46
    :cond_0
    iget-object v0, p0, Lboj;->c:Lboq;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lbnv;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 63
    .local v6, "layoutInflater":Landroid/view/LayoutInflater;
    sparse-switch p3, :sswitch_data_0

    .line 1092
    new-instance v0, Lboe;

    invoke-virtual {p0}, Lboj;->e()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lboj;->k()Lboq;

    move-result-object v2

    invoke-virtual {p0}, Lboj;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lboe;-><init>(Landroid/view/View;Lboq;Z)V

    iget-object v1, p0, Lboj;->b:Lbnv$d;

    .line 1237
    iput-object v1, v0, Lbnv;->h:Lbnv$d;

    .line 79
    :goto_0
    return-object v0

    .line 2096
    :sswitch_0
    new-instance v0, Lboc;

    invoke-virtual {p0}, Lboj;->g()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3036
    iget-object v2, p0, Lboj;->a:Lbol;

    if-nez v2, :cond_0

    .line 3037
    invoke-virtual {p0}, Lboj;->c()Lbol;

    move-result-object v2

    iput-object v2, p0, Lboj;->a:Lbol;

    .line 3039
    :cond_0
    iget-object v2, p0, Lboj;->a:Lbol;

    .line 2096
    invoke-direct {p0}, Lboj;->k()Lboq;

    move-result-object v3

    invoke-virtual {p0}, Lboj;->a()Z

    move-result v4

    invoke-virtual {p0}, Lboj;->d()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lboc;-><init>(Landroid/view/View;Lbol;Lboq;ZZ)V

    iget-object v1, p0, Lboj;->b:Lbnv$d;

    .line 3237
    iput-object v1, v0, Lbnv;->h:Lbnv$d;

    goto :goto_0

    .line 4104
    :sswitch_1
    new-instance v0, Lbnz;

    invoke-virtual {p0}, Lboj;->f()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lboj;->k()Lboq;

    move-result-object v2

    invoke-virtual {p0}, Lboj;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lbnz;-><init>(Landroid/view/View;Lboq;Z)V

    iget-object v1, p0, Lboj;->b:Lbnv$d;

    .line 4237
    iput-object v1, v0, Lbnv;->h:Lbnv$d;

    goto :goto_0

    .line 5108
    :sswitch_2
    new-instance v0, Lbog;

    invoke-virtual {p0}, Lboj;->i()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lboj;->k()Lboq;

    move-result-object v2

    invoke-virtual {p0}, Lboj;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lbog;-><init>(Landroid/view/View;Lboq;Z)V

    iget-object v1, p0, Lboj;->b:Lbnv$d;

    .line 5237
    iput-object v1, v0, Lbnv;->h:Lbnv$d;

    goto :goto_0

    .line 6100
    :sswitch_3
    new-instance v0, Lbof;

    invoke-virtual {p0}, Lboj;->j()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lboj;->k()Lboq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbof;-><init>(Landroid/view/View;Lboq;)V

    iget-object v1, p0, Lboj;->b:Lbnv$d;

    .line 6237
    iput-object v1, v0, Lbnv;->h:Lbnv$d;

    goto :goto_0

    .line 77
    :sswitch_4
    new-instance v0, Lbod;

    sget v1, Lbpu$e;->item_circle_usr_take_photo_layout:I

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lbod;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 7112
    :sswitch_5
    new-instance v0, Lboa;

    invoke-virtual {p0}, Lboj;->h()I

    move-result v1

    invoke-virtual {v6, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lboj;->k()Lboq;

    move-result-object v2

    invoke-virtual {p0}, Lboj;->a()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lboa;-><init>(Landroid/view/View;Lboq;Z)V

    iget-object v1, p0, Lboj;->b:Lbnv$d;

    .line 7237
    iput-object v1, v0, Lbnv;->h:Lbnv$d;

    goto/16 :goto_0

    .line 63
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

.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Lbnv;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {p3}, Lboj;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lboj;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lbnv;

    move-result-object v0

    return-object v0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method protected b()Lboq;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lbor;

    invoke-direct {v0}, Lbor;-><init>()V

    return-object v0
.end method

.method protected c()Lbol;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lboo;

    invoke-direct {v0}, Lboo;-><init>()V

    return-object v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lbpu$e;->item_circle_txt_layout:I

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lbpu$e;->item_circle_link_layout:I

    return v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lbpu$e;->item_circle_pic_and_txt_layout:I

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 136
    sget v0, Lbpu$e;->item_circle_misc_layout:I

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 132
    sget v0, Lbpu$e;->item_circle_annex_layout:I

    return v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lbpu$e;->item_circle_video_layout:I

    return v0
.end method
