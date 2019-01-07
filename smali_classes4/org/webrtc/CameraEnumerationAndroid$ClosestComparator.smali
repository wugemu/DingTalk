.class abstract Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;
.super Ljava/lang/Object;
.source "CameraEnumerationAndroid.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/CameraEnumerationAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ClosestComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    .local p0, "this":Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;, "Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/CameraEnumerationAndroid$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/CameraEnumerationAndroid$1;

    .prologue
    .line 148
    .local p0, "this":Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;, "Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator<TT;>;"
    invoke-direct {p0}, Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    .local p0, "this":Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;, "Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;->diff(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;->diff(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method abstract diff(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
