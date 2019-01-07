.class public Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;
.super Ljava/lang/Object;
.source "MarkdownBaseDo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORCE_UPDATE_TRUE:Ljava/lang/String; = "1"

.field public static final KEY_MARKDOWN_FORCE_UPDATE:Ljava/lang/String; = "forceUpdate"

.field public static final KEY_MARKDOWN_NEW:Ljava/lang/String; = "new_markdown"

.field public static final KEY_VERSION:Ljava/lang/String; = "md_ver"

.field public static final MARKDOWN_ADD_MEMBERS_RECALL_VER:I = 0x3

.field public static final MARKDOWN_CUR_VER:I = 0x4

.field public static final MARKDOWN_INLINE_IMG_VER:I = 0x2


# instance fields
.field public mdNew:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_markdown"
    .end annotation
.end field

.field public mdVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "md_ver"
    .end annotation
.end field

.field public showForceUpdate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceUpdate"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;->mdVersion:I

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public isForceUpdate()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;->showForceUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/model/MarkdownBaseDo;->mdVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
