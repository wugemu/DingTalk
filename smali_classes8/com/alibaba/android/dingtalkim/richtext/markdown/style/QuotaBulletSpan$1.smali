.class final Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan$1;
.super Ljava/lang/Object;
.source "QuotaBulletSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;
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
        "Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    .line 2171
    new-instance v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;-><init>(Landroid/os/Parcel;)V

    .line 168
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    .line 1176
    new-array v0, p1, [Lcom/alibaba/android/dingtalkim/richtext/markdown/style/QuotaBulletSpan;

    .line 168
    return-object v0
.end method
