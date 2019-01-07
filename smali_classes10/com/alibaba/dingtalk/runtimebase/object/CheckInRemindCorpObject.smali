.class public Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;
.super Ljava/lang/Object;
.source "CheckInRemindCorpObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public corpId:Ljava/lang/String;

.field public onTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->corpId:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->onTime:Z

    .line 25
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "onTime"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->corpId:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->onTime:Z

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;

    .line 57
    .local v0, "object":Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->onTime:Z

    iget-boolean v3, v0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->onTime:Z

    if-ne v2, v3, :cond_0

    .line 58
    iget-object v1, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->corpId:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->corpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v1, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->corpId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 64
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->onTime:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 65
    return v0

    .line 64
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "RemindCorp{"

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "corpId=\'"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->corpId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 72
    const-string/jumbo v1, ", onTime="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->onTime:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 73
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 74
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->onTime:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
