.class public final Lhfx;
.super Ljava/lang/Object;
.source "CoreConfig.java"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v3, :cond_1

    sget-boolean v0, Lcic;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lhfx;->a:Z

    .line 22
    sget-boolean v0, Lcic;->g:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lhfx;->b:Z

    .line 24
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lhfx;->c:Z

    .line 28
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v3, :cond_0

    sget-boolean v0, Lcic;->f:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_3
    sput-boolean v0, Lhfx;->d:Z

    .line 31
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "Lk3JfxOxg8/vGcUO0s3KQQ5BlYo1fv9srJaOPqnR7Wzz6NAbEzHPri5Cpu4FikroH3CIGArmuWma\nRiv8yfPSrA==\n"

    aput-object v1, v0, v2

    sput-object v0, Lhfx;->e:[Ljava/lang/String;

    return-void

    :cond_1
    move v0, v2

    .line 17
    goto :goto_0

    :cond_2
    move v0, v2

    .line 22
    goto :goto_1

    :cond_3
    move v0, v2

    .line 24
    goto :goto_2

    :cond_4
    move v0, v2

    .line 28
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
