.class public final Lgpa;
.super Ljava/lang/Object;
.source "SpaceTaskParam.java"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lgpa;->b:I

    .line 30
    iput-boolean v2, p0, Lgpa;->c:Z

    .line 32
    iput-boolean v2, p0, Lgpa;->d:Z

    .line 34
    iput-boolean v1, p0, Lgpa;->e:Z

    .line 36
    iput v1, p0, Lgpa;->f:I

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lgpa;->g:I

    .line 40
    iput-boolean v2, p0, Lgpa;->h:Z

    .line 46
    iput-boolean v1, p0, Lgpa;->k:Z

    return-void
.end method
