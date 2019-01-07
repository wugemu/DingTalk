.class public final Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;
.super Ljava/lang/Object;
.source "SNVideoContentModel.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Liyn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bitrate:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation
.end field

.field public duration:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public extension:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fileName:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public fileSize:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public fileType:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public height:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public picMediaId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public videoMediaId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public width:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picMediaId:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoMediaId:Ljava/lang/String;

    .line 125
    const-class v4, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    .line 126
    const-class v4, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileName:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileType:Ljava/lang/String;

    .line 129
    const-class v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileSize:Ljava/lang/Long;

    .line 130
    const-class v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->duration:Ljava/lang/Long;

    .line 131
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->width:Ljava/lang/Integer;

    .line 132
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->height:Ljava/lang/Integer;

    .line 133
    const-class v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->bitrate:Ljava/lang/Long;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .local v0, "extensionSize":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->extension:Ljava/util/Map;

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->extension:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 91
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 53
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picMediaId:Ljava/lang/String;

    goto :goto_0

    .line 56
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoMediaId:Ljava/lang/String;

    goto :goto_0

    .line 59
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    goto :goto_0

    .line 62
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    goto :goto_0

    .line 65
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 68
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileType:Ljava/lang/String;

    goto :goto_0

    .line 71
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileSize:Ljava/lang/Long;

    goto :goto_0

    .line 74
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->duration:Ljava/lang/Long;

    goto :goto_0

    .line 77
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->width:Ljava/lang/Integer;

    goto :goto_0

    .line 80
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->height:Ljava/lang/Integer;

    goto :goto_0

    .line 83
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->bitrate:Ljava/lang/Long;

    goto :goto_0

    .line 86
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->extension:Ljava/util/Map;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picMediaId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoMediaId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->videoAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/models/AuthMediaParam;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->fileSize:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->duration:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->width:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->height:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->bitrate:Ljava/lang/Long;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->extension:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;->extension:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
