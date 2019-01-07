.class public final Lhvj;
.super Lhxd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhxd;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lhvj;
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lhvj;

    invoke-direct {v0}, Lhvj;-><init>()V

    invoke-virtual {v0}, Lhvj;->b()V

    if-eqz p0, :cond_0

    .line 2000
    iget-object v1, v0, Lhxd;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1000
    iget-object v1, v0, Lhxd;->a:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "SDK_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "SDK_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "STEP_NAV"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 0
    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p0, v3}, Lhvj;->a(Z)V

    invoke-virtual {p0, v3}, Lhvj;->a(I)V

    .line 3000
    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_LIVE_ACTION_COUNT"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4000
    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_UPDATE_CONFIG"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5000
    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_UPLOAD_IMG"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 0
    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MIN_QUALITY"

    sget v2, Lhys;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "K_TIMEOUT"

    sget v2, Lhys;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "K_NF_T"

    sget v2, Lhys;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MINE_THRESHHOLD"

    sget v2, Lhys;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "K_RT_THRESHOLD"

    sget v2, Lhys;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "K_IMAGE_STRATEGY"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_ACTIVE_ACTION_THRESHOLD"

    sget v2, Lhys;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_NOTACTIVE_ACTION_THRESHOLD"

    sget v2, Lhys;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_YAW_THRESHOLD"

    sget v2, Lhys;->f:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_PITCH_THRESHOLD"

    sget v2, Lhys;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_COMPRESS_QUALITY"

    sget v2, Lhys;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FaceParamsHelper:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhvj;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";(SDK_TYPE_MEGVII = 0, SDK_TYPE_HISIGN = 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
