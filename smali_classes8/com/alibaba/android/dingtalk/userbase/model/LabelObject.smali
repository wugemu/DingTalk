.class public Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
.super Ljava/lang/Object;
.source "LabelObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x299d705c01cb3386L


# instance fields
.field public color:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    .line 69
    return-void
.end method

.method public static fromIDLModel(Lcec;)Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    .locals 4
    .param p0, "model"    # Lcec;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;-><init>()V

    .line 78
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    iget-object v1, p0, Lcec;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 78
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    .line 79
    iget-object v1, p0, Lcec;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcec;->c:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 80
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)Lcec;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    new-instance v0, Lcec;

    invoke-direct {v0}, Lcec;-><init>()V

    .line 92
    .local v0, "model":Lcec;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcec;->a:Ljava/lang/Long;

    .line 93
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcec;->b:Ljava/lang/String;

    .line 94
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcec;->c:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
