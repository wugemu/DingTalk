.class final Lftg$2;
.super Ljava/lang/Object;
.source "NameCardSharePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lftg;->a(Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lftg;


# direct methods
.method constructor <init>(Lftg;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lftg;

    .prologue
    .line 60
    iput-object p1, p0, Lftg$2;->e:Lftg;

    iput-object p2, p0, Lftg$2;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lftg$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lftg$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lftg$2;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 63
    iget-object v5, p0, Lftg$2;->e:Lftg;

    .line 1035
    iget-object v5, v5, Lftg;->a:Lfta$a;

    .line 63
    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Lftg$2;->e:Lftg;

    .line 2035
    iget-object v5, v5, Lftg;->a:Lfta$a;

    .line 64
    check-cast v5, Landroid/app/Activity;

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v4, Lcom/laiwang/protocol/media/MediaId;

    sget-object v5, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v4, v5}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 70
    .local v4, "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 73
    :try_start_0
    iget-object v5, p0, Lftg$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 74
    .local v3, "size":I
    const/4 v0, 0x0

    .line 75
    .local v0, "colorInt":Ljava/lang/Integer;
    iget-object v5, p0, Lftg$2;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    iget-object v5, p0, Lftg$2;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    :cond_1
    iget-object v5, p0, Lftg$2;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v3, v0, v6}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 79
    .local v2, "mQrcodeBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lftg$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    iget-object v5, p0, Lftg$2;->d:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "colorInt":Ljava/lang/Integer;
    .end local v2    # "mQrcodeBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "user"

    const-string/jumbo v6, "NameCardSharePresenter"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "MyQRCodePersonalFragment initQrCode error : "

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lftg$2;->d:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
