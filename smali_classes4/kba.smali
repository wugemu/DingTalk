.class public final Lkba;
.super Ljava/lang/Object;


# static fields
.field public static e:I


# instance fields
.field public a:Lcom/xiaomi/push/service/XMPushService;

.field public b:I

.field public c:J

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x493e0

    sput v0, Lkba;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkba;->d:I

    iput-object p1, p0, Lkba;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x1f4

    iput v0, p0, Lkba;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkba;->c:J

    return-void
.end method
