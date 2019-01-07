.class final Legp$a;
.super Ljava/lang/Object;
.source "FocusRunningDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Legp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field e:Landroid/widget/ProgressBar;

.field f:Landroid/widget/TextView;

.field final synthetic g:Legp;


# direct methods
.method private constructor <init>(Legp;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Legp$a;->g:Legp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Legp;B)V
    .locals 0
    .param p1, "x0"    # Legp;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Legp$a;-><init>(Legp;)V

    return-void
.end method
