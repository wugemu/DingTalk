.class public Lcom/taobao/weex/common/WXException;
.super Ljava/lang/Exception;
.source "WXException.java"


# static fields
.field private static final serialVersionUID:J = 0x64d570b7683a8e43L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
