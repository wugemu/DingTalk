.class public Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "TeleConfCustomRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Landroid/view/animation/Animation;

.field public b:Z

.field public c:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->b:Z

    .line 59
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->b:Z

    .line 60
    sget v0, Leuj$a;->conf_icon_shake_long:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a:Landroid/view/animation/Animation;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;)Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->c:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->b:Z

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->b:Z

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->clearAnimation()V

    .line 105
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->c:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->c:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a()V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->a:Landroid/view/animation/Animation;

    .line 71
    :cond_0
    return-void
.end method
