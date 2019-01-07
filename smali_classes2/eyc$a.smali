.class final Leyc$a;
.super Ljava/lang/Object;
.source "ConferenceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Leyc;


# direct methods
.method private constructor <init>(Leyc;)V
    .locals 1

    .prologue
    .line 1257
    iput-object p1, p0, Leyc$a;->d:Leyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    const/4 v0, 0x0

    iput v0, p0, Leyc$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Leyc;B)V
    .locals 0
    .param p1, "x0"    # Leyc;

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Leyc$a;-><init>(Leyc;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1271
    iget v0, p0, Leyc$a;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 2276
    iget-object v0, p0, Leyc$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leyc$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2278
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leyc$a$1;

    invoke-direct {v1, p0}, Leyc$a$1;-><init>(Leyc$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2299
    iget v1, p0, Leyc$a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leyc$a;->a:I

    .line 2300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1273
    :cond_1
    return-void
.end method
