.class public Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
.super Ljava/lang/Object;
.source "IMInterface.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/base/IMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendMessageObject"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_CONTENT_TYPE_ANNOUNCE:I = 0x2bc

.field public static final MSG_CONTENT_TYPE_AUDO:I = 0x4

.field public static final MSG_CONTENT_TYPE_COMMON_VIDEO:I = 0xca

.field public static final MSG_CONTENT_TYPE_GEO:I = 0x68

.field public static final MSG_CONTENT_TYPE_LINK:I = 0x3

.field public static final MSG_CONTENT_TYPE_MAIL:I = 0x190

.field public static final MSG_CONTENT_TYPE_MARKDOWN_EX:I = 0x4b1

.field public static final MSG_CONTENT_TYPE_MINI_APP:I = 0x4b3

.field public static final MSG_CONTENT_TYPE_NAMECARD:I = 0x258

.field public static final MSG_CONTENT_TYPE_OA:I = 0x12d

.field public static final MSG_CONTENT_TYPE_OA_OLD:I = 0x12c

.field public static final MSG_CONTENT_TYPE_PERSONAL_SPACE_FILE:I = 0x1f5

.field public static final MSG_CONTENT_TYPE_PIC:I = 0x2

.field public static final MSG_CONTENT_TYPE_REDPACKET_PLAN:I = 0x38a

.field public static final MSG_CONTENT_TYPE_SPACE_FILE:I = 0x1f4

.field public static final MSG_CONTENT_TYPE_SPACE_LINK:I = 0x1f8

.field public static final MSG_CONTENT_TYPE_TEXT:I = 0x1

.field public static final MSG_CONTENT_TYPE_VIDEO:I = 0x67


# instance fields
.field public messageData:Ljava/lang/Object;

.field public messageType:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 232
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    sparse-switch v0, :sswitch_data_0

    .line 275
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->url:Ljava/lang/String;

    .line 276
    return-void

    .line 234
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0

    .line 242
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0

    .line 246
    :sswitch_2
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0

    .line 250
    :sswitch_3
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0

    .line 253
    :sswitch_4
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0

    .line 256
    :sswitch_5
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0

    .line 259
    :sswitch_6
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0

    .line 262
    :sswitch_7
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0

    .line 265
    :sswitch_8
    const-class v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_0

    .line 268
    :sswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_0

    .line 271
    :sswitch_a
    const-class v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_0

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0xca -> :sswitch_1
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_3
        0x1f8 -> :sswitch_4
        0x258 -> :sswitch_6
        0x2bc -> :sswitch_7
        0x38a -> :sswitch_8
        0x4b1 -> :sswitch_9
        0x4b3 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 297
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    sparse-switch v0, :sswitch_data_0

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    return-void

    .line 300
    :sswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    .line 306
    :sswitch_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    .line 309
    :sswitch_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    .line 312
    :sswitch_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    .line 315
    :sswitch_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    .line 318
    :sswitch_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_0

    .line 322
    :sswitch_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 326
    :sswitch_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 329
    :sswitch_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 332
    :sswitch_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 335
    :sswitch_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 338
    :sswitch_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 341
    :sswitch_d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 344
    :sswitch_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 347
    :sswitch_f
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 298
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_6
        0xca -> :sswitch_5
        0x12c -> :sswitch_7
        0x12d -> :sswitch_7
        0x190 -> :sswitch_a
        0x1f4 -> :sswitch_8
        0x1f5 -> :sswitch_8
        0x1f8 -> :sswitch_9
        0x258 -> :sswitch_b
        0x2bc -> :sswitch_c
        0x38a -> :sswitch_d
        0x4b1 -> :sswitch_e
        0x4b3 -> :sswitch_f
    .end sparse-switch
.end method
