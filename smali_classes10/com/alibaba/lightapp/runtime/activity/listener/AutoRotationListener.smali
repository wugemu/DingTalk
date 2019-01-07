.class public Lcom/alibaba/lightapp/runtime/activity/listener/AutoRotationListener;
.super Landroid/view/OrientationEventListener;
.source "AutoRotationListener.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 17
    const-class v0, Lcom/alibaba/lightapp/runtime/activity/listener/AutoRotationListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/listener/AutoRotationListener;->a:Ljava/lang/String;

    .line 1035
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/listener/AutoRotationListener;->b:Landroid/app/Activity;

    .line 27
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 81
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 7
    .param p1, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x87

    const/16 v5, 0x2d

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/16 v2, 0x9

    .line 40
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/listener/AutoRotationListener;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 41
    .local v0, "screenOrientation":I
    if-ltz p1, :cond_0

    if-lt p1, v5, :cond_1

    :cond_0
    const/16 v1, 0x13b

    if-le p1, v1, :cond_3

    .line 42
    :cond_1
    if-eq v0, v3, :cond_2

    if-eq p1, v2, :cond_2

    .line 43
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/listener/AutoRotationListener;->b:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 64
    :cond_2
    :goto_0
    return-void

    .line 46
    :cond_3
    const/16 v1, 0xe1

    if-le p1, v1, :cond_4

    const/16 v1, 0x13b

    if-ge p1, v1, :cond_4

    .line 48
    if-eqz v0, :cond_2

    .line 49
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/listener/AutoRotationListener;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 52
    :cond_4
    if-le p1, v5, :cond_5

    if-ge p1, v6, :cond_5

    .line 54
    if-eq v0, v4, :cond_2

    .line 55
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/listener/AutoRotationListener;->b:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 58
    :cond_5
    if-le p1, v6, :cond_2

    const/16 v1, 0xe1

    if-ge p1, v1, :cond_2

    .line 60
    if-eq v0, v2, :cond_2

    .line 61
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/listener/AutoRotationListener;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
