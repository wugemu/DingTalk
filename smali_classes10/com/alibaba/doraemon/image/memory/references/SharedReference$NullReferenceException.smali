.class public Lcom/alibaba/doraemon/image/memory/references/SharedReference$NullReferenceException;
.super Ljava/lang/RuntimeException;
.source "SharedReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/image/memory/references/SharedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullReferenceException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 243
    const-string/jumbo v0, "Null shared reference"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 244
    return-void
.end method
