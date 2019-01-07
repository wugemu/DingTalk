.class final Lhrt$1;
.super Ljava/lang/Object;
.source "SoundPoolUtil.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhrt;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhrt;


# direct methods
.method constructor <init>(Lhrt;)V
    .locals 0
    .param p1, "this$0"    # Lhrt;

    .prologue
    .line 74
    iput-object p1, p0, Lhrt$1;->a:Lhrt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 11
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1037
    sget-object v0, Lhrt;->a:Lhrt;

    .line 77
    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lhrt$1;->a:Lhrt;

    .line 2037
    iget-object v0, v0, Lhrt;->d:Landroid/util/SparseArray;

    .line 82
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 83
    .local v8, "key":Ljava/lang/Integer;
    if-nez p3, :cond_1

    .line 84
    if-eqz v8, :cond_1

    .line 85
    iget-object v0, p0, Lhrt$1;->a:Lhrt;

    .line 3037
    iget-object v0, v0, Lhrt;->c:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lhrt$1;->a:Lhrt;

    .line 4037
    iget-object v0, v0, Lhrt;->b:Landroid/media/SoundPool;

    .line 86
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 89
    :cond_1
    iget-object v0, p0, Lhrt$1;->a:Lhrt;

    .line 5037
    iget-object v0, v0, Lhrt;->d:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v8    # "key":Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 91
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "lightapp"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "SoundPoolUtil onLoadComplete play failed, error="

    aput-object v3, v2, v9

    .line 92
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 91
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
