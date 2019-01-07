.class final Lejp$2;
.super Ljava/lang/Object;
.source "HomeAttendanceManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lejp;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lejp;


# direct methods
.method constructor <init>(Lejp;Z)V
    .locals 0
    .param p1, "this$0"    # Lejp;

    .prologue
    .line 302
    iput-object p1, p0, Lejp$2;->b:Lejp;

    iput-boolean p2, p0, Lejp$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lejp$2;->b:Lejp;

    .line 1048
    iget-object v0, v0, Lejp;->a:Landroid/app/Activity;

    .line 305
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lejp$2;->b:Lejp;

    .line 2048
    iget-object v3, v0, Lejp;->j:Lejr;

    .line 308
    const/4 v4, 0x2

    iget-boolean v0, p0, Lejp$2;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lejp$2;->b:Lejp;

    .line 3048
    iget-boolean v0, v0, Lejp;->e:Z

    .line 308
    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lejr;->a(IZ)V

    .line 309
    iget-boolean v0, p0, Lejp$2;->a:Z

    if-eqz v0, :cond_3

    .line 310
    iget-object v3, p0, Lejp$2;->b:Lejp;

    .line 5338
    iget-boolean v0, v3, Lejp;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, v3, Lejp;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lejp;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v3, Lejp;->i:Landroid/view/View;

    if-nez v0, :cond_6

    :cond_2
    move v0, v2

    .line 4346
    :goto_2
    if-eqz v0, :cond_3

    .line 4347
    iget-object v0, v3, Lejp;->i:Landroid/view/View;

    new-instance v4, Lejp$3;

    invoke-direct {v4, v3}, Lejp$3;-><init>(Lejp;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v0, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    :cond_3
    iget-object v3, p0, Lejp$2;->b:Lejp;

    .line 6327
    iget-boolean v0, v3, Lejp;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, v3, Lejp;->h:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, v3, Lejp;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v3, Lejp;->f:Z

    if-nez v0, :cond_7

    :cond_4
    move v0, v2

    .line 6332
    :goto_3
    iget-object v1, v3, Lejp;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-eqz v1, :cond_0

    .line 6333
    iget-object v1, v3, Lejp;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-eqz v0, :cond_8

    :goto_4
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 308
    goto :goto_1

    :cond_6
    move v0, v1

    .line 5342
    goto :goto_2

    .line 6330
    :cond_7
    const-string/jumbo v0, "pref_key_home_checkin_tips"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Lejp;->f:Z

    goto :goto_3

    .line 6333
    :cond_8
    const/16 v2, 0x8

    goto :goto_4
.end method
