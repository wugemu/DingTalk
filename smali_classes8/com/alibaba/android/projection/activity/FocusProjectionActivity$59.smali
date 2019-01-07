.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lehb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 3271
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3271
    check-cast p1, Lehb;

    .line 4274
    iget-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4275
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lehb;)Lehb;

    .line 4276
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 4277
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 4278
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v0

    iget-object v0, v0, Lehb;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 4279
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v0

    iget-object v0, v0, Lehb;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 4280
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v0

    iget-object v0, v0, Lehb;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4281
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->Q(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehb;

    move-result-object v1

    iget-object v1, v1, Lehb;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    .line 4282
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->w(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/widget/ProjectionEditItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/projection/widget/ProjectionEditItemView;->setCastCode(Ljava/lang/String;)V

    .line 4283
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 4284
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Legm$e;->dt_focus_cast_code_fixed_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcms;->a(Ljava/lang/String;I)V

    .line 4285
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    .line 4290
    :cond_0
    :goto_0
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "local share status success "

    aput-object v0, v3, v4

    if-eqz p1, :cond_2

    .line 4291
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4290
    invoke-static {v1, v2, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    return-void

    .line 4287
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    goto :goto_0

    .line 4291
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3301
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "local share status fail "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 3302
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3301
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    iget-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->a:Z

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$59;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->U(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 3306
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3297
    return-void
.end method
