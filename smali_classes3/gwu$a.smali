.class final Lgwu$a;
.super Landroid/os/Handler;
.source "ARServiceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgwu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lgwu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgwu;)V
    .locals 1
    .param p1, "parent"    # Lgwu;

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgwu$a;->a:Ljava/lang/ref/WeakReference;

    .line 129
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 133
    iget-object v1, p0, Lgwu$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgwu;

    .line 134
    .local v0, "parent":Lgwu;
    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_3

    .line 139
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1018
    iput v1, v0, Lgwu;->c:F

    .line 4018
    :cond_2
    :goto_1
    iget v1, v0, Lgwu;->c:F

    .line 147
    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 5018
    iget-boolean v1, v0, Lgwu;->a:Z

    .line 147
    if-eqz v1, :cond_0

    .line 5045
    iget-boolean v1, v0, Lgwu;->d:Z

    .line 147
    if-nez v1, :cond_0

    .line 6108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CreateArService fov = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lgwu;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mParContent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lgwu;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",cachePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lgwu;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fov="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lgwu;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 6111
    iget-object v1, v0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    const/4 v2, 0x0

    iget v3, v0, Lgwu;->c:F

    iget-object v4, v0, Lgwu;->b:Ljava/lang/String;

    iget-object v5, v0, Lgwu;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->CreateService(IFLjava/lang/String;Ljava/lang/String;)I

    .line 6120
    iget-object v1, v0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->StartService()I

    .line 6121
    iput-boolean v6, v0, Lgwu;->d:Z

    goto :goto_0

    .line 141
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2018
    iput-boolean v6, v0, Lgwu;->a:Z

    .line 143
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3018
    iput-object v1, v0, Lgwu;->b:Ljava/lang/String;

    goto :goto_1
.end method
