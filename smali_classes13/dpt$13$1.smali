.class final Ldpt$13$1;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ldqh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpt$13;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldqd;

.field final synthetic b:Ldpt$13;


# direct methods
.method constructor <init>(Ldpt$13;Ldqd;)V
    .locals 0
    .param p1, "this$1"    # Ldpt$13;

    .prologue
    .line 636
    iput-object p1, p0, Ldpt$13$1;->b:Ldpt$13;

    iput-object p2, p0, Ldpt$13$1;->a:Ldqd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 641
    iget-object v2, p0, Ldpt$13$1;->a:Ldqd;

    .line 1098
    iget-object v1, v2, Ldqd;->b:Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 642
    .local v1, "installPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    iget-object v2, p0, Ldpt$13$1;->b:Ldpt$13;

    iget-object v2, v2, Ldpt$13;->c:Ldpt;

    iget-object v3, p0, Ldpt$13$1;->b:Ldpt$13;

    iget-wide v4, v3, Ldpt$13;->a:J

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    invoke-static {v2, v4, v5, v3}, Ldpt;->a(Ldpt;JLjava/util/List;)V

    .line 645
    new-instance v0, Ldqf;

    iget-object v2, p0, Ldpt$13$1;->b:Ldpt$13;

    iget-wide v2, v2, Ldpt$13;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ldqf;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, "checkStep":Ldqf;
    new-instance v2, Ldpt$13$1$1;

    invoke-direct {v2, p0}, Ldpt$13$1$1;-><init>(Ldpt$13$1;)V

    .line 2044
    iput-object v2, v0, Ldqg;->c:Ldqh;

    .line 667
    invoke-virtual {v0}, Ldqf;->a()V

    .line 668
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 672
    iget-object v0, p0, Ldpt$13$1;->b:Ldpt$13;

    iget-object v0, v0, Ldpt$13;->c:Ldpt;

    iget-object v1, p0, Ldpt$13$1;->b:Ldpt$13;

    iget-wide v2, v1, Ldpt$13;->a:J

    const-string/jumbo v1, "Parse json failed"

    invoke-static {v0, v2, v3, v1}, Ldpt;->a(Ldpt;JLjava/lang/String;)V

    .line 673
    iget-object v0, p0, Ldpt$13$1;->b:Ldpt$13;

    iget-object v0, v0, Ldpt$13;->c:Ldpt;

    iget-object v1, p0, Ldpt$13$1;->b:Ldpt$13;

    iget-object v1, v1, Ldpt$13;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ldpt;->b(Ldpt;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .line 674
    return-void
.end method
