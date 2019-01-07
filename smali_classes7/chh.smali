.class public final Lchh;
.super Ljava/lang/Object;
.source "DingSendTimesObject.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcdj;)V
    .locals 2
    .param p1, "model"    # Lcdj;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p1, Lcdj;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 37
    iput v0, p0, Lchh;->a:I

    .line 38
    iget-object v0, p1, Lcdj;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 38
    iput v0, p0, Lchh;->b:I

    .line 39
    iget-object v0, p1, Lcdj;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 39
    iput-boolean v0, p0, Lchh;->c:Z

    .line 40
    iget-object v0, p1, Lcdj;->d:Ljava/lang/String;

    iput-object v0, p0, Lchh;->d:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcdj;->e:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 41
    iput v0, p0, Lchh;->e:I

    .line 42
    iget-object v0, p1, Lcdj;->f:Ljava/lang/Integer;

    .line 4033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 42
    iput v0, p0, Lchh;->f:I

    .line 43
    iget-object v0, p1, Lcdj;->h:Ljava/lang/Integer;

    .line 5033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 43
    iput v0, p0, Lchh;->g:I

    .line 44
    iget-object v0, p1, Lcdj;->i:Ljava/lang/Integer;

    .line 6033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 44
    iput v0, p0, Lchh;->h:I

    .line 45
    iget-object v0, p1, Lcdj;->j:Ljava/lang/Integer;

    .line 7033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 45
    iput v0, p0, Lchh;->i:I

    .line 46
    iget-object v0, p1, Lcdj;->k:Ljava/lang/Boolean;

    .line 8022
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 46
    iput-boolean v0, p0, Lchh;->j:Z

    .line 48
    :cond_0
    return-void
.end method
