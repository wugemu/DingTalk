.class final Leuu$a;
.super Ljava/lang/Object;
.source "TeleConfSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leuu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field final synthetic e:Leuu;


# direct methods
.method private constructor <init>(Leuu;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Leuu$a;->e:Leuu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leuu;B)V
    .locals 0
    .param p1, "x0"    # Leuu;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Leuu$a;-><init>(Leuu;)V

    return-void
.end method
