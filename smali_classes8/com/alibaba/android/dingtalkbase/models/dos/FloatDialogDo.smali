.class public Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;
.super Ljava/lang/Object;
.source "FloatDialogDo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clazz:Ljava/lang/Class;

.field public description:Ljava/lang/String;

.field public iconResId:I

.field public sendMsgObject:Landroid/os/Parcelable;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->title:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->description:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->iconResId:I

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->clazz:Ljava/lang/Class;

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->sendMsgObject:Landroid/os/Parcelable;

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 26
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
    .line 31
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->description:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->iconResId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->clazz:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->sendMsgObject:Landroid/os/Parcelable;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
