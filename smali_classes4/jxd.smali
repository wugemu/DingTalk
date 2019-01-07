.class public final Ljxd;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Ljxd;->a:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Ljxd;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1000
    sget-boolean v2, Ljxd;->a:Z

    .line 0
    if-eqz v2, :cond_1

    sget-wide v2, Ljxd;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-wide v2, Ljxd;->b:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1

    :cond_0
    sput-wide v0, Ljxd;->b:J

    .line 2000
    invoke-static {p0}, Ljxz;->a(Landroid/content/Context;)Ljxz;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v0, v1}, Ljxz;->a(Lcom/xiaomi/mipush/sdk/d;)Ljxc;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "register cos when network change!"

    invoke-static {v1}, Ljuw;->c(Ljava/lang/String;)V

    invoke-interface {v0}, Ljxc;->a()V

    .line 0
    :cond_1
    return-void
.end method
