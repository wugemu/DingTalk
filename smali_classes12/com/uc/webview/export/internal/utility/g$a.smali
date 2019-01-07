.class public final Lcom/uc/webview/export/internal/utility/g$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/utility/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:J

.field public static b:J

.field public static c:J

.field public static d:J

.field public static e:J

.field public static f:J

.field public static g:J

.field public static h:J

.field public static i:J

.field public static j:J

.field public static k:J

.field public static l:J

.field public static m:J

.field public static n:J

.field public static o:J

.field public static p:J

.field public static q:J

.field public static r:J


# instance fields
.field public s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x1

    .line 27
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->a:J

    const-wide/16 v0, 0x2

    .line 28
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->b:J

    const-wide/16 v0, 0x4

    .line 29
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->c:J

    const-wide/16 v0, 0x8

    .line 30
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->d:J

    const-wide/16 v0, 0x10

    .line 31
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->e:J

    const-wide/16 v0, 0x20

    .line 32
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->f:J

    const-wide/16 v0, 0x40

    .line 33
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->g:J

    const-wide/16 v0, 0x80

    .line 34
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->h:J

    const-wide/16 v0, 0x100

    .line 35
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->i:J

    const-wide/16 v0, 0x200

    .line 36
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->j:J

    const-wide/16 v0, 0x400

    .line 37
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->k:J

    const-wide/16 v0, 0x800

    .line 38
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->l:J

    const-wide/16 v0, 0x1000

    .line 39
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->m:J

    const-wide/16 v0, 0x2000

    .line 40
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->n:J

    const-wide/16 v0, 0x4000

    .line 41
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->o:J

    const-wide/32 v0, 0x8000

    .line 42
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->p:J

    const-wide/32 v0, 0x10000

    .line 43
    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->q:J

    const-wide/32 v0, 0x20000

    sput-wide v0, Lcom/uc/webview/export/internal/utility/g$a;->r:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/webview/export/internal/utility/g$a;->s:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/uc/webview/export/internal/utility/g$a;->s:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uc/webview/export/internal/utility/g$a;->s:J

    .line 57
    return-void
.end method
