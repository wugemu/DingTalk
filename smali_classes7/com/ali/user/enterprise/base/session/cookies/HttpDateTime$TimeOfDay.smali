.class Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeOfDay"
.end annotation


# instance fields
.field hour:I

.field minute:I

.field second:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "s"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;->hour:I

    .line 57
    iput p2, p0, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;->minute:I

    .line 58
    iput p3, p0, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;->second:I

    .line 59
    return-void
.end method
