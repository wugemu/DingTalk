.class final Lejt$a;
.super Ljava/lang/Object;
.source "HomeOADropMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field d:Landroid/widget/TextView;

.field final synthetic e:Lejt;


# direct methods
.method private constructor <init>(Lejt;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lejt$a;->e:Lejt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lejt;B)V
    .locals 0
    .param p1, "x0"    # Lejt;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lejt$a;-><init>(Lejt;)V

    return-void
.end method
