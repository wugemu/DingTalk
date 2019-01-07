.class public final Lbry$2;
.super Ljava/lang/Object;
.source "DeviceBeaconHandle.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbry;


# direct methods
.method public constructor <init>(Lbry;)V
    .locals 0
    .param p1, "this$0"    # Lbry;

    .prologue
    .line 370
    iput-object p1, p0, Lbry$2;->a:Lbry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 370
    check-cast p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    check-cast p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .line 1373
    iget v0, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->distance:I

    iget v1, p2, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->distance:I

    sub-int/2addr v0, v1

    .line 370
    return v0
.end method
