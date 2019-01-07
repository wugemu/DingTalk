.class public final Lhul;
.super Ljava/lang/Object;
.source "SendService.java"


# static fields
.field static final k:Lhul;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/String;

.field private l:Lhuk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lhul;

    invoke-direct {v0}, Lhul;-><init>()V

    sput-object v0, Lhul;->k:Lhul;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lhul;->a:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lhul;->b:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lhul;->c:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lhul;->d:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lhul;->e:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lhul;->f:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lhul;->g:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lhul;->h:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lhul;->i:Ljava/lang/Boolean;

    .line 70
    iput-object v1, p0, Lhul;->j:Ljava/lang/String;

    .line 76
    new-instance v0, Lhuk;

    invoke-direct {v0}, Lhuk;-><init>()V

    iput-object v0, p0, Lhul;->l:Lhuk;

    .line 237
    return-void
.end method

.method public static a()Lhul;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lhul;->k:Lhul;

    return-object v0
.end method
