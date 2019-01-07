.class public final Ljkv;
.super Ljks$a;
.source "RecorderTimeline.java"

# interfaces
.implements Ljkt$a;
.implements Ljkt$b;


# instance fields
.field public final a:Landroid/view/View;

.field public b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/LinearLayout;

.field private final e:Landroid/view/View;

.field private final f:Ljku;

.field private g:Ljkt;

.field private final h:[I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljkt;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "mClipManager"    # Ljkt;

    .prologue
    .line 25
    invoke-direct {p0}, Ljks$a;-><init>()V

    .line 19
    new-instance v0, Ljku;

    invoke-direct {v0}, Ljku;-><init>()V

    iput-object v0, p0, Ljkv;->f:Ljku;

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljkv;->h:[I

    .line 26
    iput-object p1, p0, Ljkv;->a:Landroid/view/View;

    .line 27
    iget-object v0, p0, Ljkv;->a:Landroid/view/View;

    sget v1, Ljou$c;->clip_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljkv;->c:Landroid/view/View;

    .line 28
    iget-object v0, p0, Ljkv;->a:Landroid/view/View;

    sget v1, Ljou$c;->timeline_underlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ljkv;->d:Landroid/widget/LinearLayout;

    .line 29
    iget-object v0, p0, Ljkv;->a:Landroid/view/View;

    sget v1, Ljou$c;->min_capture_duration_spacer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljkv;->e:Landroid/view/View;

    .line 31
    iget-object v0, p0, Ljkv;->f:Ljku;

    .line 1017
    iput-object p0, v0, Ljku;->a:Ljks;

    .line 33
    iget-object v0, p0, Ljkv;->c:Landroid/view/View;

    iget-object v1, p0, Ljkv;->f:Ljku;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ljou$b;->taorecorder_timeline_clip_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ljkv;->b:Landroid/graphics/drawable/Drawable;

    .line 1041
    iput-object p2, p0, Ljkv;->g:Ljkt;

    .line 1042
    iget-object v0, p0, Ljkv;->g:Ljkt;

    .line 2038
    iget-object v0, v0, Ljkt;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    iget-object v0, p0, Ljkv;->g:Ljkt;

    invoke-virtual {v0, p0}, Ljkt;->a(Ljkt$a;)V

    .line 1045
    iget-object v0, p0, Ljkv;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1046
    iget-object v1, p0, Ljkv;->g:Ljkt;

    .line 2102
    iget v1, v1, Ljkt;->e:I

    .line 1046
    int-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1047
    iget-object v1, p0, Ljkv;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    iget-object v0, p0, Ljkv;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ljkv;->g:Ljkt;

    .line 3092
    iget v1, v1, Ljkt;->d:I

    int-to-float v1, v1

    .line 1048
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 4072
    iget-object v0, p0, Ljkv;->f:Ljku;

    invoke-virtual {v0}, Ljku;->invalidateSelf()V

    .line 38
    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 143
    invoke-super {p0, p1}, Ljks$a;->a(I)F

    move-result v0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    iget-object v0, p0, Ljkv;->g:Ljkt;

    .line 8092
    iget v0, v0, Ljkt;->d:I

    int-to-float v0, v0

    .line 141
    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(II)F
    .locals 4
    .param p1, "id"    # I
    .param p2, "key"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    iget-object v1, p0, Ljkv;->g:Ljkt;

    invoke-virtual {v1, p1}, Ljkt;->a(I)Lcom/taobao/av/ui/view/recordline/VideoBean;

    move-result-object v0

    .line 100
    .local v0, "item":Lcom/taobao/av/ui/view/recordline/VideoBean;
    packed-switch p2, :pswitch_data_0

    .line 104
    invoke-super {p0, p1, p2}, Ljks$a;->a(II)F

    move-result v1

    :goto_0
    return v1

    .line 102
    :pswitch_0
    iget-wide v2, v0, Lcom/taobao/av/ui/view/recordline/VideoBean;->b:J

    long-to-float v1, v2

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 88
    .line 6072
    iget-object v0, p0, Ljkv;->f:Ljku;

    invoke-virtual {v0}, Ljku;->invalidateSelf()V

    .line 89
    return-void
.end method

.method public final a(Lcom/taobao/av/ui/view/recordline/VideoBean;)V
    .locals 1
    .param p1, "vb"    # Lcom/taobao/av/ui/view/recordline/VideoBean;

    .prologue
    .line 93
    .line 7072
    iget-object v0, p0, Ljkv;->f:Ljku;

    invoke-virtual {v0}, Ljku;->invalidateSelf()V

    .line 94
    return-void
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 149
    iget-object v1, p0, Ljkv;->g:Ljkt;

    .line 8156
    iget-object v0, v1, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v1, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    return v0

    .line 8156
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    iget-object v1, p0, Ljkv;->g:Ljkt;

    invoke-virtual {v1, p1}, Ljkt;->a(I)Lcom/taobao/av/ui/view/recordline/VideoBean;

    move-result-object v0

    .line 115
    .local v0, "vb":Lcom/taobao/av/ui/view/recordline/VideoBean;
    sget-object v1, Ljkv$1;->a:[I

    .line 8020
    iget-object v2, v0, Lcom/taobao/av/ui/view/recordline/VideoBean;->c:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 115
    invoke-virtual {v2}, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_0
    iget-object v1, p0, Ljkv;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 131
    iget-object v1, p0, Ljkv;->b:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Ljkv;->h:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 132
    iget-object v1, p0, Ljkv;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 134
    iget-object v1, p0, Ljkv;->b:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 117
    :pswitch_0
    iget-object v1, p0, Ljkv;->h:[I

    aput v3, v1, v3

    .line 118
    iget-object v1, p0, Ljkv;->h:[I

    aput v3, v1, v4

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v1, p0, Ljkv;->h:[I

    const v2, 0x10100a0

    aput v2, v1, v3

    .line 122
    iget-object v1, p0, Ljkv;->h:[I

    const v2, 0x10100a1

    aput v2, v1, v4

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v1, p0, Ljkv;->h:[I

    const v2, 0x101009e

    aput v2, v1, v3

    .line 126
    iget-object v1, p0, Ljkv;->h:[I

    aput v3, v1, v4

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 78
    .line 5072
    iget-object v0, p0, Ljkv;->f:Ljku;

    invoke-virtual {v0}, Ljku;->invalidateSelf()V

    .line 79
    return-void
.end method
