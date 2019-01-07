.class final Ldpt$10;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpt;->a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

.field final synthetic b:Ldpt;


# direct methods
.method constructor <init>(Ldpt;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V
    .locals 0
    .param p1, "this$0"    # Ldpt;

    .prologue
    .line 391
    iput-object p1, p0, Ldpt$10;->b:Ldpt;

    iput-object p2, p0, Ldpt$10;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 394
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v0

    invoke-virtual {v0}, Ldhe;->b()Ldhg;

    move-result-object v0

    iget-object v1, p0, Ldpt$10;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-interface {v0, v1}, Ldhg;->a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)Z

    .line 395
    return-void
.end method
