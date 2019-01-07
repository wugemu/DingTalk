.class final Lcom/alibaba/android/user/connection/ui/ExtendEditText$1;
.super Ljava/lang/Object;
.source "ExtendEditText.java"

# interfaces
.implements Lcom/alibaba/android/user/connection/ui/ExtendEditText$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/ui/ExtendEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 287
    sub-int v0, p3, p2

    .line 288
    .local v0, "length":I
    if-ltz v0, :cond_0

    .end local v0    # "length":I
    :goto_0
    return v0

    .restart local v0    # "length":I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "convertedEnd"    # I

    .prologue
    .line 293
    sub-int v0, p3, p2

    .line 294
    .local v0, "length":I
    if-ltz v0, :cond_0

    .end local v0    # "length":I
    :goto_0
    return v0

    .restart local v0    # "length":I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method
