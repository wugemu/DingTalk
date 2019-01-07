.class final Livh$c;
.super Ljava/lang/Object;
.source "ImageListUber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Livh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:J

.field c:Livd;

.field private d:I

.field private final e:Live;


# direct methods
.method public constructor <init>(Live;I)V
    .locals 1
    .param p1, "list"    # Live;
    .param p2, "index"    # I

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Livh$c;->d:I

    .line 278
    iput-object p1, p0, Livh$c;->e:Live;

    .line 279
    iput p2, p0, Livh$c;->a:I

    .line 280
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 283
    iget v0, p0, Livh$c;->d:I

    iget-object v1, p0, Livh$c;->e:Live;

    invoke-interface {v1}, Live;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 284
    :cond_0
    iget-object v0, p0, Livh$c;->e:Live;

    iget v1, p0, Livh$c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Livh$c;->d:I

    invoke-interface {v0, v1}, Live;->a(I)Livd;

    move-result-object v0

    iput-object v0, p0, Livh$c;->c:Livd;

    .line 285
    iget-object v0, p0, Livh$c;->c:Livd;

    invoke-interface {v0}, Livd;->b()J

    move-result-wide v0

    iput-wide v0, p0, Livh$c;->b:J

    .line 286
    const/4 v0, 0x1

    goto :goto_0
.end method
