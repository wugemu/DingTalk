.class public abstract Lcom/alibaba/wukong/im/StatusNotifyListener;
.super Ljava/lang/Object;
.source "StatusNotifyListener.java"

# interfaces
.implements Lcom/alibaba/wukong/im/IMListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceStatusReceived(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/DeviceStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/DeviceStatus;>;"
    return-void
.end method

.method public onStatusChanged(Lcom/alibaba/wukong/im/IMStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/alibaba/wukong/im/IMStatus;

    .prologue
    .line 22
    return-void
.end method
