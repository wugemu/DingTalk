.class public Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
.super Ljava/lang/Object;
.source "OADo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public author:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author"
    .end annotation
.end field

.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biz_type"
    .end annotation
.end field

.field public bodyContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_content"
    .end annotation
.end field

.field public bodyTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_tl"
    .end annotation
.end field

.field public contentBackground:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c_bg"
    .end annotation
.end field

.field public dateTs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field public fileCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_file_count"
    .end annotation
.end field

.field public formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_form"
    .end annotation
.end field

.field public headerBackground:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "h_bg"
    .end annotation
.end field

.field public headerTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "h_tl"
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field public oARichText:Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_rich"
    .end annotation
.end field

.field public oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receiverAction"
    .end annotation
.end field

.field public oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "senderAction"
    .end annotation
.end field

.field public pcMsgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pc_msg_url"
    .end annotation
.end field

.field public thanksAction:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thanksAction"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    .line 79
    .local v0, "s":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    .line 81
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    .line 82
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    .line 83
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->author:Ljava/lang/String;

    .line 84
    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->mediaId:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerBackground:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->contentBackground:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->fileCount:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->dateTs:J

    .line 91
    const-class v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oARichText:Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    check-cast v1, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    check-cast v1, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    check-cast v1, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->pcMsgUrl:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bizType:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    check-cast v1, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->thanksAction:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    .line 101
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->author:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->mediaId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerBackground:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->contentBackground:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->fileCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->dateTs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oARichText:Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaReceiverActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->oaSenderActionDos:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->pcMsgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bizType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->thanksAction:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAActionDo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 121
    return-void
.end method
