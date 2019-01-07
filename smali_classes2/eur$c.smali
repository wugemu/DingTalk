.class final Leur$c;
.super Leur$e;
.source "TeleConfRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/alibaba/android/teleconf/widget/TeleConfAvatar;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/view/View;

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field m:Landroid/view/View;

.field final synthetic n:Leur;


# direct methods
.method private constructor <init>(Leur;)V
    .locals 1

    .prologue
    .line 885
    iput-object p1, p0, Leur$c;->n:Leur;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leur$e;-><init>(Leur;B)V

    return-void
.end method

.method synthetic constructor <init>(Leur;B)V
    .locals 0
    .param p1, "x0"    # Leur;

    .prologue
    .line 885
    invoke-direct {p0, p1}, Leur$c;-><init>(Leur;)V

    return-void
.end method
