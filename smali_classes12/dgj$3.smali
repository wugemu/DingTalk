.class final Ldgj$3;
.super Ljava/lang/Object;
.source "ChatListDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgj;->a(Landroid/widget/ScrollView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ldgj;


# direct methods
.method constructor <init>(Ldgj;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Ldgj;

    .prologue
    .line 162
    iput-object p1, p0, Ldgj$3;->b:Ldgj;

    iput-object p2, p0, Ldgj$3;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v2, p0, Ldgj$3;->b:Ldgj;

    .line 1050
    iget-object v2, v2, Ldgj;->e:Ljava/lang/String;

    .line 165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldgj$3;->b:Ldgj;

    .line 2050
    iget-object v3, v3, Ldgj;->e:Ljava/lang/String;

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Ldgj$3;->a:Landroid/graphics/Bitmap;

    invoke-static {v2, v0}, Ldgk;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "fileUrl":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Ldgj$3$1;

    invoke-direct {v3, p0, v1, v0}, Ldgj$3$1;-><init>(Ldgj$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void

    .line 2134
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileUrl":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd_HH-mm-ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
