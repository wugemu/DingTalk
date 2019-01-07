.class public final Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;
.super Ljava/lang/Object;
.source "TeleConfCustomRelativeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "view"    # Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;->a:Ljava/lang/ref/WeakReference;

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;->b:Ljava/lang/ref/WeakReference;

    .line 116
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 119
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

    .line 121
    .local v1, "view":Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 122
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "view":Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;
    :cond_0
    return-void
.end method
