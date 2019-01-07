.class final Leuq$a;
.super Leuq$c;
.source "TeleConfFunctionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leuq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field final synthetic c:Leuq;


# direct methods
.method private constructor <init>(Leuq;)V
    .locals 1

    .prologue
    .line 648
    iput-object p1, p0, Leuq$a;->c:Leuq;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leuq$c;-><init>(Leuq;B)V

    return-void
.end method

.method synthetic constructor <init>(Leuq;B)V
    .locals 0
    .param p1, "x0"    # Leuq;

    .prologue
    .line 648
    invoke-direct {p0, p1}, Leuq$a;-><init>(Leuq;)V

    return-void
.end method
