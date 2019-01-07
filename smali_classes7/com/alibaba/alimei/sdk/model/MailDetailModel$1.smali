.class final Lcom/alibaba/alimei/sdk/model/MailDetailModel$1;
.super Ljava/lang/Object;
.source "MailDetailModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/model/MailDetailModel;
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
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    .line 2127
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;-><init>(Landroid/os/Parcel;)V

    .line 125
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    .line 1130
    new-array v0, p1, [Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 125
    return-object v0
.end method
