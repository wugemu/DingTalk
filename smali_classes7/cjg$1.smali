.class public final Lcjg$1;
.super Landroid/database/ContentObserver;
.source "InputPanelCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field final synthetic d:Lcjg;


# direct methods
.method public constructor <init>(Lcjg;Landroid/os/Handler;Landroid/content/Context;Landroid/view/View;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcjg;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 45
    iput-object p1, p0, Lcjg$1;->d:Lcjg;

    iput-object p3, p0, Lcjg$1;->a:Landroid/content/Context;

    iput-object p4, p0, Lcjg$1;->b:Landroid/view/View;

    iput-object p5, p0, Lcjg$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcjg$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_hide_bar_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "value":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 57
    iget-object v1, p0, Lcjg$1;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "value":I
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcjg$1;->d:Lcjg;

    .line 1028
    iput-boolean v3, v1, Lcjg;->b:Z

    .line 66
    const-string/jumbo v1, "dingtalkbase"

    const/4 v2, 0x0

    const-string/jumbo v3, "Do not need compat InputPanel"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .restart local v0    # "value":I
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcjg$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcjg$1;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcjg$1;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
