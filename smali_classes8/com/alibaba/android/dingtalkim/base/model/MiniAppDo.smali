.class public Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
.super Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;
.source "MiniAppDo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_APP_CONTENT:Ljava/lang/String; = "miniAppContent"

.field public static final KEY_APP_ICON:Ljava/lang/String; = "miniAppIcon"

.field public static final KEY_APP_IMAGE:Ljava/lang/String; = "miniAppImg"

.field public static final KEY_APP_LINK:Ljava/lang/String; = "miniAppLink"

.field public static final KEY_APP_NAME:Ljava/lang/String; = "miniAppName"

.field public static final KEY_APP_TITLE:Ljava/lang/String; = "miniAppTitle"

.field public static final KEY_MARKDOWN:Ljava/lang/String; = "markdown"

.field private static final serialVersionUID:J = -0x5af2d79e9b463783L


# instance fields
.field public markdown:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "markdown"
    .end annotation
.end field

.field public miniAppContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "miniAppContent"
    .end annotation
.end field

.field public miniAppIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "miniAppIcon"
    .end annotation
.end field

.field public miniAppImg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "miniAppImg"
    .end annotation
.end field

.field public miniAppLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "miniAppLink"
    .end annotation
.end field

.field public miniAppName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "miniAppName"
    .end annotation
.end field

.field public miniAppTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "miniAppTitle"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;-><init>()V

    .line 69
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;-><init>(Landroid/os/Parcel;)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->markdown:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppIcon:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppTitle:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppContent:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppLink:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->markdown:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
