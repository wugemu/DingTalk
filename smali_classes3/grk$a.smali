.class public final Lgrk$a;
.super Ljava/lang/Object;
.source "DocCameraParamsConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgrk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, -0x1

    .line 127
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    .line 1129
    if-eqz p1, :cond_3

    .line 1132
    if-nez p2, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return v0

    .line 1135
    :cond_1
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v1, v2, :cond_2

    .line 1136
    const/4 v0, 0x0

    goto :goto_0

    .line 1137
    :cond_2
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    if-gt v1, v2, :cond_0

    .line 1140
    :cond_3
    const/4 v0, 0x1

    .line 127
    goto :goto_0
.end method
