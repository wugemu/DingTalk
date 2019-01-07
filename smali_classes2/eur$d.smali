.class final Leur$d;
.super Leur$e;
.source "TeleConfRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/view/View;

.field final synthetic g:Leur;


# direct methods
.method private constructor <init>(Leur;)V
    .locals 1

    .prologue
    .line 924
    iput-object p1, p0, Leur$d;->g:Leur;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leur$e;-><init>(Leur;B)V

    return-void
.end method

.method synthetic constructor <init>(Leur;B)V
    .locals 0
    .param p1, "x0"    # Leur;

    .prologue
    .line 924
    invoke-direct {p0, p1}, Leur$d;-><init>(Leur;)V

    return-void
.end method
