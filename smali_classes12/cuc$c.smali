.class final Lcuc$c;
.super Ljava/lang/Object;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcuc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ProgressBar;

.field final synthetic h:Lcuc;


# direct methods
.method private constructor <init>(Lcuc;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcuc$c;->h:Lcuc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcuc;B)V
    .locals 0
    .param p1, "x0"    # Lcuc;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcuc$c;-><init>(Lcuc;)V

    return-void
.end method
