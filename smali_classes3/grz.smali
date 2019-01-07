.class public Lgrz;
.super Ljava/lang/Object;
.source "FaceDetectorUseSafe.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Lgso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lgrz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgrz;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgso$a;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgso$a;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Lgso$a;)Lgso;

    move-result-object v0

    iput-object v0, p0, Lgrz;->b:Lgso;

    .line 36
    iget-object v0, p0, Lgrz;->b:Lgso;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgso;->a(Landroid/content/Context;)V

    .line 37
    iget-object v0, p0, Lgrz;->b:Lgso;

    invoke-virtual {v0, v2}, Lgso;->a(Ljava/lang/Float;)V

    .line 38
    iget-object v0, p0, Lgrz;->b:Lgso;

    invoke-virtual {v0, v2}, Lgso;->b(Ljava/lang/Float;)V

    .line 39
    iget-object v0, p0, Lgrz;->b:Lgso;

    invoke-virtual {v0, v2}, Lgso;->a(Landroid/graphics/RectF;)V

    .line 40
    iget-object v0, p0, Lgrz;->b:Lgso;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgso;->a(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public final a([BLandroid/hardware/Camera;ZI)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "isFront"    # Z
    .param p4, "angle"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lgrz;->b:Lgso;

    if-eqz v0, :cond_1

    .line 47
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 48
    .local v8, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lgsd;->a()Lgsd;

    move-result-object v0

    invoke-virtual {v0}, Lgsd;->e()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 49
    .local v9, "previewsize":Landroid/hardware/Camera$Size;
    if-nez v9, :cond_0

    .line 50
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 52
    :cond_0
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v5

    .line 53
    .local v5, "format":I
    iget-object v0, p0, Lgrz;->b:Lgso;

    iget v2, v9, Landroid/hardware/Camera$Size;->width:I

    iget v3, v9, Landroid/hardware/Camera$Size;->height:I

    move-object v1, p1

    move v4, p4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lgso;->a([BIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v5    # "format":I
    .end local v8    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v9    # "previewsize":Landroid/hardware/Camera$Size;
    :cond_1
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v7

    .line 55
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "facebox"

    sget-object v1, Lgrz;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "face detect track err "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
