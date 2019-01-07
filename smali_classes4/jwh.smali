.class public final Ljwh;
.super Ljava/lang/Object;


# static fields
.field private static g:Ljwh;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field c:Landroid/os/HandlerThread;

.field d:Ljwx;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljwh;
    .locals 1

    sget-object v0, Ljwh;->g:Ljwh;

    if-nez v0, :cond_0

    new-instance v0, Ljwh;

    invoke-direct {v0}, Ljwh;-><init>()V

    sput-object v0, Ljwh;->g:Ljwh;

    :cond_0
    sget-object v0, Ljwh;->g:Ljwh;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljwh;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljwh;->b:Landroid/os/Handler;

    new-instance v1, Ljwv;

    invoke-direct {v1, p0}, Ljwv;-><init>(Ljwh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
