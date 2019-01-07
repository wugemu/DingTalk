.class public Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package",
        "<TM;>;>;"
    }
.end annotation


# instance fields
.field public alongTime:J

.field public connectionType:I

.field public context:Ljava/lang/Object;

.field public dataId:Ljava/lang/String;

.field public dataSourceType:I

.field public msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public netTime:J

.field public offset:J

.field public packTime:J

.field public sysCode:I

.field public tag:Ljava/lang/String;

.field public timeout:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;)V
    .locals 1
    .param p1    # Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;, "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package<TM;>;"
    .local p1, "msg":Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->connectionType:I

    .line 25
    const/16 v0, 0x3c

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->timeout:I

    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    .line 30
    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->sysCode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->sysCode:I

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)V
    .locals 1
    .param p1    # Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;, "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package<TM;>;"
    .local p1, "from":Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;, "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package<TM;>;"
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;)V

    .line 35
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->dataId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->dataId:Ljava/lang/String;

    .line 36
    iget v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->dataSourceType:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->dataSourceType:I

    .line 37
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->tag:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->context:Ljava/lang/Object;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->context:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)I
    .locals 3
    .param p1, "another"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;, "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package<TM;>;"
    const/4 v0, 0x1

    .line 43
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->msg:Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 14
    .local p0, "this":Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;, "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package<TM;>;"
    check-cast p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->compareTo(Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;)I

    move-result v0

    return v0
.end method
