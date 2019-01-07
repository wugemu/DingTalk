.class public final Lfsv;
.super Ljava/lang/Object;
.source "NameCardOrgsSuggestItemBean.java"

# interfaces
.implements Lfsi;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Lftb$d;

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfsv;->f:Z

    .line 22
    iput-boolean v1, p0, Lfsv;->g:Z

    .line 23
    iput-boolean v1, p0, Lfsv;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lfsh;)I
    .locals 1
    .param p1, "typeFactory"    # Lfsh;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    const/16 v0, 0x15

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
