.class public Lchj;
.super Ljava/lang/Object;
.source "NotificationsSettingModel.java"


# instance fields
.field public a:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sound"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vibrate"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "sound"    # I
    .param p2, "vibrate"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lchj;->a:I

    .line 15
    iput v0, p0, Lchj;->b:I

    .line 20
    iput p1, p0, Lchj;->a:I

    .line 21
    if-eqz p2, :cond_0

    :goto_0
    iput v0, p0, Lchj;->b:I

    .line 22
    return-void

    :cond_0
    move v0, v1

    .line 21
    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 25
    iget v1, p0, Lchj;->a:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lchj;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
