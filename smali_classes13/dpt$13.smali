.class final Ldpt$13;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ldqh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldpt;


# direct methods
.method constructor <init>(Ldpt;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldpt;

    .prologue
    .line 613
    iput-object p1, p0, Ldpt$13;->c:Ldpt;

    iput-wide p2, p0, Ldpt$13;->a:J

    iput-object p4, p0, Ldpt$13;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 618
    iget-wide v4, p0, Ldpt$13;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, "jsonFile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "traceEmotion"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "json path="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v3, p0, Ldpt$13;->c:Ldpt;

    iget-wide v4, p0, Ldpt$13;->a:J

    const-string/jumbo v6, "Parse json failed"

    invoke-static {v3, v4, v5, v6}, Ldpt;->a(Ldpt;JLjava/lang/String;)V

    .line 622
    iget-object v3, p0, Ldpt$13;->c:Ldpt;

    iget-object v4, p0, Ldpt$13;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Ldpt;->b(Ldpt;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .line 677
    :goto_0
    return-void

    .line 625
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v1, "jFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_2

    .line 627
    :cond_1
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "traceEmotion"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "json file not exist,path="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v3, p0, Ldpt$13;->c:Ldpt;

    iget-wide v4, p0, Ldpt$13;->a:J

    const-string/jumbo v6, "Parse json failed"

    invoke-static {v3, v4, v5, v6}, Ldpt;->a(Ldpt;JLjava/lang/String;)V

    .line 629
    iget-object v3, p0, Ldpt$13;->c:Ldpt;

    iget-object v4, p0, Ldpt$13;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Ldpt;->b(Ldpt;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    goto :goto_0

    .line 634
    :cond_2
    new-instance v0, Ldqd;

    invoke-direct {v0, v1}, Ldqd;-><init>(Ljava/io/File;)V

    .line 635
    .local v0, "infostep":Ldqd;
    iget-wide v4, p0, Ldpt$13;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1064
    iput-object v3, v0, Ldqd;->a:Ljava/lang/String;

    .line 636
    new-instance v3, Ldpt$13$1;

    invoke-direct {v3, p0, v0}, Ldpt$13$1;-><init>(Ldpt$13;Ldqd;)V

    .line 2044
    iput-object v3, v0, Ldqg;->c:Ldqh;

    .line 676
    invoke-virtual {v0}, Ldqd;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 681
    iget-object v0, p0, Ldpt$13;->c:Ldpt;

    iget-wide v2, p0, Ldpt$13;->a:J

    const-string/jumbo v1, "Upzip failed"

    invoke-static {v0, v2, v3, v1}, Ldpt;->a(Ldpt;JLjava/lang/String;)V

    .line 682
    iget-object v0, p0, Ldpt$13;->c:Ldpt;

    iget-object v1, p0, Ldpt$13;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ldpt;->b(Ldpt;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .line 683
    return-void
.end method
