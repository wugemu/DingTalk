.class final Leqe$a;
.super Ljava/lang/Object;
.source "FunctionSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field final synthetic d:Leqe;


# direct methods
.method private constructor <init>(Leqe;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Leqe$a;->d:Leqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leqe;B)V
    .locals 0
    .param p1, "x0"    # Leqe;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Leqe$a;-><init>(Leqe;)V

    return-void
.end method
