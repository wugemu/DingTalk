.class public final Lxt;
.super Ljava/lang/Object;
.source "LogConfig.java"


# instance fields
.field public a:Lyk;

.field public b:Z

.field public c:Z

.field public d:Lym;

.field public e:Lyi;

.field public f:Lyl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lxt;->a:Lyk;

    .line 21
    iput-boolean v1, p0, Lxt;->b:Z

    .line 22
    iput-boolean v1, p0, Lxt;->c:Z

    .line 23
    iput-object v0, p0, Lxt;->d:Lym;

    .line 25
    iput-object v0, p0, Lxt;->e:Lyi;

    .line 27
    iput-object v0, p0, Lxt;->f:Lyl;

    .line 30
    return-void
.end method
