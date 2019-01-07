.class public final Lcth;
.super Ljava/lang/Object;
.source "WheelViewStyle.java"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean v1, p0, Lcth;->a:Z

    .line 7
    const/4 v0, 0x3

    iput v0, p0, Lcth;->b:I

    .line 8
    sget v0, Lctg;->a:I

    iput v0, p0, Lcth;->c:I

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcth;->d:I

    .line 12
    iput v2, p0, Lcth;->e:I

    .line 13
    sget v0, Lctg;->b:I

    iput v0, p0, Lcth;->f:I

    .line 14
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcth;->g:F

    .line 16
    iput v2, p0, Lcth;->h:I

    .line 17
    sget v0, Lctg;->b:I

    iput v0, p0, Lcth;->i:I

    .line 20
    iput v2, p0, Lcth;->k:I

    .line 21
    sget v0, Lctg;->b:I

    iput v0, p0, Lcth;->l:I

    .line 22
    sget v0, Lctg;->c:I

    iput v0, p0, Lcth;->m:I

    .line 23
    iput-boolean v1, p0, Lcth;->n:Z

    .line 24
    iput-boolean v1, p0, Lcth;->o:Z

    .line 26
    iput-boolean v1, p0, Lcth;->p:Z

    .line 27
    iput v1, p0, Lcth;->q:I

    .line 28
    iput v1, p0, Lcth;->r:I

    .line 29
    sget v0, Lctg;->d:I

    iput v0, p0, Lcth;->s:I

    .line 30
    sget v0, Lctg;->e:I

    iput v0, p0, Lcth;->t:I

    .line 32
    iput-boolean v1, p0, Lcth;->u:Z

    .line 33
    sget v0, Lctg;->f:I

    iput v0, p0, Lcth;->v:I

    .line 34
    sget v0, Lctg;->g:I

    iput v0, p0, Lcth;->w:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Lcth;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    new-instance v0, Lcth;

    invoke-direct {v0}, Lcth;-><init>()V

    .line 41
    .local v0, "wheelViewStyle":Lcth;
    iget-boolean v1, p0, Lcth;->a:Z

    iput-boolean v1, v0, Lcth;->a:Z

    .line 42
    iget v1, p0, Lcth;->b:I

    iput v1, v0, Lcth;->b:I

    .line 43
    iget v1, p0, Lcth;->c:I

    iput v1, v0, Lcth;->c:I

    .line 44
    iget v1, p0, Lcth;->d:I

    iput v1, v0, Lcth;->d:I

    .line 45
    iget v1, p0, Lcth;->e:I

    iput v1, v0, Lcth;->e:I

    .line 46
    iget v1, p0, Lcth;->f:I

    iput v1, v0, Lcth;->f:I

    .line 47
    iget v1, p0, Lcth;->g:F

    iput v1, v0, Lcth;->g:F

    .line 48
    iget v1, p0, Lcth;->h:I

    iput v1, v0, Lcth;->h:I

    .line 49
    iget v1, p0, Lcth;->i:I

    iput v1, v0, Lcth;->i:I

    .line 50
    iget-object v1, p0, Lcth;->j:Ljava/lang/String;

    iput-object v1, v0, Lcth;->j:Ljava/lang/String;

    .line 51
    iget v1, p0, Lcth;->k:I

    iput v1, v0, Lcth;->k:I

    .line 52
    iget v1, p0, Lcth;->l:I

    iput v1, v0, Lcth;->l:I

    .line 53
    iget v1, p0, Lcth;->m:I

    iput v1, v0, Lcth;->m:I

    .line 54
    iget-boolean v1, p0, Lcth;->o:Z

    iput-boolean v1, v0, Lcth;->o:Z

    .line 55
    iget-boolean v1, p0, Lcth;->p:Z

    iput-boolean v1, v0, Lcth;->p:Z

    .line 56
    iget v1, p0, Lcth;->q:I

    iput v1, v0, Lcth;->q:I

    .line 57
    iget v1, p0, Lcth;->r:I

    iput v1, v0, Lcth;->r:I

    .line 58
    iget v1, p0, Lcth;->s:I

    iput v1, v0, Lcth;->s:I

    .line 59
    iget v1, p0, Lcth;->t:I

    iput v1, v0, Lcth;->t:I

    .line 60
    iget-boolean v1, p0, Lcth;->u:Z

    iput-boolean v1, v0, Lcth;->u:Z

    .line 61
    iget v1, p0, Lcth;->v:I

    iput v1, v0, Lcth;->v:I

    .line 62
    iget v1, p0, Lcth;->w:I

    iput v1, v0, Lcth;->w:I

    .line 63
    return-object v0
.end method
