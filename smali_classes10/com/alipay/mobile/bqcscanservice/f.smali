.class public interface abstract Lcom/alipay/mobile/bqcscanservice/f;
.super Ljava/lang/Object;
.source "MPaasScanService.java"


# static fields
.field public static final a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/alipay/mobile/bqcscanservice/f;->a:Ljava/lang/Class;

    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alipay/mobile/bqcscanservice/a;)V
.end method

.method public abstract a(Landroid/graphics/Rect;)V
.end method

.method public abstract a(Landroid/view/TextureView;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Class;Lcom/alipay/mobile/bqcscanservice/b$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/bqcscanservice/b;",
            ">;",
            "Lcom/alipay/mobile/bqcscanservice/b$a;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)Z
.end method

.method public abstract b()V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c()Z
.end method

.method public abstract d()Landroid/hardware/Camera;
.end method

.method public abstract e()V
.end method

.method public abstract f()Lcom/alipay/mobile/bqcscanservice/d;
.end method

.method public abstract g()V
.end method
