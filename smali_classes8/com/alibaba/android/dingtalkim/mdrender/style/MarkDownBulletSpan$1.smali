.class final Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan$1;
.super Ljava/lang/Object;
.source "MarkDownBulletSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;
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
        "Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    .line 2165
    new-instance v0, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;-><init>(Landroid/os/Parcel;)V

    .line 162
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    .line 1170
    new-array v0, p1, [Lcom/alibaba/android/dingtalkim/mdrender/style/MarkDownBulletSpan;

    .line 162
    return-object v0
.end method
