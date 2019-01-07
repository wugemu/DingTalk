.class final Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo$1;
.super Ljava/lang/Object;
.source "OARichTextDo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;
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
        "Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    .line 2049
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;-><init>(Landroid/os/Parcel;)V

    .line 46
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    .line 1054
    new-array v0, p1, [Lcom/alibaba/android/dingtalkbase/models/dos/oa/OARichTextDo;

    .line 46
    return-object v0
.end method
