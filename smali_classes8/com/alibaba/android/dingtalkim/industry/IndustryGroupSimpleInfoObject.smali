.class public Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;
.super Ljava/lang/Object;
.source "IndustryGroupSimpleInfoObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInfoUrl:Ljava/lang/String;

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public stat:Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->labels:Ljava/util/List;

    .line 56
    const-class v0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->stat:Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->groupInfoUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ldmq;)V
    .locals 1
    .param p1, "model"    # Ldmq;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p1, Ldmq;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->labels:Ljava/util/List;

    .line 23
    iget-object v0, p1, Ldmq;->b:Ldmr;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->fromIDL(Ldmr;)Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->stat:Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    .line 24
    iget-object v0, p1, Ldmq;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->groupInfoUrl:Ljava/lang/String;

    .line 26
    :cond_0
    return-void
.end method

.method public static fromIDL(Ldmq;)Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;
    .locals 1
    .param p0, "model"    # Ldmq;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;-><init>(Ldmq;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->labels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->stat:Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->groupInfoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return-void
.end method
