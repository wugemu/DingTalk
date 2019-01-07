.class public final Lfsu;
.super Ljava/lang/Object;
.source "NameCardOrgsItemBean.java"

# interfaces
.implements Lfsi;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lftb$c;

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lfsu;->e:Z

    .line 18
    iput-boolean v1, p0, Lfsu;->f:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfsu;->g:Z

    .line 20
    iput-boolean v1, p0, Lfsu;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lfsh;)I
    .locals 1
    .param p1, "typeFactory"    # Lfsh;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    const/16 v0, 0x12

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
