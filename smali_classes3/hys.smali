.class public final Lhys;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:F

.field public static d:F

.field public static e:I

.field public static f:F

.field public static g:F

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:F

.field public static n:F

.field public static o:F

.field public static p:I

.field public static q:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    const v1, 0x3dcccccd    # 0.1f

    sput-boolean v0, Lhys;->a:Z

    sput-boolean v0, Lhys;->b:Z

    const v0, 0x3f8ccccd    # 1.1f

    sput v0, Lhys;->c:F

    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lhys;->d:F

    const/4 v0, 0x5

    sput v0, Lhys;->e:I

    sput v1, Lhys;->f:F

    sput v1, Lhys;->g:F

    const/4 v0, 0x4

    sput v0, Lhys;->h:I

    const/4 v0, 0x1

    sput v0, Lhys;->i:I

    const/16 v0, 0x1e

    sput v0, Lhys;->j:I

    const/16 v0, 0x64

    sput v0, Lhys;->k:I

    const/16 v0, 0x19

    sput v0, Lhys;->l:I

    sput v2, Lhys;->m:F

    sput v2, Lhys;->n:F

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lhys;->o:F

    const/16 v0, 0x50

    sput v0, Lhys;->p:I

    const/16 v0, 0x3a98

    sput v0, Lhys;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
