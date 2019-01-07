.class Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
.super Ljava/lang/Object;
.source "FavorLayout.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/sdk/ui/view/FavorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FavorObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x41b4f368801ea3f0L


# instance fields
.field private animObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$1;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->animObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    return-object v0
.end method

.method static synthetic access$002(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;)Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->animObject:Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;

    return-object p1
.end method

.method static synthetic access$100(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/taobao/taolive/sdk/ui/view/FavorLayout$FavorObject;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method
