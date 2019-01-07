.class final Lcom/alibaba/android/search/assure/model/AssureModel$1;
.super Ljava/lang/Object;
.source "AssureModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/assure/model/AssureModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alibaba/android/search/assure/model/AssureModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 662
    .line 3071
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3072
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    .line 3075
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3077
    sget-object v1, Lenk$1;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3086
    new-instance v0, Lcom/alibaba/android/search/assure/model/UnkownAssureModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/assure/model/UnkownAssureModel;-><init>(Landroid/os/Parcel;)V

    .line 3083
    :goto_1
    return-object v0

    .line 3072
    :cond_0
    invoke-static {}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->values()[Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0

    .line 3079
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/search/assure/model/ContactAssureModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    .line 3081
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/search/assure/model/GroupAssureModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    .line 3083
    :pswitch_2
    new-instance v0, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    .line 3077
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 662
    .line 1670
    new-array v0, p1, [Lcom/alibaba/android/search/assure/model/AssureModel;

    .line 662
    return-object v0
.end method
