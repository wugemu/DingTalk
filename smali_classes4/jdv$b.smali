.class final Ljdv$b;
.super Landroid/os/HandlerThread;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljdv;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljdv;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljdv$b;->a:Ljdv;

    iput-object p2, p0, Ljdv$b;->a:Ljdv;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljdv$b;->a:Ljdv;

    iget-object v0, v0, Ljdv;->j:Lcom/loc/h;

    invoke-virtual {v0}, Lcom/loc/h;->a()V

    iget-object v0, p0, Ljdv$b;->a:Ljdv;

    invoke-static {v0}, Ljdv;->c(Ljdv;)V

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
