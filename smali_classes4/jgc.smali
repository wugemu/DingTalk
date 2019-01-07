.class public abstract Ljgc;
.super Lcom/serenegiant/utils/MessageTask;
.source "EglTask.java"


# static fields
.field public static final EGL_FLAG_DEPTH_BUFFER:I = 0x1

.field public static final EGL_FLAG_RECORDABLE:I = 0x2

.field public static final EGL_FLAG_STENCIL_1BIT:I = 0x4

.field public static final EGL_FLAG_STENCIL_8BIT:I = 0x20


# instance fields
.field private mEgl:Ljfz;

.field private mEglHolder:Ljfz$c;


# direct methods
.method public constructor <init>(ILjfz$b;I)V
    .locals 1
    .param p1, "maxClientVersion"    # I
    .param p2, "sharedContext"    # Ljfz$b;
    .param p3, "flags"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/serenegiant/utils/MessageTask;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Ljgc;->mEgl:Ljfz;

    .line 44
    invoke-virtual {p0, p3, p1, p2}, Ljgc;->init(IILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljfz$b;I)V
    .locals 1
    .param p1, "sharedContext"    # Ljfz$b;
    .param p2, "flags"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/serenegiant/utils/MessageTask;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Ljgc;->mEgl:Ljfz;

    .line 39
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0, p1}, Ljgc;->init(IILjava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getConfig()Ljfz$a;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ljgc;->mEgl:Ljfz;

    invoke-virtual {v0}, Ljfz;->d()Ljfz$a;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Ljfz$b;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ljgc;->mEgl:Ljfz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljgc;->mEgl:Ljfz;

    invoke-virtual {v0}, Ljfz;->c()Ljfz$b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getEGLContext()Ljfz$b;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ljgc;->mEgl:Ljfz;

    invoke-virtual {v0}, Ljfz;->c()Ljfz$b;

    move-result-object v0

    return-object v0
.end method

.method protected getEgl()Ljfz;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ljgc;->mEgl:Ljfz;

    return-object v0
.end method

.method protected isGLES3()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Ljgc;->mEgl:Ljfz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljgc;->mEgl:Ljfz;

    invoke-virtual {v0}, Ljfz;->b()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeCurrent()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ljgc;->mEglHolder:Ljfz$c;

    invoke-interface {v0}, Ljfz$c;->a()V

    .line 108
    return-void
.end method

.method protected onBeforeStop()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljgc;->mEglHolder:Ljfz$c;

    invoke-interface {v0}, Ljfz$c;->a()V

    .line 82
    return-void
.end method

.method protected onInit(IILjava/lang/Object;)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "maxClientVersion"    # I
    .param p3, "sharedContext"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    if-eqz p3, :cond_0

    instance-of v3, p3, Ljfz$b;

    if-eqz v3, :cond_2

    .line 55
    :cond_0
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 58
    .local v0, "stencilBits":I
    :goto_0
    check-cast p3, Ljfz$b;

    .end local p3    # "sharedContext":Ljava/lang/Object;
    and-int/lit8 v3, p1, 0x1

    if-ne v3, v1, :cond_5

    move v3, v1

    :goto_1
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v2, v1

    :cond_1
    invoke-static {p2, p3, v3, v0, v2}, Ljfz;->a(ILjfz$b;ZIZ)Ljfz;

    move-result-object v2

    iput-object v2, p0, Ljgc;->mEgl:Ljfz;

    .line 63
    .end local v0    # "stencilBits":I
    :cond_2
    iget-object v2, p0, Ljgc;->mEgl:Ljfz;

    if-nez v2, :cond_6

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "failed to create EglCore"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljgc;->callOnError(Ljava/lang/Exception;)Z

    .line 65
    invoke-virtual {p0}, Ljgc;->releaseSelf()V

    .line 70
    :goto_2
    return-void

    .line 55
    .restart local p3    # "sharedContext":Ljava/lang/Object;
    :cond_3
    and-int/lit8 v3, p1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .end local p3    # "sharedContext":Ljava/lang/Object;
    .restart local v0    # "stencilBits":I
    :cond_5
    move v3, v2

    .line 58
    goto :goto_1

    .line 67
    .end local v0    # "stencilBits":I
    :cond_6
    iget-object v2, p0, Ljgc;->mEgl:Ljfz;

    invoke-virtual {v2, v1, v1}, Ljfz;->a(II)Ljfz$c;

    move-result-object v1

    iput-object v1, p0, Ljgc;->mEglHolder:Ljfz$c;

    .line 68
    iget-object v1, p0, Ljgc;->mEglHolder:Ljfz$c;

    invoke-interface {v1}, Ljfz$c;->a()V

    goto :goto_2
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljgc;->mEglHolder:Ljfz$c;

    invoke-interface {v0}, Ljfz$c;->c()V

    .line 87
    iget-object v0, p0, Ljgc;->mEgl:Ljfz;

    invoke-virtual {v0}, Ljfz;->a()V

    .line 88
    return-void
.end method

.method protected takeRequest()Lcom/serenegiant/utils/MessageTask$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    invoke-super {p0}, Lcom/serenegiant/utils/MessageTask;->takeRequest()Lcom/serenegiant/utils/MessageTask$a;

    move-result-object v0

    .line 75
    .local v0, "result":Lcom/serenegiant/utils/MessageTask$a;
    iget-object v1, p0, Ljgc;->mEglHolder:Ljfz$c;

    invoke-interface {v1}, Ljfz$c;->a()V

    .line 76
    return-object v0
.end method
