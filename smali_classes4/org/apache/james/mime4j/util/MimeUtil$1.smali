.class final Lorg/apache/james/mime4j/util/MimeUtil$1;
.super Ljava/lang/ThreadLocal;
.source "MimeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/util/MimeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1333
    new-instance v0, Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;

    invoke-direct {v0}, Lorg/apache/james/mime4j/util/MimeUtil$Rfc822DateFormat;-><init>()V

    .line 330
    return-object v0
.end method
