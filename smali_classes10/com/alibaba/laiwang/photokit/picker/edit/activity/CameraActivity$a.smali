.class public final Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$a;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$a;->a:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 702
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    .line 1704
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_0

    .line 1705
    const/4 v0, 0x0

    .line 1707
    :goto_0
    return v0

    .line 1706
    :cond_0
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v1, :cond_1

    .line 1707
    const/4 v0, -0x1

    goto :goto_0

    .line 1709
    :cond_1
    const/4 v0, 0x1

    .line 702
    goto :goto_0
.end method
