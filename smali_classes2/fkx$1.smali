.class final Lfkx$1;
.super Ljava/lang/Object;
.source "OrgMemberQrcodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfkx;


# direct methods
.method constructor <init>(Lfkx;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfkx;

    .prologue
    .line 56
    iput-object p1, p0, Lfkx$1;->b:Lfkx;

    iput-object p2, p0, Lfkx$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    :try_start_0
    iget-object v2, p0, Lfkx$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lfkx$1;->b:Lfkx;

    .line 1030
    iget-object v3, v3, Lfkx;->c:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 1102
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lfkx$1;->b:Lfkx;

    .line 2030
    iget-object v2, v2, Lfkx;->c:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OrgMemberQrcodeView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
