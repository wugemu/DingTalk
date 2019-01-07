.class final Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;
.super Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;
.source "ConfCallAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field b:F

.field c:F

.field d:I

.field final synthetic e:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;FFI)V
    .locals 1
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "delay"    # I

    .prologue
    .line 364
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;->e:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$c;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;B)V

    .line 365
    iput p2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;->b:F

    .line 366
    iput p3, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;->c:F

    .line 367
    iput p4, p0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$d;->d:I

    .line 368
    return-void
.end method
