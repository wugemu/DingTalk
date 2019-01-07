.class public Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;
.super Ljava/lang/Object;
.source "UserFaceResult.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Liyn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public faceUrl:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public hasFace:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public recordTime:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 29
    .local v0, "tmpHasFace":B
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->hasFace:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->faceUrl:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_2

    .line 32
    iput-object v2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->recordTime:Ljava/lang/Long;

    .line 36
    :goto_1
    return-void

    .line 29
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->recordTime:Ljava/lang/Long;

    goto :goto_1
.end method


# virtual methods
.method public decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 64
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 53
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->hasFace:Ljava/lang/Boolean;

    goto :goto_0

    .line 56
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->faceUrl:Ljava/lang/String;

    goto :goto_0

    .line 59
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->recordTime:Ljava/lang/Long;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->hasFace:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->faceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->recordTime:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    :goto_1
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->hasFace:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->recordTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1
.end method
