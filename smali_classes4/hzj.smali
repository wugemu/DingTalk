.class public final Lhzj;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v1, Lhzj;->a:Z

    sput v0, Lhzj;->b:I

    sput v0, Lhzj;->c:I

    sput v1, Lhzj;->d:I

    const/4 v0, 0x2

    sput v0, Lhzj;->e:I

    const/4 v0, 0x3

    sput v0, Lhzj;->f:I

    const/4 v0, 0x4

    sput v0, Lhzj;->g:I

    const-string/jumbo v0, "LogUtil"

    sput-object v0, Lhzj;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lhzj;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lhzj;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lhzj;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lhzj;->f:I

    if-ltz v0, :cond_0

    sget-object v0, Lhzj;->h:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lhzj;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lhzj;->f:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method
