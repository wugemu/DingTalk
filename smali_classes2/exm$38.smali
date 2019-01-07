.class final Lexm$38;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexm;


# direct methods
.method constructor <init>(Lexm;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 3179
    iput-object p1, p0, Lexm$38;->a:Lexm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 3182
    iget-object v5, p0, Lexm$38;->a:Lexm;

    invoke-static {v5}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lexm$38;->a:Lexm;

    invoke-static {v5}, Lexm;->k(Lexm;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3183
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3184
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 3185
    const/4 v3, 0x0

    .line 3186
    .local v3, "streamType":I
    iget-object v5, p0, Lexm$38;->a:Lexm;

    invoke-static {v5}, Lexm;->p(Lexm;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3187
    const/4 v3, 0x6

    .line 3189
    :cond_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 3190
    .local v1, "callVolume":I
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 3191
    .local v2, "maxVolume":I
    div-int/lit8 v5, v2, 0x2

    if-ge v1, v5, :cond_1

    .line 3192
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Leuj$l;->dt_conference_low_volume_toast:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3193
    .local v4, "toast":Ljava/lang/String;
    iget-object v5, p0, Lexm$38;->a:Lexm;

    invoke-static {v5}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v5

    const-string/jumbo v6, "200"

    invoke-interface {v5, v6, v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "callVolume":I
    .end local v2    # "maxVolume":I
    .end local v3    # "streamType":I
    .end local v4    # "toast":Ljava/lang/String;
    :cond_1
    return-void
.end method
