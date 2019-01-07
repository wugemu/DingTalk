.class public Lcom/xiaomi/mipush/sdk/q;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/xiaomi/metoknlp/geofencing/a;

.field public b:Landroid/content/Context;

.field private final c:I

.field private final d:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/q;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mipush/sdk/q;->d:D

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    .line 1000
    new-instance v0, Lcom/xiaomi/metoknlp/geofencing/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/q;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/metoknlp/geofencing/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/q;->a:Lcom/xiaomi/metoknlp/geofencing/a;

    .line 0
    return-void
.end method
