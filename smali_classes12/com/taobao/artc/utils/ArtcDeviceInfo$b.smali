.class final Lcom/taobao/artc/utils/ArtcDeviceInfo$b;
.super Ljava/lang/Thread;
.source "ArtcDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/utils/ArtcDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/utils/ArtcDeviceInfo;


# direct methods
.method private constructor <init>(Lcom/taobao/artc/utils/ArtcDeviceInfo;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo$b;->a:Lcom/taobao/artc/utils/ArtcDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/artc/utils/ArtcDeviceInfo;B)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/artc/utils/ArtcDeviceInfo;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/taobao/artc/utils/ArtcDeviceInfo$b;-><init>(Lcom/taobao/artc/utils/ArtcDeviceInfo;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo$b;->a:Lcom/taobao/artc/utils/ArtcDeviceInfo;

    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->access$100(Lcom/taobao/artc/utils/ArtcDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo$b;->a:Lcom/taobao/artc/utils/ArtcDeviceInfo;

    invoke-virtual {v0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->readUsage()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->cpu_usage:I

    .line 135
    iget-object v0, p0, Lcom/taobao/artc/utils/ArtcDeviceInfo$b;->a:Lcom/taobao/artc/utils/ArtcDeviceInfo;

    invoke-virtual {v0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->getUsedMemorySize()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    sput v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->memory_in_mb:I

    .line 138
    sget v0, Lcom/taobao/artc/utils/ArtcDeviceInfo;->cpu_usage:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_1

    .line 139
    invoke-static {}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->access$208()I

    .line 140
    invoke-static {}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->access$200()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 142
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->access$300(Z)V

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->access$202(I)I

    goto :goto_0

    .line 149
    :cond_2
    return-void
.end method
