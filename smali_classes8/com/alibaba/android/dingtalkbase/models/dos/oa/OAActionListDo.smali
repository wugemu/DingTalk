.class public Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;
.super Ljava/lang/Object;
.source "OAActionListDo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVER_ACTION_KEY:Ljava/lang/String; = "receiverAction"

.field public static final SENDER_ACTION_KEY:Ljava/lang/String; = "senderAction"


# instance fields
.field public oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receiverAction"
    .end annotation
.end field

.field public oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "senderAction"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;->oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;->oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;->oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionListDo;->oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
