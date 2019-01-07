.class public final Lzp$c;
.super Ljava/util/TimerTask;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lzp;


# direct methods
.method private constructor <init>(Lzp;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lzp$c;->a:Lzp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lzp;B)V
    .locals 0
    .param p1, "x0"    # Lzp;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lzp$c;-><init>(Lzp;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lzp$c;->a:Lzp;

    .line 1037
    iget v1, v0, Lzp;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lzp;->j:I

    .line 83
    iget-object v0, p0, Lzp$c;->a:Lzp;

    .line 2037
    iget-object v0, v0, Lzp;->g:Lzp$a;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lzp$c;->a:Lzp;

    .line 3037
    iget-object v0, v0, Lzp;->g:Lzp$a;

    .line 84
    iget-object v1, p0, Lzp$c;->a:Lzp;

    .line 4037
    iget v1, v1, Lzp;->j:I

    .line 84
    invoke-interface {v0, v1}, Lzp$a;->a(I)V

    .line 86
    :cond_0
    return-void
.end method
