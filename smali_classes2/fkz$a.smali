.class final Lfkz$a;
.super Ljava/lang/Object;
.source "CheckMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field final synthetic d:Lfkz;


# direct methods
.method private constructor <init>(Lfkz;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lfkz$a;->d:Lfkz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfkz;B)V
    .locals 0
    .param p1, "x0"    # Lfkz;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lfkz$a;-><init>(Lfkz;)V

    return-void
.end method
