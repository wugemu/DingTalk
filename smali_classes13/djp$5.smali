.class final Ldjp$5;
.super Ljava/lang/Object;
.source "EmotionShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

.field final synthetic b:Ldiz;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ldjp;


# direct methods
.method constructor <init>(Ldjp;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;Ldiz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldjp;

    .prologue
    .line 156
    iput-object p1, p0, Ldjp$5;->e:Ldjp;

    iput-object p2, p0, Ldjp$5;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    iput-object p3, p0, Ldjp$5;->b:Ldiz;

    iput-object p4, p0, Ldjp$5;->c:Ljava/lang/String;

    iput-object p5, p0, Ldjp$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, Ldjp$5;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "picUrl":Ljava/lang/String;
    iget-object v0, p0, Ldjp$5;->b:Ldiz;

    iget-object v1, p0, Ldjp$5;->c:Ljava/lang/String;

    iget-object v2, p0, Ldjp$5;->a:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    iget-object v3, p0, Ldjp$5;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v4    # "picUrl":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
