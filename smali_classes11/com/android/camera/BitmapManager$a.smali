.class final Lcom/android/camera/BitmapManager$a;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/android/camera/BitmapManager$State;

.field public b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/camera/BitmapManager$State;->ALLOW:Lcom/android/camera/BitmapManager$State;

    iput-object v0, p0, Lcom/android/camera/BitmapManager$a;->a:Lcom/android/camera/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/BitmapManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/camera/BitmapManager$a;->a:Lcom/android/camera/BitmapManager$State;

    sget-object v2, Lcom/android/camera/BitmapManager$State;->CANCEL:Lcom/android/camera/BitmapManager$State;

    if-ne v1, v2, :cond_0

    .line 49
    const-string/jumbo v0, "Cancel"

    .line 55
    .local v0, "s":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "thread state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BitmapManager$a;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0

    .line 50
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BitmapManager$a;->a:Lcom/android/camera/BitmapManager$State;

    sget-object v2, Lcom/android/camera/BitmapManager$State;->ALLOW:Lcom/android/camera/BitmapManager$State;

    if-ne v1, v2, :cond_1

    .line 51
    const-string/jumbo v0, "Allow"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "?"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0
.end method
