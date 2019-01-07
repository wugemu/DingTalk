.class final Leur$f;
.super Leur$e;
.source "TeleConfRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field g:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field final synthetic h:Leur;


# direct methods
.method private constructor <init>(Leur;)V
    .locals 1

    .prologue
    .line 905
    iput-object p1, p0, Leur$f;->h:Leur;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leur$e;-><init>(Leur;B)V

    return-void
.end method

.method synthetic constructor <init>(Leur;B)V
    .locals 0
    .param p1, "x0"    # Leur;

    .prologue
    .line 905
    invoke-direct {p0, p1}, Leur$f;-><init>(Leur;)V

    return-void
.end method
