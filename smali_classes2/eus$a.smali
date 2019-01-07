.class final Leus$a;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field final synthetic e:Leus;


# direct methods
.method private constructor <init>(Leus;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Leus$a;->e:Leus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leus;B)V
    .locals 0
    .param p1, "x0"    # Leus;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Leus$a;-><init>(Leus;)V

    return-void
.end method
