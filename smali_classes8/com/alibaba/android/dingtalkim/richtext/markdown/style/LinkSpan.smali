.class public Lcom/alibaba/android/dingtalkim/richtext/markdown/style/LinkSpan;
.super Landroid/text/style/URLSpan;
.source "LinkSpan.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/richtext/markdown/style/LinkSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/LinkSpan$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/LinkSpan$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/LinkSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/LinkSpan;->color:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 17
    iput p2, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/LinkSpan;->color:I

    .line 18
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/LinkSpan;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 28
    iget v0, p0, Lcom/alibaba/android/dingtalkim/richtext/markdown/style/LinkSpan;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
.end method
