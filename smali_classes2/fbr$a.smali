.class final Lfbr$a;
.super Ljava/lang/Object;
.source "ChannelApplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/TextView;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field final synthetic i:Lfbr;


# direct methods
.method private constructor <init>(Lfbr;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lfbr$a;->i:Lfbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfbr;B)V
    .locals 0
    .param p1, "x0"    # Lfbr;

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lfbr$a;-><init>(Lfbr;)V

    return-void
.end method
