.class public Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;
.super Ljava/lang/Object;
.source "CircleUploadQueueTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircleUploadResponse"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final authMediaId:Ljava/lang/String;

.field public final mediaId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;->mediaId:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;->authMediaId:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public constructor <init>(Lifx;)V
    .locals 1
    .param p1, "response"    # Lifx;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;->mediaId:Ljava/lang/String;

    .line 1034
    iget-object v0, p1, Lifx;->b:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;->authMediaId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public static getFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lifx;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "responses":Ljava/util/List;, "Ljava/util/List<Lifx;>;"
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const/4 v1, 0x0

    .line 159
    :cond_0
    return-object v1

    .line 149
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 151
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifx;

    .line 152
    .local v0, "response":Lifx;
    if-eqz v0, :cond_2

    .line 156
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;-><init>(Lifx;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static to(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lifx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;>;"
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    const/4 v1, 0x0

    .line 141
    :cond_0
    return-object v1

    .line 128
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lifx;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;

    .line 130
    .local v0, "response":Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;
    if-eqz v0, :cond_2

    .line 134
    new-instance v2, Lifx;

    invoke-direct {v2}, Lifx;-><init>()V

    .line 135
    .local v2, "u":Lifx;
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;->authMediaId:Ljava/lang/String;

    .line 1038
    iput-object v4, v2, Lifx;->b:Ljava/lang/String;

    .line 136
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;->mediaId:Ljava/lang/String;

    .line 2030
    iput-object v4, v2, Lifx;->a:Ljava/lang/String;

    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;->mediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadQueueTask$CircleUploadResponse;->authMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return-void
.end method
