.class final Leum$a;
.super Ljava/lang/Object;
.source "TeleBusinessConfRecordGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Lcom/alibaba/android/teleconf/widget/TeleConfCustomRelativeLayout;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field final synthetic h:Leum;


# direct methods
.method private constructor <init>(Leum;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Leum$a;->h:Leum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leum;B)V
    .locals 0
    .param p1, "x0"    # Leum;

    .prologue
    .line 587
    invoke-direct {p0, p1}, Leum$a;-><init>(Leum;)V

    return-void
.end method
