.class public Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;
.super Ljava/lang/Object;
.source "UpstreamTokenObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:Ljava/lang/String;

.field public upstreamPhoneNumber:Ljava/lang/String;

.field public yourPhoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->upstreamPhoneNumber:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static fromIdl(Lcgb;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;
    .locals 2
    .param p0, "upstreamTokenModel"    # Lcgb;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;-><init>()V

    .line 30
    .local v0, "upstreamTokenObject":Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;
    iget-object v1, p0, Lcgb;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcgb;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->upstreamPhoneNumber:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->upstreamPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->yourPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->upstreamPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
