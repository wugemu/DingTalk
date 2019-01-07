.class public final Leke;
.super Ljava/lang/Object;
.source "ApplicationImageDecoder.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageDecoder;


# instance fields
.field a:Lhaw;

.field b:Lhaq;

.field c:Lhan;

.field d:Lhar;

.field e:Lhar;

.field f:Lhao;

.field g:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;

.field h:Lhba;

.field i:Lhav;

.field j:Lekx;

.field k:Lhau;

.field l:Lhay;

.field m:Lhaz;

.field n:Lhax;

.field o:Lhbd;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x42f00000    # 120.0f

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhcg;->a(Landroid/content/Context;)Lhcg$c;

    move-result-object v1

    .line 55
    .local v1, "maxBoundary":Lhcg$c;
    new-instance v2, Lhcg$b;

    .line 56
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v3

    .line 57
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lhcg$b;-><init>(II)V

    .line 58
    .local v2, "s":Lhcg$b;
    new-instance v0, Lhcg$c;

    invoke-direct {v0, v2, v2}, Lhcg$c;-><init>(Lhcg$b;Lhcg$b;)V

    .line 60
    .local v0, "boundary":Lhcg$c;
    new-instance v3, Lhaw;

    invoke-direct {v3}, Lhaw;-><init>()V

    iput-object v3, p0, Leke;->a:Lhaw;

    .line 61
    new-instance v3, Lhaq;

    invoke-direct {v3}, Lhaq;-><init>()V

    iput-object v3, p0, Leke;->b:Lhaq;

    .line 62
    new-instance v3, Lhan;

    invoke-direct {v3}, Lhan;-><init>()V

    iput-object v3, p0, Leke;->c:Lhan;

    .line 63
    new-instance v3, Lhar;

    invoke-direct {v3, v1}, Lhar;-><init>(Lhcg$c;)V

    iput-object v3, p0, Leke;->d:Lhar;

    .line 64
    new-instance v3, Lhar;

    invoke-direct {v3, v0}, Lhar;-><init>(Lhcg$c;)V

    iput-object v3, p0, Leke;->e:Lhar;

    .line 65
    new-instance v3, Lhao;

    invoke-direct {v3}, Lhao;-><init>()V

    iput-object v3, p0, Leke;->f:Lhao;

    .line 66
    new-instance v3, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhcn;->b(Landroid/content/Context;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    sget-object v5, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;->Normal:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;-><init>(ILcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder$Mode;)V

    iput-object v3, p0, Leke;->g:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;

    .line 67
    new-instance v3, Lhba;

    invoke-direct {v3}, Lhba;-><init>()V

    iput-object v3, p0, Leke;->h:Lhba;

    .line 68
    new-instance v3, Lhav;

    invoke-direct {v3}, Lhav;-><init>()V

    iput-object v3, p0, Leke;->i:Lhav;

    .line 69
    new-instance v3, Lekx;

    invoke-direct {v3}, Lekx;-><init>()V

    iput-object v3, p0, Leke;->j:Lekx;

    .line 70
    new-instance v3, Lhau;

    invoke-direct {v3}, Lhau;-><init>()V

    iput-object v3, p0, Leke;->k:Lhau;

    .line 71
    new-instance v3, Lhay;

    invoke-direct {v3}, Lhay;-><init>()V

    iput-object v3, p0, Leke;->l:Lhay;

    .line 72
    new-instance v3, Lhaz;

    invoke-direct {v3}, Lhaz;-><init>()V

    iput-object v3, p0, Leke;->m:Lhaz;

    .line 73
    new-instance v3, Lhax;

    invoke-direct {v3}, Lhax;-><init>()V

    iput-object v3, p0, Leke;->n:Lhax;

    .line 74
    new-instance v3, Lhbd;

    invoke-direct {v3}, Lhbd;-><init>()V

    iput-object v3, p0, Leke;->o:Lhbd;

    .line 75
    return-void
.end method


# virtual methods
.method public final decode(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "requestInputStream"    # Lcom/alibaba/doraemon/image/ImageInputStream;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "displayMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 1101
    .local v0, "ret":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v1, 0x64

    if-lt p3, v1, :cond_0

    const/16 v1, 0x6d

    if-gt p3, v1, :cond_0

    .line 1102
    :try_start_0
    invoke-static {p1, p2}, Lhat;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 1107
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 1169
    :pswitch_0
    iget-object v1, p0, Leke;->a:Lhaw;

    invoke-virtual {v1, p1, p2}, Lhaw;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :goto_1
    move-object v0, v1

    .line 1171
    goto :goto_0

    .line 1109
    :pswitch_1
    iget-object v1, p0, Leke;->c:Lhan;

    invoke-virtual {v1, p1, p2}, Lhan;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1113
    :pswitch_2
    invoke-static {p1, p2}, Lhat;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1117
    :pswitch_3
    iget-object v1, p0, Leke;->d:Lhar;

    invoke-virtual {v1, p1, p2}, Lhar;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1121
    :pswitch_4
    iget-object v1, p0, Leke;->e:Lhar;

    invoke-virtual {v1, p1, p2}, Lhar;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1125
    :pswitch_5
    iget-object v1, p0, Leke;->f:Lhao;

    invoke-virtual {v1, p1, p2}, Lhao;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1130
    :pswitch_6
    iget-object v1, p0, Leke;->g:Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/laiwang/photokit/decoder/AlbumImageDecoder;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1134
    :pswitch_7
    iget-object v1, p0, Leke;->b:Lhaq;

    invoke-virtual {v1, p1, p2}, Lhaq;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1138
    :pswitch_8
    iget-object v1, p0, Leke;->h:Lhba;

    invoke-virtual {v1, p1, p2}, Lhba;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1142
    :pswitch_9
    iget-object v1, p0, Leke;->i:Lhav;

    invoke-virtual {v1, p1, p2}, Lhav;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1146
    :pswitch_a
    iget-object v1, p0, Leke;->k:Lhau;

    invoke-virtual {v1, p1, p2}, Lhau;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1150
    :pswitch_b
    iget-object v1, p0, Leke;->j:Lekx;

    invoke-virtual {v1, p1, p2}, Lekx;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1154
    :pswitch_c
    iget-object v1, p0, Leke;->l:Lhay;

    invoke-virtual {v1, p1, p2}, Lhay;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1158
    :pswitch_d
    iget-object v1, p0, Leke;->m:Lhaz;

    invoke-virtual {v1, p1, p2}, Lhaz;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1162
    :pswitch_e
    iget-object v1, p0, Leke;->n:Lhax;

    invoke-virtual {v1, p1, p2}, Lhax;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_1

    .line 1166
    :pswitch_f
    iget-object v1, p0, Leke;->o:Lhbd;

    invoke-virtual {v1, p1, p2}, Lhbd;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 86
    :catch_0
    move-exception v1

    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Leke$1;

    invoke-direct {v2, p0}, Leke$1;-><init>(Leke;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method
