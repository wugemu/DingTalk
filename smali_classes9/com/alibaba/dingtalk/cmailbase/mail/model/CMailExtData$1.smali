.class final Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData$1;
.super Ljava/lang/Object;
.source "CMailExtData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;
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
        "Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .line 2037
    new-instance v0, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;-><init>(Landroid/os/Parcel;)V

    .line 34
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .line 1042
    new-array v0, p1, [Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;

    .line 34
    return-object v0
.end method
